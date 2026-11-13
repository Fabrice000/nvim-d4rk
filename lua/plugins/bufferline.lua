return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  keys = {
    { '<Tab>', '<cmd>BufferLineCycleNext<CR>', desc = 'Onglet suivant' },
    { '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Onglet précédent' },
    { '<leader>x', '<cmd>bdelete<CR>', desc = 'Fermer le fichier/onglet' },
    { '<leader>bp', '<cmd>BufferLinePick<CR>', desc = 'Choisir un onglet' },
    { '<leader>bo', '<cmd>BufferLineCloseOthers<CR>', desc = 'Fermer les autres onglets' },
  },
  opts = {
    options = {
      mode = 'buffers',
      separator_style = 'thin', -- 'slant' | 'slope' | 'thick' | 'thin'
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      color_icons = true,
      diagnostics = 'nvim_lsp',
      diagnostics_indicator = function(count, level)
        local icon = level:match('error') and ' ' or ' '
        return ' ' .. icon .. count
      end,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'EXPLORATEUR',
          text_align = 'left',
          separator = true,
        },
      },
    },
  },
}
