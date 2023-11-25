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

vim.keymap.set('n', '<Leader>bd', ':bd<CR>', {desc = 'Delete Buffer'})
vim.keymap.set('n', '<Leader>bD', ':bd!<CR>', {desc = 'Delete Buffer for Sure'})
vim.keymap.set('n', '<Leader>bw', ':bw<CR>', {desc = 'Wipeout Buffer'} )
vim.keymap.set('n', '<Leader>bW', ':bw!<CR>', {desc = 'Wipeout Buffer for Sure'})
