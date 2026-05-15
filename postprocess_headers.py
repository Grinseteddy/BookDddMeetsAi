#!/usr/bin/env python3
"""
Post-process the built BookDddMeetsAi.docx to add a custom header
that shows ONLY the Chapter Title (no "Chapter N" prefix).

The new header is registered with relationship Id rId500 and stored
as word/header4.xml. Sections in the markdown can opt in by emitting:

    <w:headerReference w:type="default" r:id="rId500"/>

inside their <w:sectPr>.
"""

import sys
import zipfile
import shutil
from pathlib import Path

DOCX = Path(sys.argv[1] if len(sys.argv) > 1 else "BookDddMeetsAi.docx")
HEADER_REL_ID = "rId500"
HEADER_PART = "word/header4.xml"

HEADER_XML = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<w:hdr xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
       xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main">
  <w:p>
    <w:pPr><w:pStyle w:val="Header"/></w:pPr>
    <w:fldSimple w:instr=" STYLEREF &quot;Chapter Title&quot; \\* MERGEFORMAT ">
      <w:r><w:rPr><w:noProof/></w:rPr><w:t></w:t></w:r>
    </w:fldSimple>
  </w:p>
</w:hdr>
"""

REL_LINE = (
    f'<Relationship Id="{HEADER_REL_ID}" '
    f'Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/header" '
    f'Target="header4.xml"/>'
)

CT_OVERRIDE = (
    '<Override PartName="/word/header4.xml" '
    'ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.header+xml"/>'
)


def patch():
    if not DOCX.exists():
        print(f"❌ {DOCX} not found")
        sys.exit(1)

    tmp_out = DOCX.with_suffix(".patched.docx")

    with zipfile.ZipFile(DOCX, "r") as zin, zipfile.ZipFile(
        tmp_out, "w", zipfile.ZIP_DEFLATED
    ) as zout:
        names = set(zin.namelist())
        if HEADER_PART in names:
            print("ℹ️  header4.xml already present – nothing to do")
            return

        for item in zin.infolist():
            data = zin.read(item.filename)

            if item.filename == "word/_rels/document.xml.rels":
                text = data.decode("utf-8")
                if HEADER_REL_ID not in text:
                    text = text.replace("</Relationships>", REL_LINE + "</Relationships>")
                data = text.encode("utf-8")

            elif item.filename == "[Content_Types].xml":
                text = data.decode("utf-8")
                if "/word/header4.xml" not in text:
                    text = text.replace("</Types>", CT_OVERRIDE + "</Types>")
                data = text.encode("utf-8")

            zout.writestr(item, data)

        zout.writestr(HEADER_PART, HEADER_XML)

    shutil.move(tmp_out, DOCX)
    print(f"✅ Injected {HEADER_PART} ({HEADER_REL_ID}) into {DOCX}")


if __name__ == "__main__":
    patch()
