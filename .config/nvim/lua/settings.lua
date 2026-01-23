vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set undofile")
vim.cmd("set undodir=~/.local/share/nvim/undo")
vim.cmd("set undolevels=1000")
vim.cmd("set undoreload=10000")
vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = false
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>cca', 'ggVG"+y', {silent = true, desc = 'Copy all'})

























-- local modes = { "n", "i", "v", "x", "c" }
-- local arrows = { "<Up>", "<Down>", "<Left>", "<Right>" }
--
-- for _, mode in ipairs(modes) do
--   for _, arrow in ipairs(arrows) do
--     vim.keymap.set(mode, arrow, "<nop>", { noremap = true, silent = true })
--   end
-- end
