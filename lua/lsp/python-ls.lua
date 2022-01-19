require'lspconfig'.pyright.setup{}

-- Autoformat on save.
vim.cmd("autocmd BufWritePre *.py execute ':Black'")

