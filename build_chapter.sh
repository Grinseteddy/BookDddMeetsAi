#!/bin/bash
# Build a single chapter to its own .docx file.
#
# Usage:
#   ./build_chapter.sh <chapter-number>
#   ./build_chapter.sh <path-to-chapter.md>
#
# Examples:
#   ./build_chapter.sh 1
#   ./build_chapter.sh 02
#   ./build_chapter.sh chapters/part1/01-The-Synergetic-Blueprint-Revisited/chapter.md
#
# Output: chapter<NN>.docx in the project root.

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <chapter-number|path-to-chapter.md>"
    exit 1
fi

ARG="$1"
CHAPTER_FILE=""

if [ -f "$ARG" ]; then
    CHAPTER_FILE="$ARG"
else
    # Normalize to two digits (1 -> 01)
    NUM=$(printf "%02d" "$(echo "$ARG" | sed 's/^0*//')" 2>/dev/null || echo "$ARG")
    # Find chapters/partX/NN-*/chapter.md
    CHAPTER_FILE=$(find chapters -type f -path "*/${NUM}-*/chapter.md" | head -n 1)
    if [ -z "$CHAPTER_FILE" ]; then
        echo "❌ No chapter found matching number '$ARG' (looked for chapters/*/${NUM}-*/chapter.md)"
        exit 1
    fi
fi

# Derive chapter number from the directory name (e.g. 01-The-...)
CH_DIR=$(dirname "$CHAPTER_FILE")
CH_NUM=$(basename "$CH_DIR" | grep -oE '^[0-9]+' || echo "xx")
OUTPUT="chapter${CH_NUM}.docx"

if lsof "$OUTPUT" > /dev/null 2>&1; then
    echo "❌ $OUTPUT is currently open. Please close it in Word first."
    exit 1
fi

echo "📄 Chapter file: $CHAPTER_FILE"
echo "📦 Output:       $OUTPUT"

echo "🧹 Cleaning up..."
rm -f "$OUTPUT"
rm -f /tmp/pandoc-chapter-*

echo "📚 Building $OUTPUT..."
RESOURCE_PATHS=$(find chapters/ -type d | tr '\n' ':')

pandoc "$CHAPTER_FILE" \
  --resource-path=.:$RESOURCE_PATHS \
  --reference-doc=templates/TemplateDddMeetsAi.docx \
  --lua-filter=templates/chapter-as-header.lua \
  --lua-filter=templates/section-bibliographies.lua \
  --lua-filter=templates/header-as-chapter.lua \
  --lua-filter=templates/table-cell-styles.lua \
  --metadata=section-bibs-bibliography:references.bib \
  --metadata=section-bibs-level:1 \
  --metadata=reference-section-title:"References" \
  --csl=templates/ieee.csl \
  -o "$OUTPUT"

echo "🔧 Injecting title-only header (header4.xml)..."
python3 postprocess_headers.py "$OUTPUT"

echo "✅ Done! $OUTPUT created."
