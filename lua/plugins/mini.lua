return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    -- Textobjects améliorés (ai/ii, autour des fonctions, arguments, etc.)
    require('mini.ai').setup({ n_lines = 500 })

    -- Entourer / modifier / supprimer des surroundings : sa, sd, sr
    require('mini.surround').setup()

    -- Commentaires : gc (ligne) et gb (bloc), comme dans VS Code
    require('mini.comment').setup()
  end,
}
