vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ed", vim.cmd.Ex) -- While in normal mode, if I press leader pv, exec the following. ed = escape dir
vim.keymap.set("n", "<leader>..", vim.cmd.bnext) -- While in normal mode, if I press leader pv, exec the following. ed = escape dir
vim.keymap.set("n", "<leader>,,", vim.cmd.bprev) -- While in normal mode, if I press leader pv, exec the following. ed = escape dir
