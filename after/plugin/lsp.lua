-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('lsp-compe')

lsp.ensure_installed = {
    -- Replace these with whatever servers you want to install
    'ansible-language-server',
    'ansible-lint',
    'yamlfmt',
    'yamllint',
    'bash-language-server',
    'marksman',
    'sumneko_lua',
  }

lsp.setup()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local cmp_config = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered({
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
      -- winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PMenuThumb,Search:Error"
    }),
    documentation = cmp.config.window.bordered({
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
    }),
  },
  formatting = {
  format = function(entry, vim_item)
    vim_item.abbr = string.sub(vim_item.abbr, 1, 45)
    return vim_item
  end
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

--- cmp.setup(cmp_config)
cmp.setup(cmp_config)
