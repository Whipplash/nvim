vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.mouse = "nv"
vim.opt.wrap = false
vim.opt.foldlevelstart = 20
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = ""
vim.opt.scrolloff = 10
vim.opt.colorcolumn = "120"
vim.opt.signcolumn = "yes"
vim.notify = require("notify")
vim.opt.termguicolors = true
vim.cmd 'autocmd BufRead,BufNewFile *.yml set filetype=yaml.ansible'
-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
