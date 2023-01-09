local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") }); -- Snagged from thePrimagen, but it's useful for searching for text mentions across many files. REQUIRES RIPGREP TO BE INSTALLED.
end)
