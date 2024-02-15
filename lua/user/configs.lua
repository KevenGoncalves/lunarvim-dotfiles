vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.conceallevel = 0
vim.opt.scrolloff = 8
vim.opt.spell = false
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.numberwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true
vim.fn.setenv("FIG_TERM", nil)

vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_icons = {
  collapsed = '',
  expanded = ''
}

vim.filetype.add({
  extension = {
    postcss = 'css',
  }
})
