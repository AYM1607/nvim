vim.api.nvim_set_option('background', 'dark')
vim.api.nvim_set_option('termguicolors', true)

-- colorscheme
vim.cmd([[
  colorscheme palenight
  highlight ColorColumn ctermbg=0 guibg=grey
  hi CurrentWord guibg=#444444
  hi CurrentWordTwins guibg=#606060
  hi CursorLine guibg=#32384d
]])

-- BG color is #282D3F
