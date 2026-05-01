--[[
chapter-as-header.lua  (v3)

Two-pass pre-filter:

  Pass 1 — Demote every existing Header by one level (cap at 6) so that
           level 1 is reserved exclusively for chapter boundaries.

  Pass 2 — Find every Div with custom-style="Chapter Number" and replace
           it with a level-1 Header carrying the marker class
           "chapter-title-marker". section-bibliographies (running after
           this filter) will treat each Chapter Number as the start of a
           new section, so the per-chapter reference list lands at the
           true end of the chapter — before the next Chapter Number.

  IMPORTANT — chapter boundary is "Chapter Number", NOT "Chapter Title".
  The chapter actually starts at the Chapter Number paragraph; the
  Chapter Title Div is left as-is so its publisher style is preserved.
]]

local function demote_header(h)
  local new_level = math.min(h.level + 1, 6)
  return pandoc.Header(new_level, h.content, h.attr)
end

local function chapter_div_to_header(div)
  if div.attributes['custom-style'] == 'CHAPTER NUMBER' then
    local inlines = {}
    for _, block in ipairs(div.content) do
      if block.t == 'Para' or block.t == 'Plain' then
        for _, inline in ipairs(block.content) do
          table.insert(inlines, inline)
        end
      end
    end
    return pandoc.Header(1, inlines, pandoc.Attr('', {'chapter-title-marker'}, {}))
  end
end

return {
  { Header = demote_header },
  { Div    = chapter_div_to_header },
}
