return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup({
        ui = { border = 'rounded' },
      })
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'mason.nvim', 'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp' },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end
        map('n', 'gd', vim.lsp.buf.definition, 'Aller à la définition')
        map('n', 'gr', vim.lsp.buf.references, 'Voir les références')
        map('n', 'K', vim.lsp.buf.hover, 'Documentation')
        map('n', '<leader>rn', vim.lsp.buf.rename, 'Renommer')
        map('n', '<leader>ca', vim.lsp.buf.code_action, 'Actions de code')
        map('n', '<leader>d', vim.diagnostic.open_float, 'Voir le diagnostic')
        map('n', '[d', vim.diagnostic.goto_prev, 'Diagnostic précédent')
        map('n', ']d', vim.diagnostic.goto_next, 'Diagnostic suivant')
      end

      -- Configuration par défaut pour tous les serveurs via vim.lsp.config
      vim.lsp.config('*', {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      -- Surcharges spécifiques
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = { globals = { 'vim' } },
          },
        },
      })

      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'pyright',
          'ts_ls',
          'html',
          'cssls',
          'jsonls',
          'bashls',
          'marksman',
	  'clangd',
	  'rust_analyzer',
	  'gopls',
        },
        automatic_installation = true,
        handlers = {
          function(server_name)
            vim.lsp.enable(server_name)
          end,
        },
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
  },
}
