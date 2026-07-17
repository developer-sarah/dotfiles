local M = {}

function M.timeoutlen(ms, default_ms)
  local group = vim.api.nvim_create_augroup("insert mode timeoutlen", { clear = true })

  vim.api.nvim_create_autocmd({ 'InsertEnter' }, {
    group = group,
    callback = function()
      vim.o.timeoutlen = ms
    end,
  })

  vim.api.nvim_create_autocmd({ 'InsertLeave' }, {
    group = group,
    callback = function()
      vim.o.timeoutlen = default_ms
    end,
  })
end

return M
