require'lspconfig'.tsserver.setup{
    on_attach = function(client, bufnr)
    require "lsp_signature".on_attach({
        bind = false,
        -- floating_window = true,
        --hint_enable = true,
        fix_pos = true,
        use_lspsaga = true,
        --handler_opts = {
        --  border = "single"   -- double, single, shadow, none
        --},
      })
    end,
    cmd = {DATA_PATH .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = require('lspconfig/util').root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")
}
