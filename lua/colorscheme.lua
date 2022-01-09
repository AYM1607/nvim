vim.api.nvim_set_option('background', 'dark')
vim.api.nvim_set_option('termguicolors', true)

-- vim_current_word
vim.cmd([[
  colorscheme palenight
  highlight ColorColumn ctermbg=0 guibg=grey
  hi CurrentWord guibg=#444444
  hi CurrentWordTwins guibg=#606060
]])
