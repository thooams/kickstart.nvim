return { -- Set lualine as statnordicusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`,
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        -- theme = 'OceanicNext',
        theme = 'onedark',
        component_separators = '|',
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {
          { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { 'fileformat' },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = { "neo-tree" }
    }
  end
}

