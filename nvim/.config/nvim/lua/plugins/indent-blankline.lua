return {
	"lukas-reineke/indent-blankline.nvim", -- Visual indentation guides
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	opts = {
		indent = { char = "┊" },
	},
}
