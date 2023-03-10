-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('lsp-compe')

lsp.ensure_installed = {
    -- Replace these with whatever servers you want to install
    'ansible',
    'bash',
    'sumneko_lua',
  }

lsp.setup()

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')
local cmp_config = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  formatting = {
  format = function(entry, vim_item)
    vim_item.abbr = string.sub(vim_item.abbr, 1, 45)
    return vim_item
  end
}
})

cmp.setup(cmp_config)
