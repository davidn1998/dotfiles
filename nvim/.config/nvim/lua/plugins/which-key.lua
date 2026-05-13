return {
	"folke/which-key.nvim", -- Popup keybindings when leader pressed
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {},
}
