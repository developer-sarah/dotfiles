-- GENERAL --
vim.g.mapleader = " "                          -- set what <leader> maps to
vim.keymap.set("i", "jj", "<esc>")             -- type jj to leave insert mode
vim.keymap.set("i", "<c-j>", "<down>")         -- move down in insert mode
vim.keymap.set("i", "<c-k>", "<up>")           -- move up in insert mode
vim.keymap.set("i", "<c-h>", "<left>")         -- move left in insert mode
vim.keymap.set("i", "<c-l>", "<right>")        -- move right in insert mode
vim.keymap.set("i", "<c-u>", "<cmd>u<cr>")     -- undo in insert mode
vim.keymap.set("n", "<cr>", "o<esc>")          -- create line below in normal mode
vim.keymap.set("n", "<s-cr>", "O<esc>")        -- create line above in normal mode
vim.keymap.set({ "n", "v" }, "Y", "y$")        -- yank to end of line
vim.keymap.set("v", ">", ">gv")                -- indent and reselect
vim.keymap.set("v", "<", "<gv")                -- dedent and reselect
vim.keymap.set("x", "y", "myy`y")              -- don't move the cursor when yanking
vim.keymap.set("x", "<space>", "<esc>")        -- escape visual mode with space

-- PLUGIN SPECIFIC --
local flash = require("flash")
vim.keymap.set("n", "s", flash.jump)           -- jump around in files quickly

local fzf = require("fzf-lua")
local function help()
  fzf.helptags({
    fzf_opts = {
      ["--exact"] = true,                      -- turn off fuzzy searching
    },
    actions = {
      ["enter"] = fzf.actions.help_tab,        -- open documentation in a new tab
    },
    winopts = {
      fullscreen = true,
      preview = {
        layout = "vertical",
        vertical = "up:65%",
      },
    },
  })
end
local function files()
  fzf.files({
    winopts = {
      fullscreen = true,
      preview = {
        layout = "vertical",
        vertical = "up:60%",
      },
    },
  })
end
local function options()
  fzf.nvim_options({
    winopts = {
      fullscreen = true,
      preview = {
        layout = "vertical",
        vertical = "up:60%",
      },
    },
  })
end
vim.keymap.set("n", "<leader>sh", help)        -- search help
vim.keymap.set("n", "<leader>sf", files)       -- search files
vim.keymap.set("n", "<leader>so", options)     -- search options
vim.keymap.set("n", "<leader>sb", fzf.buffers) -- search open buffers
