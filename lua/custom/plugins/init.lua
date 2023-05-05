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

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Navigate between panes
-- Map ctrl + ~ to switch to the right panel
vim.api.nvim_set_keymap('n', '⚓', '<C-W>l', { noremap = true })
vim.api.nvim_set_keymap('n', '™', '<C-W>h', { noremap = true })
vim.api.nvim_set_keymap('n', '®', '<C-W>k', { noremap = true })
vim.api.nvim_set_keymap('n', 'ſ', '<C-W>j', { noremap = true })

-- Map ctrl + ~ to switch resize verticaly pane +5
vim.api.nvim_set_keymap('n', '˙', '<C-W>5>', { noremap = true })
vim.api.nvim_set_keymap('n', 'ᵉ', '<C-W>5<', { noremap = true })

return {}
