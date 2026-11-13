return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'Explorateur de fichiers' },
  },
  init = function()
    -- Charge et ouvre neo-tree automatiquement si Neovim est lancé sur un dossier (ex: nvim .)
    vim.api.nvim_create_autocmd('BufEnter', {
      group = vim.api.nvim_create_augroup('neotree_start_directory', { clear = true }),
      desc = 'Ouvrir Neo-tree sur un répertoire',
      once = true,
      callback = function()
        if package.loaded['neo-tree'] then
          return
        end
        local path = vim.fn.expand('%:p')
        local stats = vim.uv.fs_stat(path)
        if stats and stats.type == 'directory' then
          require('neo-tree')
        end
      end,
    })
  end,
  config = function()
    require('neo-tree').setup({
      close_if_last_window = true,
      window = { width = 30 },
      filesystem = {
        hijack_netrw_behavior = 'open_default',
        use_libuv_file_watcher = true,
        follow_current_file = { enabled = true },
        filtered_items = { hide_dotfiles = false, hide_gitignored = false },
      },
    })
  end,
}

