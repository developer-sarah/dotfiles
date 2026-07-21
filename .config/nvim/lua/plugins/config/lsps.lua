require("mason").setup()

vim.lsp.enable("rust_analyzer")
vim.lsp.enable("lua_ls")

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '✘',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '󰙎',
      [vim.diagnostic.severity.HINT] = '󰌶',
    },
  },
  severity_sort = true, -- Ensure most important diagnostics come first
})
