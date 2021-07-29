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

-- Find files inside the current folder.
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<cr>',{})
-- Find files and folders allowing creation.
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope file_browser<cr>',{})
-- Do a grep search in the current folder.
vim.api.nvim_set_keymap('n', '<Leader>ps', '<cmd>Telescope live_grep<cr>',{})
-- Search among the currently open buffers.
vim.api.nvim_set_keymap('n', '<Leader>bs', '<cmd>Telescope buffers<cr>',{})
