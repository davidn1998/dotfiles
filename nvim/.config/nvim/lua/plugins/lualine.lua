return {
	{
		"nvim-lualine/lualine.nvim", -- Status line at bottom of window
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "gruvbox",
					icons_enabled = true,
				},
			})
		end,
	},
}
