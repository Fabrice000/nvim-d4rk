return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-treesitter/nvim-treesitter', -- force son chargement avant ce config()
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  config = function()
    require('telescope').setup({
      defaults = {
        prompt_prefix = '  ',
        selection_caret = ' ',
        path_display = { 'truncate' },
      },
    })
    pcall(require('telescope').load_extension, 'fzf')

    -- Compat : le previewer de telescope.nvim appelle encore l'ancienne
    -- API require('nvim-treesitter.parsers').ft_to_lang(), supprimée dans
    -- la branche `main` du rewrite de nvim-treesitter. On patche la
    -- fonction manquante directement sur le VRAI module (au lieu de le
    -- remplacer), pour ne pas casser le reste de nvim-treesitter (ex:
    -- install()) qui a besoin du contenu original de ce module.
    local ok, parsers = pcall(require, 'nvim-treesitter.parsers')
    if ok and not parsers.ft_to_lang then
      parsers.ft_to_lang = function(ft)
        return vim.treesitter.language.get_lang(ft) or ft
      end
    end
  end,
}
