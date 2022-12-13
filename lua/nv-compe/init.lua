vim.o.completeopt = "menuone,noselect"
-- Avoid having a "Pattern not found" message
vim.cmd("set shortmess+=c")

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'always';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = false;
    calc = false;
    vsnip = false; -- Could be used if I want to start using snippets.
    nvim_lsp = true;
    nvim_lua = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}

vim.cmd([[
autocmd FileType ocaml call compe#setup({
\ 'preselect': 'disable'
\ }, 0)
]])

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.comp_jump_if_avail = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  end
end
_G.comp_jump_prev_if_avail = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  end
end
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return vim.fn['compe#confirm']('')
  else
    return t "<Tab>"
  end
end
_G.enter_complete = function()
  if vim.bo.filetype == "ocaml" then
    return t "<CR>"
  elseif vim.fn.pumvisible() == 1 then
    return vim.fn['compe#confirm']('')
  else
    return t "<CR>"
  end
end

vim.api.nvim_set_keymap("i", "<C-n>", "v:lua.comp_jump_if_avail()", {expr = true})
vim.api.nvim_set_keymap("s", "<C-n>", "v:lua.comp_jump_if_avail()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-e>", "v:lua.comp_jump_prev_if_avail()", {expr = true})
vim.api.nvim_set_keymap("s", "<C-e>", "v:lua.comp_jump_prev_if_avail()", {expr = true})
-- The next 4 funtcions don't work if compe doesn't automatically select the first option.
-- meaning  the preselect option has to be set to alwasy.
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "v:lua.enter_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<CR>", "v:lua.enter_complete()", {expr = true})

