return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
    "TmuxNavigatorProcessList",
  },
  keys = {
    { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<Cr>" },
    { "<C-j>", "<cmd><C-U>TmuxNavigateDown<Cr>" },
    { "<C-k>", "<cmd><C-U>TmuxNavigateUp<Cr>" },
    { "<C-l>", "<cmd><C-U>TmuxNavigateRight<Cr>" },
    { "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<Cr>" },
  },
}
