-- GENERAL --
vim.g.mapleader = " "                          -- set what <leader> maps to
vim.keymap.set("i", "jj", "<esc>",             {desc = "type jj to leave insert mode"})
vim.keymap.set("i", "<c-j>", "<down>",         {desc = "move down in insert mode"})
vim.keymap.set("i", "<c-k>", "<up>",           {desc = "move up in insert mode"})
vim.keymap.set("i", "<c-h>", "<left>",         {desc = "move left in insert mode"})
vim.keymap.set("i", "<c-l>", "<right>",        {desc = "move right in insert mode"})
vim.keymap.set("i", "<c-u>", "<cmd>u<cr>",     {desc = "undo in insert mode"})
vim.keymap.set("n", "<cr>", "o<esc>",          {desc = "create line below in normal mode"})
vim.keymap.set("n", "<s-cr>", "O<esc>",        {desc = "create line above in normal mode"})
vim.keymap.set({ "n", "v" }, "Y", "y$",        {desc = "yank to end of line"})
vim.keymap.set("v", ">", ">gv",                {desc = "indent and reselect"})
vim.keymap.set("v", "<", "<gv",                {desc = "dedent and reselect"})
vim.keymap.set("x", "y", "myy`y",              {desc = "don't move the cursor when yanking"})
vim.keymap.set("x", "<space>", "<esc>",        {desc = "escape visual mode with space"})
require("my.auto_pairs").setup()
require("my.enter_inside").setup()

-- PLUGIN SPECIFIC --
local flash = require("flash")
vim.keymap.set("n", "s", flash.jump,           {desc = "jump around in files quickly"})

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
vim.keymap.set("n", "<leader>sh", help,        {desc = "search help"})
vim.keymap.set("n", "<leader>sf", files,       {desc = "search files"})
vim.keymap.set("n", "<leader>so", options,     {desc = "search options"})
vim.keymap.set("n", "<leader>sb", fzf.buffers, {desc = "search open buffers"})
