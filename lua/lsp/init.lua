vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')

vim.api.nvim_set_keymap('n', '<Leader>lr', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true, silent = true})
vim.cmd('nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>')
