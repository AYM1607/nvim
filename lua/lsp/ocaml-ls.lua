require("lsp-format").setup {}
require'lspconfig'.ocamllsp.setup{ on_attach = require("lsp-format").on_attach }

vim.cmd('set rtp^="/home/aym/.opam/cs3110-2023sp/share/ocp-indent/vim"')
