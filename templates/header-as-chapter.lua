--[[
header-as-chapter.lua  (v2)

Post-filter, runs AFTER section-bibliographies has split the document
and inserted per-chapter reference lists.

  Pass 1 — Convert marker Headers (those carrying the "chapter-title-marker"
           class added by chapter-as-header.lua) back into Divs with
           custom-style="Chapter Number", so the docx output uses the
           publisher's "Chapter Number" paragraph style.

  Pass 2 — Find each per-chapter references Div (id starts with "refs")
           and stamp custom-style="Bibliography" onto it. This forces
           every reference paragraph inside to use a single, consistent
           style, overriding Pandoc's default behavior of giving the first
           paragraph after a heading the "FirstParagraph" style and the
           rest "BodyText".

           If your TemplateDddMeetsAi.docx does not yet contain a
           "Bibliography" paragraph style, define one (set the font, size,
           hanging indent, spacing) — every reference will then look
           identical. If you prefer a different style name (e.g. "Reference"
           or "Literaturverzeichnis"), just change BIB_STYLE below.
]]

local BIB_STYLE = 'Bibliography'

local function unmark_chapter(h)
  for _, cls in ipairs(h.classes) do
    if cls == 'chapter-title-marker' then
      return pandoc.Div(
        {pandoc.Para(h.content)},
        pandoc.Attr('', {}, {{'custom-style', 'CHAPTER NUMBER'}})
      )
    end
  end
end

local function style_refs(div)
  if div.identifier and div.identifier:sub(1, 4) == 'refs' then
    div.attributes['custom-style'] = BIB_STYLE
    return div
  end
end

return {
  { Header = unmark_chapter },
  { Div    = style_refs },
}
