-- Space as leader.
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Exit insert mode with jk.
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})

-- C-g as ESC
vim.api.nvim_set_keymap('n', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('i', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('v', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('s', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('x', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('c', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('o', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('l', '<C-g>', '<ESC>', {silent = true})
vim.api.nvim_set_keymap('t', '<C-g>', '<ESC>', {silent = true})

-- Quick save.
vim.api.nvim_set_keymap('n', '<Leader>fw', ':w<CR>', {silent = true})

-- Toggle between buffesr.
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<Leader>ff', ':Files<CR>',{})
vim.api.nvim_set_keymap('n', '<Leader>bs', ':Buffers<CR>',{})
vim.api.nvim_set_keymap('n', '<Leader>ps', ':Rg<CR>', {noremap = true})
