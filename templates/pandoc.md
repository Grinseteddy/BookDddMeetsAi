find chapters/ -name "*.md" | sort | xargs pandoc \
--reference-doc=templates/TemplateDddMeetsAi.docx \
-o BookDddMeetsAi.docx