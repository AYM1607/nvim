local elixir_ls_binary = "/Users/aym/.config/nvim/lang-srvrs/elixir-ls/language_server.sh"

require'lspconfig'.elixirls.setup{
    -- Unix
    cmd = {elixir_ls_binary};
}
