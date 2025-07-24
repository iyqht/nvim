-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set semicolon as colon
vim.keymap.set({ 'n', 'v' }, ';', ':')

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Tab bindings
vim.keymap.set('n', '<leader>t', ':tabnew<CR>', { desc = 'Creates new tab' })
vim.keymap.set('n', '<leader>x', ':tabclose<CR>', { desc = 'Closes current tab' })
vim.keymap.set('n', '<leader>pt', ':tabprevious<CR>', { desc = 'Moves to previous tab' })
vim.keymap.set('n', '<leader>nt', ':tabnext<CR>', { desc = 'Moves next tab' })

-- easy split generation
vim.keymap.set('n', '<leader>vv', ':vsplit', { desc = 'Creates a veritcal split' })
vim.keymap.set('n', '<leader>vh', ':split', { desc = 'Creates a veritcal split' })

-- buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext <CR>', { desc = 'Goes to next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious <CR>', { desc = 'Goes to previous buffer' })
vim.keymap.set('n', '<leader>d', ':bd! <CR>', { desc = 'Deletes current buffer' })

-- adjust split sizes easier
vim.keymap.set('n', '<C-Left>', ':vertical resize +3<CR>', { desc = 'Resizes vertical split +' })
vim.keymap.set('n', '<C-Right>', ':vertical resize -3<CR>', { desc = 'Resizes vertical split -' })

-- Visual Maps
vim.keymap.set('v', '<leader>r', '"hy:%s/<C-r>h//g<left><left>', { desc = 'Replace all instances of highlighted words' })
vim.keymap.set('v', '<C-s>', ':sort<CR>', { desc = 'Sort highlighted text in visual mode with Control+S' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move current line down' })
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv", { desc = 'Move current line up' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
