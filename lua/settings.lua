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
vim.cmd("highlight ColorColumn ctermbg=0 guibg=grey")
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
