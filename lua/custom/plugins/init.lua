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

-- Set term=xterm
vim.env.TERM = 'xterm'
vim.opt.termguicolors = true



vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Navigate between panes
-- Map ctrl + ~ to switch to the right panel
vim.api.nvim_set_keymap('n', '⚓', '<C-W>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-W>l', { noremap = true })

vim.api.nvim_set_keymap('n', '™', '<C-W>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Left>', '<C-W>h', { noremap = true })

vim.api.nvim_set_keymap('n', '®', '<C-W>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-W>k', { noremap = true })

vim.api.nvim_set_keymap('n', 'ſ', '<C-W>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-W>j', { noremap = true })

-- Resize pane in order to nvim_win_get_position
local change_width = function(d)
  local v = vim.api

  -- Lua version of a ternery operator
  d = d and d or "left"

  local lr = d == "left" or d == "right"
  -- 5 for left right, 3 for up down
  local amt = lr and 5 or 3

  local pos = v.nvim_win_get_position(0)
  local w = v.nvim_win_get_width(0)
  local h = v.nvim_win_get_height(0)

  if lr then
    amt = pos[2] == 0 and -amt or amt
  else
    amt = pos[1] == 0 and -amt or amt
  end

  w   = (d == "left") and (w + amt) or (w - amt)
  h   = (d == "up")   and (h + amt) or (h - amt)

  if lr then
    v.nvim_win_set_width(0, w)
  else
    v.nvim_win_set_height(0, h)
  end

end

vim.keymap.set({"n"}, "<C-S-Left>", function()
  change_width("left")
end)
vim.keymap.set({"n"}, "<C-S-Right>", function()
  change_width("right")
end)

vim.keymap.set({"n"}, "<C-S-Up>", function()
  change_width("up")
end)
vim.keymap.set({"n"}, "<C-S-Down>", function()
  change_width("down")
end)

-- Move pane right with crtl + alt + shift + right
vim.api.nvim_set_keymap('n', '<C-A-S-Right>', '<C-W>L', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-A-S-Left>', '<C-W>H', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-A-S-Up>', '<C-W>K', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-A-S-Down>', '<C-W>J', { noremap = true })

vim.cmd("au BufNewFile,BufRead *.json.jbuilder set ft=ruby")

return {}
