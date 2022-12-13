-- Comes from the Chris@Machine config.

vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.wrap = false -- Display long lines as just one line
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.number = true -- set numbered lines
vim.wo.cursorline = true -- Enable highlighting of the current line
--vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms

vim.cmd(":set number relativenumber")


vim.cmd("autocmd FileType helm set nofixendofline")
vim.cmd("autocmd FileType yaml set nofixendofline")
vim.cmd("autocmd FileType yml set nofixendofline")
vim.cmd("autocmd BufReadPost * :lua require('gitsigns').setup()")

------ Folding
-- vim.o.foldlevel = 99
-- Persist folds.
-- Ignore errors.
-- vim.cmd([[
--     augroup AutoSaveFolds
--       autocmd!
--       autocmd BufWinLeave * silent! mkview
--       autocmd BufWinEnter * silent! loadview
--     augroup END
-- ]])

-- Show full file path in lightline.
vim.cmd([[
let g:lightline = {
      \ 'colorscheme' : 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'FilenameForLightline',
      \   'gitbranch': 'gitbranch#name'
      \ }
      \ }

function! FilenameForLightline()
  let root = fnamemodify(get(b:, 'gitbranch_path'), ':h:h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
]])

-- Custom command for ripgrep.
vim.cmd([[
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
]])


