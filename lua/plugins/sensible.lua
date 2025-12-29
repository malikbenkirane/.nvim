return {
  'malikbenkirane/sensible.nvim',
  keys = {
    {"<leader><leader>t", "<cmd>SensibleTerm<cr>"},
    {"<leader><leader>p", "<cmd>SensiblePush<cr>"},
    {"<leader>ex", "<cmd>SensibleExplore<cr>"},
    {"<leader>es", "<cmd>SensibleSexplore<cr>"},
    {"<leader>ev", "<cmd>SensibleVexplore<cr>"},
  },
  dir = '~/d/sensible.nvim',
  dev = true,
  opts = {
    'command',
  },
}
