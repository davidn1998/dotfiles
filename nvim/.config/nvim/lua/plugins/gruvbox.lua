return {
	{
		"ellisonleao/gruvbox.nvim", -- Gruvbox dark colorscheme
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("gruvbox")

			vim.api.nvim_create_autocmd("VimEnter", {
				callback = function()
					vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
					vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
				end,
			})
		end,
	},
}
