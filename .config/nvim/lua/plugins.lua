local function add_github(repo, spec, opts)
  spec = spec or {}
  opts = opts or {}
  spec.src = "https://github.com/" .. repo .. ".git"
  vim.pack.add({spec}, opts)
end

add_github("EdenEast/nightfox.nvim") -- colorscheme
add_github("folke/flash.nvim")       -- motions
add_github("ibhagwan/fzf-lua")       -- fuzzy finder
