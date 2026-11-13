return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('gitsigns').setup({
      signs = {
        add = { text = '│' },
        change = { text = '│' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- Navigation entre les hunks
        map('n', ']h', gs.next_hunk, 'Hunk suivant')
        map('n', '[h', gs.prev_hunk, 'Hunk précédent')

        -- Actions
        map('n', '<leader>gs', gs.stage_hunk, 'Stage le hunk')
        map('n', '<leader>gr', gs.reset_hunk, 'Reset le hunk')
        map('n', '<leader>gS', gs.stage_buffer, 'Stage le buffer')
        map('n', '<leader>gR', gs.reset_buffer, 'Reset le buffer')
        map('n', '<leader>gu', gs.undo_stage_hunk, 'Annuler le stage')
        map('n', '<leader>gp', gs.preview_hunk, 'Prévisualiser le hunk')
        map('n', '<leader>gb', function() gs.blame_line({ full = true }) end, 'Blame de la ligne')
        map('n', '<leader>gB', gs.toggle_current_line_blame, 'Toggle blame de ligne')
        map('n', '<leader>gd', gs.diffthis, 'Diff du fichier')
        map('n', '<leader>gD', function() gs.diffthis('~') end, 'Diff contre HEAD~')

        -- Text object : ih = hunk
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', 'Sélectionner le hunk')
      end,
    })
  end,
}
