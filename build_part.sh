#!/bin/bash
# Build a single part (its 00-part.md plus all chapters within it) to its own .docx file.
#
# Usage:
#   ./build_part.sh <part-number>
#   ./build_part.sh <path-to-part-dir>
#
# Examples:
#   ./build_part.sh 1
#   ./build_part.sh 02
#   ./build_part.sh chapters/part1
#
# Output: partN.docx in the project root.

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <part-number|path-to-part-dir>"
    exit 1
fi

ARG="$1"
PART_DIR=""

if [ -d "$ARG" ]; then
    PART_DIR="$ARG"
else
    NUM=$(echo "$ARG" | sed 's/^0*//')
    [ -z "$NUM" ] && NUM=0
    CANDIDATE="chapters/part${NUM}"
    if [ -d "$CANDIDATE" ]; then
        PART_DIR="$CANDIDATE"
    else
        echo "❌ No part directory found for '$ARG' (looked for $CANDIDATE)"
        exit 1
    fi
fi

PART_NUM=$(basename "$PART_DIR" | grep -oE '[0-9]+' || echo "x")
OUTPUT="part${PART_NUM}.docx"

if lsof "$OUTPUT" > /dev/null 2>&1; then
    echo "❌ $OUTPUT is currently open. Please close it in Word first."
    exit 1
fi

# Collect part intro file plus every chapter.md inside this part, sorted.
PART_FILES=$(find "$PART_DIR" -type f \( -name "00-part.md" -o -name "chapter.md" \) \
    ! -name "chapter*_index.md" | sort)

if [ -z "$PART_FILES" ]; then
    echo "❌ No markdown files found in $PART_DIR"
    exit 1
fi

echo "📁 Part directory: $PART_DIR"
echo "📦 Output:         $OUTPUT"
echo "📄 Files:"
echo "$PART_FILES" | sed 's/^/   - /'

echo "🧹 Cleaning up..."
rm -f "$OUTPUT"
rm -f /tmp/pandoc-part-*

echo "📚 Building $OUTPUT..."
RESOURCE_PATHS=$(find chapters/ -type d | tr '\n' ':')

echo "$PART_FILES" | xargs pandoc \
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
