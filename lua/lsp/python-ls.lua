require'lspconfig'.pyright.setup{
    cmd = {DATA_PATH .. "/lspinstall/python/node_modules/.bin/pyright-langserver", "--stdio"},
}

-- Autoformat on save.
vim.cmd("autocmd BufWritePre *.py call Black()")

