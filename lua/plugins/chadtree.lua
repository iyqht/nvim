return {
  'ms-jpq/chadtree',
  lazy = false,
},
  vim.keymap.set('n', '<leader>e', '<cmd>CHADopen<cr>', { desc = 'Open CHADTree' }),
  vim.keymap.set('n', '\\', '<cmd>CHADopen --always-focus<cr>', { desc = 'Focus CHADTree' })
