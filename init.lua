require('settings')
require('nv-globals')
require('plugins')
require('colorscheme')
require('settings')

-- LSP
require('lsp')
require('lsp.typescript-ls')
require('lsp.python-ls')
require('lsp.lua-ls')
require('lsp.elixir-ls')
require('lsp.go-ls')
require('lsp.arduino-ls')
require('lsp.flutter-ls')

-- Completion
require('nv-compe')

require('nv-prettier')

require('nv-telescope')

-- Set up keymaps after everything is configured.
require('keymappings')
