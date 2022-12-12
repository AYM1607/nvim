require("lsp-format").setup {}
require'lspconfig'.ocamllsp.setup{ on_attach = require("lsp-format").on_attach }
