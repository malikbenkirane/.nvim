return {
  'malikbenkirane/last-font.nvim',
  config = function () 
    local font = require('last-font').recall() or 'JetBrains Mono:h14'
    vim.opt.guifont = font
  end
}
