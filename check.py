#!/usr/bin/env python3
"""
Markdown consistency checker for Pandoc book projects.
Checks structure: Parts, Chapters, Headings, Custom Styles, Images, Citations,
Figure and Table numbering.
"""

import re
import sys
from pathlib import Path

CHAPTERS_DIR = Path("chapters")
ERRORS = []
WARNINGS = []

def error(msg): ERRORS.append(f"  ❌ {msg}")
def warn(msg):  WARNINGS.append(f"  ⚠️  {msg}")

def check_file(path, content):
    rel = path.relative_to(CHAPTERS_DIR)

    # --- Custom styles checks ---
    has_chapter_number = bool(re.search(r'custom-style="CHAPTER NUMBER"', content))
    has_chapter_title  = bool(re.search(r'custom-style="Chapter Title"', content))
    has_part_number    = bool(re.search(r'custom-style="PART NUMBER"', content))
    has_part_title     = bool(re.search(r'custom-style="Part Title"', content))

    is_part    = path.name == "00-part.md"
    is_chapter = path.name == "chapter.md"

    if is_part:
        if not has_part_number:
            error(f"{rel}: Missing custom-style=\"PART NUMBER\"")
        if not has_part_title:
            error(f"{rel}: Missing custom-style=\"Part Title\"")
        if has_chapter_number or has_chapter_title:
            warn(f"{rel}: Chapter styles found in a part file")

    if is_chapter:
        if not has_chapter_number:
            error(f"{rel}: Missing custom-style=\"CHAPTER NUMBER\"")
        if not has_chapter_title:
            error(f"{rel}: Missing custom-style=\"Chapter Title\"")
        if has_part_number or has_part_title:
            warn(f"{rel}: Part styles found in a chapter file")

    # --- Heading hierarchy check ---
    headings = re.findall(r'^(#{1,6})\s+.+', content, re.MULTILINE)
    levels = [len(h) for h in headings]
    for i in range(1, len(levels)):
        if levels[i] > levels[i - 1] + 1:
            error(f"{rel}: Heading level jumps from H{levels[i-1]} to H{levels[i]} (line ~{i+1})")

    # --- Image references check ---
    images = re.findall(r'!\[.*?\]\((.+?)\)', content)
    for img in images:
        if img.startswith("http"):
            continue
        img_path = path.parent / img
        if not img_path.exists():
            error(f"{rel}: Image not found: {img}")

    # --- Section break check for parts ---
    if is_part:
        if "nextPage" not in content and r"\newpage" not in content:
            warn(f"{rel}: No section/page break found at end of part file")

    # --- Figure and Table caption numbering check ---
    if is_chapter:
        # Extract chapter number from content e.g. "Chapter 1" → 1
        ch_match = re.search(r'custom-style="CHAPTER NUMBER"\}\s*\n+Chapter\s+(\d+)', content)
        ch_num = int(ch_match.group(1)) if ch_match else None

        for label, style in [("Figure", "Figure Caption"), ("Table", "Table Caption")]:
            # Find all captions: lines after custom-style="Figure Caption" or "Table Caption"
            captions = re.findall(
                rf'custom-style="{style}"\}}\s*\n+([^\n]*{label}\s+(\d+)-(\d+)[^\n]*)',
                content
            )
            if not captions:
                continue

            seq_nums = []
            for full, cap_ch, cap_seq in captions:
                cap_ch, cap_seq = int(cap_ch), int(cap_seq)

                # Check chapter prefix matches
                if ch_num and cap_ch != ch_num:
                    error(f"{rel}: {label} caption has wrong chapter number: '{full.strip()}' "
                          f"(expected {label} {ch_num}-x)")
                seq_nums.append((cap_seq, full.strip()))

            # Check sequential numbering starting at 1
            for i, (seq, caption) in enumerate(seq_nums, start=1):
                if seq != i:
                    error(f"{rel}: {label} numbering gap or duplicate – "
                          f"expected {label} {ch_num}-{i}, found '{caption}'")

    # --- Citation check: all cites must start with @ ---
    # Valid pandoc citations: [@key] or @key or [@key1; @key2]
    for lineno, line in enumerate(content.splitlines(), start=1):
        for bc in re.findall(r'\[([^\]]+)\]', line):
            if bc.startswith("^"):    continue  # footnotes
            if bc.startswith("!"):    continue  # images
            if bc.startswith("http"): continue  # links
            if "|" in bc:             continue  # tables
            if bc.startswith("#"):    continue  # anchor links
            entries = [e.strip() for e in bc.split(";")]
            for entry in entries:
                if not entry:
                    continue
                if re.match(r'^[\w][\w\d_:\-]*$', entry):
                    error(f"{rel} line {lineno}: Citation missing '@': [{entry}] – should be [@{entry}]")


def check_structure():
    print("\n📁 Checking folder structure...")

    if not CHAPTERS_DIR.exists():
        error("chapters/ directory not found")
        return

    part_dirs = sorted([d for d in CHAPTERS_DIR.iterdir() if d.is_dir() and d.name.startswith("part")])

    if not part_dirs:
        warn("No part directories found (expected dirs starting with 'part')")

    for part_dir in part_dirs:
        part_file = part_dir / "00-part.md"
        if not part_file.exists():
            error(f"{part_dir.name}/: Missing 00-part.md")

        chapter_dirs = sorted([d for d in part_dir.iterdir() if d.is_dir()])
        if not chapter_dirs:
            warn(f"{part_dir.name}/: No chapter subdirectories found")

        for ch_dir in chapter_dirs:
            chapter_file = ch_dir / "chapter.md"
            if not chapter_file.exists():
                error(f"{ch_dir.relative_to(CHAPTERS_DIR)}/: Missing chapter.md")

    # Check top-level files
    top_files = sorted(CHAPTERS_DIR.glob("*.md"))
    names = [f.name for f in top_files]
    if "00-title.md" not in names:
        warn("chapters/00-title.md not found (title page)")
    if "01-toc.md" not in names:
        warn("chapters/01-toc.md not found (table of contents)")


def check_all_files():
    print("📄 Checking markdown files...")
    md_files = sorted(CHAPTERS_DIR.rglob("*.md"))

    if not md_files:
        error("No markdown files found in chapters/")
        return

    for md_file in md_files:
        content = md_file.read_text(encoding="utf-8")
        check_file(md_file, content)


def main():
    print("=" * 60)
    print("  📖 Book Markdown Consistency Checker")
    print("=" * 60)

    check_structure()
    check_all_files()

    print()
    if WARNINGS:
        print(f"⚠️  Warnings ({len(WARNINGS)}):")
        for w in WARNINGS:
            print(w)
        print()

    if ERRORS:
        print(f"❌ Errors ({len(ERRORS)}):")
        for e in ERRORS:
            print(e)
        print()
        print("=" * 60)
        print("  Build aborted – fix errors before building.")
        print("=" * 60)
        sys.exit(1)
    else:
        print("✅ All checks passed!")
        print("=" * 60)
        sys.exit(0)


if __name__ == "__main__":
    main()
