require('lualine').setup {
    options = {
        disabled_filetypes = { "dashboard" },
        globalstatus = true,
        section_separators = { left = ' ', right = ' ' },
        component_separators = { left = '', right = ''},
        theme = "auto",
    },
    extensions = {
        "toggleterm",
        "nvim-tree"
    },
    sections = {
    lualine_a = {
      { 'mode',
        icon = { ' ' },
      },
    },
    lualine_b = {'ctime'},
    lualine_c = {
      { 'branch',
        icon = {''},
        separator = ' ',
      },
      { separator = ' ',
        icon = {''}
      },
      { 'diff',
        colored = true,
        symbols = {
          added = ' ',
          modified = ' ',
          removed = ' '
      },
          diff_color = {}
      },
    },
    lualine_x = {
      { 'diagnostics',
        sources = { 'nvim_diagnostic' },
        separator = '',
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = '󱤅 ',
          other = '󰠠 ',
        },
        diagnostics_color = {},
        colored = true,
      },
    },
    lualine_y = {
        { 'filetype',
          icon = {'🕐', align = 'left',
          color = { gui = 'bold' }}},
    },
    lualine_z = {
        { 'location',
          icon = { '', align = 'left',}
        },
        { 'progress',
          icon = { '', align = 'left',},
          separator = { right = '█', left = { '' } }
        }
      },
    }
}
