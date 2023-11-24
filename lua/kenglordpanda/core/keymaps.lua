-- leader remap
vim.g.mapleader = " "
-- general remaps
vim.keymap.set("n", "jk", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("v", "jk", "<Esc>")
vim.keymap.set("c", "jk", "<Esc>")

vim.keymap.set('n', '<C-v>', 'P')
vim.keymap.set('i', '<C-v>', 'P')
vim.keymap.set('v', '<C-v>', 'P')
vim.keymap.set('c', '<C-v>', 'P')

vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', {desc = 'Prev Buffer' })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', {desc = 'Next Buffer' })
