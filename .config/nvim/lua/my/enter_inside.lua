local M = {}

local function enter_inside()
  local line_text = vim.api.nvim_get_current_line()
  local col = vim.fn.col(".")
  local before_cursor = line_text:sub(0, col)
  local after_cursor = line_text:sub(col)

  if (before_cursor:len() ~= 0) and (after_cursor:len() ~= 0) then
    return "<CR><ESC>O"
  else
    return "<CR>"
  end
end

function M.setup()
  vim.keymap.set("i", "<CR>", enter_inside, { expr = true })
end

return M
