local function add_github(repo, spec, opts)
  spec = spec or {}
  opts = opts or {}
  spec.src = "https://github.com/" .. repo .. ".git"
  vim.pack.add({spec}, opts)
end

add_github("EdenEast/nightfox.nvim") -- colorscheme
add_github("folke/flash.nvim")       -- motions
add_github("ibhagwan/fzf-lua")       -- fuzzy finder

-- LSP related
add_github("mason-org/mason.nvim")   -- easily install lsps, linters, etc
add_github("neovim/nvim-lspconfig")  -- easily configure lsps
require("plugins.config.lsps")

add_github("Saghen/blink.cmp", {version = "v1"})
require("plugins.config.completion")
