-- table-cell-styles.lua
--
-- Wraps every table cell's content in a Div with custom-style, so pandoc
-- maps it to a Word PARAGRAPH style. Use with --reference-doc that
-- defines "Table Head" and "Table Text" as paragraph styles.
--
-- Header cells   → custom-style="Table Head"
-- Body / Foot    → custom-style="Table Text"
--
-- Important: pipe-table cells contain Plain blocks. Plain doesn't get
-- a paragraph style applied in docx output, so we promote Plain → Para
-- before wrapping in the styled Div.

local function plain_to_para(blocks)
  local out = {}
  for _, b in ipairs(blocks) do
    if b.t == 'Plain' then
      out[#out+1] = pandoc.Para(b.content)
    else
      out[#out+1] = b
    end
  end
  return out
end

local function wrap(cell, style_name)
  local attr = pandoc.Attr('', {}, {['custom-style'] = style_name})
  cell.contents = {pandoc.Div(plain_to_para(cell.contents), attr)}
  return cell
end

function Table(tbl)
  for _, row in ipairs(tbl.head.rows) do
    for i, cell in ipairs(row.cells) do
      row.cells[i] = wrap(cell, 'Table Head')
    end
  end
  for _, body in ipairs(tbl.bodies) do
    for _, row in ipairs(body.head) do
      for i, cell in ipairs(row.cells) do
        row.cells[i] = wrap(cell, 'Table Head')
      end
    end
    for _, row in ipairs(body.body) do
      for i, cell in ipairs(row.cells) do
        row.cells[i] = wrap(cell, 'Table Text')
      end
    end
  end
  for _, row in ipairs(tbl.foot.rows) do
    for i, cell in ipairs(row.cells) do
      row.cells[i] = wrap(cell, 'Table Text')
    end
  end
  return tbl
end
