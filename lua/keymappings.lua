local lsp = vim.lsp
local handlers = lsp.handlers
local saga = require('lspsaga')
saga.init_lsp_saga()

-- Space as leader.
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Exit insert mode with ,h.
vim.api.nvim_set_keymap('i', ',h', '<ESC>', {noremap = true, silent = true})

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
vim.api.nvim_set_keymap("i", '<C-l>', '<Right>', {noremap = true, silent = true})

-- Leader window movement.
vim.api.nvim_set_keymap("n", '<Leader>wm', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", '<Leader>wn', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", '<Leader>we', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", '<Leader>wi', '<C-w>l', {noremap = true, silent = true})

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
vim.api.nvim_set_keymap('n', '<Leader>ps', ':Rg<cr>',{})
-- Search among the currently open buffers.
vim.api.nvim_set_keymap('n', '<Leader>bs', '<cmd>Telescope buffers<cr>',{})
-- Code actions.
vim.api.nvim_set_keymap('n', '<Leader>ca', "<Cmd>lua vim.lsp.buf.code_action()<CR>",{silent = true, noremap = true})
vim.api.nvim_set_keymap('x', '<Leader>ca', "<Cmd>lua vim.lsp.buf.range_code_action()<CR>",{silent = true, noremap = true})
-- Flutter commands.
vim.api.nvim_set_keymap('n', '<Leader>fl', "<cmd>lua require('telescope').extensions.flutter.commands()<cr>",{silent = true, noremap = true})


-- Hover doc popup
local pop_opts = { border = "rounded", max_width = 80 }
handlers["textDocument/hover"] = lsp.with(handlers.hover, pop_opts)
handlers["textDocument/signatureHelp"] = lsp.with(handlers.signature_help, pop_opts)

vim.api.nvim_set_keymap('n', '<Leader>lgd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>lgD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>lgr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>lgi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>lr', '<cmd>Lspsaga rename<CR>', {silent = true})
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})

------ Trouble
vim.api.nvim_set_keymap("n", "<leader>lwd", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
) -- Mnemonic "lsp workspace diagnostics"
vim.api.nvim_set_keymap("n", "<leader>ldd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
) -- Mnemonic "lsp document diagnostics"
