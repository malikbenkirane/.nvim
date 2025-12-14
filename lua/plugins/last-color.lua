return {
  "raddari/last-color.nvim",
  lazy = false,
  config = function ()
    local theme = require('last-color').recall() or 'tokyonight'
    vim.cmd.colorscheme(theme)
  end,
}
