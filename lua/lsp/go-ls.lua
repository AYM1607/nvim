local lspconfig = require "lspconfig"
lspconfig.gopls.setup {
  on_attach = function(client, bufnr)
    require "lsp_signature".on_attach({
        bind = true,
        -- floating_window = true,
        --hint_enable = true,
        fix_pos = true,
        use_lspsaga = true,
        handler_opts = {
          border = "rounded"   -- double, single, shadow, none
        },
      })
  end,
  cmd = {"gopls", "serve"},
  settings = {
    autostart = true,
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  autostart = true,
  root_dir = lspconfig.util.root_pattern(".git","go.mod"),
  init_options = {usePlaceholders = true, completeUnimported = true},
}


------ Configre vim-go
-- Disable autocomplete since we already have it with native lsp.
vim.g.go_code_completion_enabled = 0
-- Disable gopls for the same reasons as above.
vim.g.go_gopls_enabled = 0

-- Simplify code when formatting.
vim.g.go_fmt_command = 'gofmt'
vim.g.go_fmt_options = {
  gofmt = '-s',
}

vim.g.go_imports_mode = 'goimports'

-- Could confilg with lsp saga, should experiment.
vim.g.go_doc_keywordprg_enabled = 0

-- Use my own universal mappings for lsp.
vim.g.go_def_mapping_enabled = 0

-- Use globally installed binaries first. (gopls) installed through brew.
vim.g.go_search_bin_path_first = 0

-- When auto-creating a template file, use the package rather than a file.
vim.g.go_template_use_pkg = 1

-- Configure folding.
-- vim.cmd("autocmd FileType go setlocal foldmethod=syntax")
-- vim.g.go_fmt_experimental = 1

-- Use a ruler for go files.
vim.cmd("autocmd FileType go setlocal colorcolumn=80")
-- Automatically add comment symbol on next line and wrap it.
vim.cmd("autocmd FileType go setlocal fo+=c fo+=r")

-- Highlights.
vim.g.go_highlight_operators = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
