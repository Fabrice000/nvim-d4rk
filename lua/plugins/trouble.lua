return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  cmd = 'Trouble',
  keys = {
    { '<leader>td', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>', desc = 'Diagnostics du fichier' },
    { '<leader>tw', '<cmd>Trouble diagnostics toggle<CR>', desc = 'Diagnostics du workspace' },
    { '<leader>tq', '<cmd>Trouble quickfix toggle<CR>', desc = 'Quickfix' },
    { '<leader>tl', '<cmd>Trouble loclist toggle<CR>', desc = 'Location list' },
  },
  opts = {
    focus = true,
  },
}
