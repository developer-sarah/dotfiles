vim.o.number = true                        -- show line numbers
vim.o.title = true                         -- show file information in window title
vim.o.clipboard = "unnamed"                -- sync the system clipboard with neovim
vim.o.undofile = true                      -- use undo files
vim.o.mouse = "ar"                         -- enable the mouse everywhere
vim.o.cursorline = true                    -- highlight the current line
vim.o.colorcolumn = "90"                   -- highlight column 90
vim.o.signcolumn = "yes"                   -- always show the sign column
vim.o.guicursor = "n-v-c-sm:block," ..
                  "i-ci-ve-t:ver25," ..    -- get rid of blinking in terminal mode
                  "r-cr-o:hor20"
vim.o.confirm = true                       -- ask to save instead of failing
vim.o.laststatus = 0                       -- don't show the statusline
vim.o.timeoutlen = 500                     -- decrease the wait time between keypresses
vim.o.splitbelow = true                    -- open horizontal windows below
vim.o.splitright = true                    -- open vertical windows to the right

local tabsize = 2
vim.o.expandtab = true                     -- convert tabs into spaces
vim.o.tabstop = tabsize                    -- show a tab as this many spaces
vim.o.shiftwidth = tabsize                 -- insert this many spaces as a tab
vim.o.list = true                          -- show various whitespace characters
vim.o.listchars = "space:·,tab:» ,trail:~" -- how to show the whitespace

vim.o.ignorecase = true                    -- search case insensitive
vim.o.smartcase = true                     -- UNLESS there is capitalization
