local map = vim.keymap.set

-- Navigation entre splits gérée par vim-tmux-navigator (Ctrl-h/j/k/l),
-- y compris pour passer d'un split Neovim à un pane tmux.

-- Redimensionner les splits
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

-- Sauvegarde / quitter rapide
map("n", "<leader>w", ":w<CR>", { desc = "Sauvegarder" })
map("n", "<leader>q", ":q<CR>", { desc = "Quitter" })

-- Déplacer les lignes sélectionnées
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Garder le curseur centré lors du scroll
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Enlever le surlignage de recherche
map("n", "<Esc>", ":noh<CR>", { silent = true })

-- Explorateur de fichiers
map("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Explorateur" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Chercher fichier" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Chercher texte" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers ouverts" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fichiers récents" })
