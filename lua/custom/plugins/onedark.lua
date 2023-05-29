return { -- Theme inspired by Atom
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'onedark'
    require("onedark").setup({
      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'italic',
        variables = 'none',
        classes = 'bold'
      }
    })
  end
}

