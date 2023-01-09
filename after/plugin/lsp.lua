-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed = {
    -- Replace these with whatever servers you want to install
    'ansible',
    'bash',
    'sumneko_lua',
  }

lsp.setup()
