vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.wrap = false

-- Colors
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})

-- Tree-sitter folding
vim.opt.foldcolumn = "1" -- show fold column
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
