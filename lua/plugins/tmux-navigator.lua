return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Pane gauche" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Pane bas" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Pane haut" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Pane droite" },
    { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", desc = "Pane précédente" },
  },
}
