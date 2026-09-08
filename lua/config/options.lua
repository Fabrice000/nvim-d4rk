vim.g.maplocalleader = " "
vim.g.mapleader = " "
local opt = vim.opt

-- Interface
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.scrolloff = 8
opt.wrap = false
opt.showmode = false -- lualine s'en charge

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Recherche
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Fichiers / historique
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("data") .. "/undodir"

-- Performance
opt.updatetime = 250
opt.timeoutlen = 400

-- Clipboard système
opt.clipboard = "unnamedplus"

-- Apparence divers
opt.cmdheight = 1
opt.pumheight = 10
opt.conceallevel = 0
-- Providers non utilisés : désactivés pour accélérer le démarrage
-- et faire taire les warnings de :checkhealth
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
