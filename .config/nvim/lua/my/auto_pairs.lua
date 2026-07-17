local M = {}

-- <C-g>u creates an undo block so that the pair insertion can easily be undone
local inserts = {
  ["("] = "(<C-g>u)<ESC>i",
  ["{"] = "{<C-g>u}<ESC>i",
  ["["] = "[<C-g>u]<ESC>i",
  [")"] = ")",
  ["}"] = "}",
  ["]"] = "]",
  ['"'] = '"<C-g>u"<Esc>i',
  ["'"] = "'<C-g>u'<Esc>i",
  ["`"] = "`<C-g>u`<Esc>i",
}

local function is_alphanumeric(char)
  return string.match(char, "[%a%d]") ~= nil
end

local function skip_or_insert(char, insert_sequence)
  local line_text = vim.api.nvim_get_current_line()
  local col = vim.fn.col(".")
  local next_char = line_text:sub(col, col)
  if next_char == char then
    return "<Right>"       -- skip over it
  elseif is_alphanumeric(next_char) then
    return char            -- just insert the char
  else
    return insert_sequence -- insert the char or the pair
  end
end

function M.setup()
  for char, sequence in pairs(inserts) do
    vim.keymap.set("i", char, function() return skip_or_insert(char, sequence) end, { expr = true })
  end
end

return M
