return {
  'thePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup({
      global_settings = {
        save_on_toggle = true,
        save_on_change = true,
      },
    })

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = 'Harpoon : ajouter le fichier' })

    vim.keymap.set('n', '<leader>hh', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon : ouvrir le menu' })

    for i = 1, 4 do
      vim.keymap.set('n', '<leader>h' .. i, function()
        harpoon:list():select(i)
      end, { desc = 'Harpoon : fichier ' .. i })
    end

    vim.keymap.set('n', '<leader>hn', function()
      harpoon:list():next()
    end, { desc = 'Harpoon : suivant' })

    vim.keymap.set('n', '<leader>hp', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon : précédent' })
  end,
}
