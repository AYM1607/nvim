local elixir_ls_binary = "/home/aym/.config/nvim/lang-srvrs/elixir-ls/language_server.sh"

require'lspconfig'.elixirls.setup{
    cmd = { elixir_ls_binary };
}

vim.api.nvim_command('autocmd BufWritePost *.ex :lua vim.lsp.buf.format()')
vim.api.nvim_command('autocmd BufWritePost *.exs :lua vim.lsp.buf.format()')
