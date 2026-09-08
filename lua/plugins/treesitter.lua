return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    local ensure_installed = {
      -- Neovim / config
      'lua',
      'vim',
      'vimdoc',
      'query',
      'regex',

      -- Systèmes / scripting
      'bash',
      'python',
      'c',
      'cpp',
      'c_sharp',
      'rust',
      'go',
      'java',
      'kotlin',
      'swift',
      'ruby',
      'php',
      'zig',

      -- Web / front-end
      'javascript',
      'typescript',
      'tsx',
      'html',
      'css',
      'scss',
      'json',
      'json5',
      'yaml',
      'toml',
      'graphql',

      -- Documents / écriture
      'markdown',
      'markdown_inline',
      'latex',
      'bibtex',

      -- Data / requêtes
      'sql',

      -- Infra / config
      'dockerfile',
      'make',
      'cmake',
      'terraform',
      'nix',
      'ini',

      -- Git
      'git_config',
      'git_rebase',
      'gitcommit',
      'gitignore',
      'gitattributes',
      'diff',

      -- Autres langages populaires
      'dart',
      'r',
      'haskell',
      'elixir',
      'erlang',
      'scala',
    }

    require('nvim-treesitter').setup()
    require('nvim-treesitter').install(ensure_installed)

    -- La nouvelle API n'active plus le highlighting/indent automatiquement.
    -- On utilise pattern = '*' plutôt qu'une liste de filetypes : ça évite
    -- de devoir faire correspondre manuellement chaque filetype à son nom
    -- de parser (ex: filetype 'sh' -> parser 'bash', filetype 'tex' ->
    -- parser 'latex'). vim.treesitter.start() se charge lui-même de
    -- trouver le bon parser via vim.treesitter.language.get_lang(), et le
    -- pcall ignore silencieusement les filetypes sans parser installé.
    vim.api.nvim_create_autocmd('FileType', {
      pattern = '*',
      callback = function(args)
        local ok = pcall(vim.treesitter.start, args.buf)
        if ok then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
