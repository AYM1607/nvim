lspconfig = require "lspconfig"
lspconfig.gopls.setup {
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
  cmd = {"gopls", "serve"},
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  root_dir = lspconfig.util.root_pattern(".git","go.mod"),
  init_options = {usePlaceholders = true, completeUnimported = true},
}

local saga = require 'lspsaga'
saga.init_lsp_saga()

-- Configre vim-go
-- Disable autocomplete since we already have it with native lsp.
vim.g.go_code_completion_enabled = 0
-- Disable gopls for the same reasons as above.
vim.g.go_gopls_enabled = 0

-- Use goimports for both formatting and imports.
vim.g.go_fmt_command = 'goimports'
vim.g.go_imports_mode = 'goimports'

-- Could confilg with lsp saga, should experiment.
vim.g.go_doc_keywordprg_enabled = 0

-- Use my own universal mappings for lsp.
vim.g.go_def_mapping_enabled = 0

-- Use globally installed binaries first. (gopls) installed through brew.
vim.g.go_search_bin_path_first = 0



-- function goimports(timeout_ms)
--   local context = { source = { organizeImports = true } }
--   vim.validate { context = { context, "t", true } }
-- 
--   local params = vim.lsp.util.make_range_params()
--   params.context = context
-- 
--   -- See the implementation of the textDocument/codeAction callback
--   -- (lua/vim/lsp/handler.lua) for how to do this properly.
--   local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
--   if not result or next(result) == nil then return end
--   local actions = result[1].result
--   if not actions then return end
--   local action = actions[1]
-- 
--   -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
--   -- is a CodeAction, it can have either an edit, a command or both. Edits
--   -- should be executed first.
--   if action.edit or type(action.command) == "table" then
--     if action.edit then
--       vim.lsp.util.apply_workspace_edit(action.edit)
--     end
--     if type(action.command) == "table" then
--       vim.lsp.buf.execute_command(action.command)
--     end
--   else
--     vim.lsp.buf.execute_command(action)
--   end
-- end
-- 
-- vim.cmd("autocmd BufWritePre *.go lua goimports(1000)")
