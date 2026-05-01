RESOURCE_PATHS=$(find chapters/ -type d | tr '\n' ':')

find chapters/ -name "*.md" | sort | xargs pandoc \
--resource-path=.:$RESOURCE_PATHS \
--reference-doc=templates/TemplateDddMeetsAi.docx \
--lua-filter=templates/chapter-as-header.lua \
--lua-filter=templates/section-bibliographies.lua \
--lua-filter=templates/header-as-chapter.lua \
--metadata=section-bibs-bibliography:references.bib \
--metadata=section-bibs-level:1 \
--metadata=reference-section-title:"References" \
--csl=templates/ieee.csl \
-o BookDddMeetsAi.docx