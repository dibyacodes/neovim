function colorMyVim(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "NormalNC", { background = "none" })
	vim.api.nvim_set_hl(0,"Normal",{background = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat",{background = "none"})
end

colorMyVim()
