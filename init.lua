require("config.lazy")

local function get_git_root()
  local dot_git_path = vim.fn.finddir(".git", ".;")
  return vim.fn.fnamemodify(dot_git_path, ":h")
end

vim.api.nvim_create_user_command("CdGitRoot", function()
  vim.api.nvim_set_current_dir(get_git_root())
end, {})

vim.g.netrw_liststyle = 3
vim.o.relativenumber = true 

vim.keymap.set('n', '<leader>ga', ':silent !git add %<cr>', {noremap=true})
vim.keymap.set('n', '<leader>gg', ':silent !git add %<cr>', {noremap=true})
vim.keymap.set('n', '<leader>gs', ':term git status<cr>', {noremap=true})

vim.api.nvim_create_autocmd('BufRead', {
  pattern = { '.commit-stash' },
  callback = function()
    vim.opt.filetype = 'gitcommit'
  end
})
