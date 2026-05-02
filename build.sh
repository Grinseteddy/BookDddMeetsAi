#!/bin/bash
set -e

OUTPUT="BookDddMeetsAi.docx"

echo "🔍 Running consistency check..."
python3 check.py || exit 1

echo "🧹 Cleaning up..."
rm -f "$OUTPUT"
rm -f /tmp/pandoc-*

echo "📚 Building $OUTPUT..."
RESOURCE_PATHS=$(find chapters/ -type d | tr '\n' ':')

find chapters/ -name "*.md" | sort | xargs pandoc \
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

echo "✅ Done! $OUTPUT created."
