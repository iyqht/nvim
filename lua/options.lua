-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

local o = vim.opt

-- show title
o.title = true
o.syntax = 'ON'
o.backup = false
-- turn off vi compatibility mode
o.compatible = false
-- disable all highlighted search results
o.hlsearch = true
-- enable incremental searching
o.incsearch = true
-- enable text wrapping
o.wrap = true
-- tabs=4spaces
o.tabstop = 4
o.shiftwidth = 4
o.fileencoding = 'utf-8'
-- number of items in popup menu
o.pumheight = 10
-- always show the tab line
o.showtabline = 2
-- always show statusline
o.laststatus = 2
o.signcolumn = 'auto'
-- expand tab
o.expandtab = false
o.smartindent = true
o.showcmd = true
o.cmdheight = 2
-- scroll page when cursor is 8 spaces from left/right
o.sidescrolloff = 8
o.guifont = 'firacode:h17'
o.completeopt = { 'menuone', 'noselect' }
-- terminal gui colors
o.termguicolors = true

o.whichwrap = '<,>'

-- Make line numbers default
o.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  o.clipboard = 'unnamedplus'
end)

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true
o.smartcase = true

-- Keep signcolumn on by default
o.signcolumn = 'yes'

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time
o.timeoutlen = 300

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
o.list = true
o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
o.inccommand = 'split'

-- Show which line your cursor is on
o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
o.confirm = true

-- vim: ts=2 sts=2 sw=2 et
