vim.g.have_nerd_font = true
vim.opt.tabstop = 1
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.cmd [[colorscheme desert]]

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
-- Tab problems 

vim.opt.spell = false
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.wrap = true
vim.wo.linebreak = true
--Chiudi parentesi
vim.keymap.set('i', '(' , '()<ESC><ESC>i')
vim.keymap.set('i', '{' , '{}<ESC><ESC>i')
vim.keymap.set('i', '[' , '[]<ESC><ESC>i')
vim.keymap.set('n', 'ò' , '$')
-- Comodo per scorrere, zz mette a centro pg la riga
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
--vim.keymap.set('n', '<C-k>', 'i$_{}^{}$<ESC>T{;i')
--vim.keymap.set('n', '<C-j>', 'i\\partial{ }_{ } <ESC>T{;i')

