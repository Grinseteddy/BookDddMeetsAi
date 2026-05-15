#!/bin/bash
set -e

OUTPUT="index.docx"

# Check if DOCX is currently open (macOS: lsof checks open file handles)
if lsof "$OUTPUT" > /dev/null 2>&1; then
    echo "❌ $OUTPUT is currently open. Please close it in Word first."
    exit 1
fi

echo "🧹 Cleaning up..."
rm -f "$OUTPUT"
rm -f /tmp/pandoc-index-*

echo "🔎 Collecting chapter index files..."
INDEX_FILES=$(find chapters/ -name "chapter*_index.md" | sort)

if [ -z "$INDEX_FILES" ]; then
    echo "⚠️  No chapterXX_index.md files found under chapters/."
    exit 1
fi

echo "📑 Found index files:"
echo "$INDEX_FILES" | sed 's/^/   - /'

echo "📚 Building $OUTPUT..."
RESOURCE_PATHS=$(find chapters/ -type d | tr '\n' ':')

echo "$INDEX_FILES" | xargs pandoc \
  --resource-path=.:$RESOURCE_PATHS \
  --reference-doc=templates/TemplateDddMeetsAi.docx \
  --lua-filter=templates/chapter-as-header.lua \
  --lua-filter=templates/header-as-chapter.lua \
  --lua-filter=templates/table-cell-styles.lua \
  -o "$OUTPUT"

echo "✅ Done! $OUTPUT created."
