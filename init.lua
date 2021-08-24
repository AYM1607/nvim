if (vim.api.nvim_eval('exists("g:vscode")')) then
    require('settings')
    require('keymappings')
else
    require('nv-globals')
    require('plugins')
    require('colorscheme')
    require('settings')
    require('keymappings')

    -- LSP
    require('lsp')
    require('lsp.typescript-ls')
    require('lsp.python-ls')
    require('lsp.lua-ls')
    require('lsp.elixir-ls')
    require('lsp.go-ls')

    -- Completion
    require('nv-compe')

    -- Function signatures
    require('lsp_signature')

    require('nv-prettier')
end
