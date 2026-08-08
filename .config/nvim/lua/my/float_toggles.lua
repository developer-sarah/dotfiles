local M = {}

local function toggle_float(method)
  return function()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local config = vim.api.nvim_win_get_config(win)
      if config.relative ~= "" then
        vim.api.nvim_win_close(win, true)
        return
      end
    end

    method({silent = true})
  end
end

function M.setup()
  vim.keymap.set({"n", "i", "s"},
                 "<c-s>", toggle_float(vim.lsp.buf.signature_help),
                 {silent = true, desc = "toggle signature help"})

  vim.keymap.set({"n", "i", "s"},
                 "<c-k>", toggle_float(vim.lsp.buf.hover),
                 {silent = true, desc = "toggle hover help"})
  vim.keymap.set("n", "K", "<c-k>", {remap = true, desc = "toggle hover help"})

  vim.keymap.set({"n", "i"},
                 "<c-w>d", toggle_float(vim.diagnostic.open_float),
                 {silent = true, desc = "toggle diagnostic help"})
  vim.keymap.set({"n", "i"},
                 "<c-w><c-d>", "<c-w>d",
                 {remap = true, desc = "toggle diagnostic help"})
end

return M
