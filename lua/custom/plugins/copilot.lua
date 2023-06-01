if vim.g.DISABLE_COPILOT == nil then
  return {
    "zbirenbaum/copilot.lua",
    config = function()
      require('copilot').setup({
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "right", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<S-Right>",
            accept_word = false,
            accept_line = false,
            next = "<S-Up>",
            prev = "<S-Down>",
            dismiss = "<S-Left>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 16.x
        server_opts_overrides = {
          trace = "verbose",
      settings = {
        advanced = {
          listCount = 10, -- #completions for panel
          inlineSuggestCount = 10, -- #completions for getCompletions
        }
          }
      }})
    end
  }
else
  return {}
end
