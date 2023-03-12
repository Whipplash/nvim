function cs(color)
	color = color or "monokai"
	vim.cmd.colorscheme(color)

  -- Transparency - Enabled this for WSL.
--  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

cs()
