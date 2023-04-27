-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.opt.hlsearch = true

-- Remove trailing spaces
vim.cmd('autocmd BufWritePre * %s/\\s\\+$//e')

-- Diplaying file name in title window
vim.opt.title = true

-- Invisibles
vim.opt.listchars:append({ eol = "$", tab = ">-", trail = "~" , extends = ">" , precedes = "<", space = "␣", nbsp = "•" })
-- vim.opt.list = true

vim.opt.textwidth = 80
vim.opt.colorcolumn = "+1"

return {}
