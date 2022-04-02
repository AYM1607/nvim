-- Space as leader.
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Exit insert mode with ne.
vim.api.nvim_set_keymap('i', 'en', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'ne', '<ESC>', {noremap = true, silent = true})

-- Remap for colemak-dhm.
-- Left.
vim.api.nvim_set_keymap('', 'm', 'h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', 'h', 'm', {noremap = true, silent = true})
-- Down.
vim.api.nvim_set_keymap('', 'j', 'n', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', 'n', 'j', {noremap = true, silent = true})
-- Up.
vim.api.nvim_set_keymap('', 'k', 'e', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', 'e', 'k', {noremap = true, silent = true})
-- Right.
vim.api.nvim_set_keymap('', 'l', 'i', {noremap = true, silent = true})
vim.api.nvim_set_keymap('', 'i', 'l', {noremap = true, silent = true})

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

-- Move right when in insert mode.
vim.api.nvim_set_keymap("i", '<C-i>', '<Right>', {silent = true})


-- Quick save.
vim.api.nvim_set_keymap('n', '<Leader>fw', ':w<CR>', {silent = true})

-- Toggle between buffers.
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', {noremap = true, silent = true})

-- Find files inside the current folder.
vim.api.nvim_set_keymap('n', '<Leader>ff', '<cmd>Telescope find_files<cr>',{})
-- Find files and folders allowing creation.
vim.api.nvim_set_keymap('n', '<Leader>fb', '<cmd>Telescope file_browser<cr>', {noremap = true})
-- File brosers starting at the cwd.
vim.api.nvim_set_keymap('n', '<Leader>fc', '<cmd>Telescope file_browser path=%:p:h<cr>', {noremap = true})
-- Do a grep search in the current folder.
vim.api.nvim_set_keymap('n', '<Leader>ps', '<cmd>Telescope live_grep<cr>',{})
-- Search among the currently open buffers.
vim.api.nvim_set_keymap('n', '<Leader>bs', '<cmd>Telescope buffers<cr>',{})

------ Trouble
vim.api.nvim_set_keymap("n", "<leader>lwd", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
) -- Mnemonic "lsp workspace diagnostics"
vim.api.nvim_set_keymap("n", "<leader>ldd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
) -- Mnemonic "lsp document diagnostics"
