function cs(color)
	color = color or "github_dark"
	vim.cmd.colorscheme(color)

  -- Transparency - Enabled this for WSL.
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNR", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNR", { bg = "none" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
end

cs()
