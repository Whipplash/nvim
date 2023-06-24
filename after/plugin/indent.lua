vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ea4a5a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#34d058 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#ffea7f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#2188ff gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#b392f0 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#39c5cf gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true
}
