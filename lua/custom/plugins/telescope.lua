vim.keymap.set('n', '<C-f>', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = '[S]earch [F]iles' })
return {}
