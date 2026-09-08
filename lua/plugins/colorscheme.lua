return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000, -- charger avant tout le reste
  config = function()
    require('tokyonight').setup({
      style = 'storm', -- 'storm' | 'night' | 'moon'
      transparent = true,
      terminal_colors = true,
      styles = {
        sidebars = 'transparent',
        floats = 'transparent',
      },
    })
    vim.cmd.colorscheme('tokyonight')

    -- Force la transparence sur quelques groupes que le thème ne couvre pas toujours
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  end,
}
