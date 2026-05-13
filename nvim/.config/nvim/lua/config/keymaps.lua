vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- =========================
-- GENERAL
-- =========================

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- =========================
-- NEOTREE (FILE EXPLORER)
-- =========================

keymap.set("n", "<leader>ee", function()
	require("neo-tree.command").execute({ toggle = true })
end, { desc = "Toggle Neo-tree" })

keymap.set("n", "<leader>ef", function()
	require("neo-tree.command").execute({ reveal = true })
end, { desc = "Reveal file in Neo-tree" })

-- =========================
-- FOLDING (VIM-NATIVE)
-- =========================

keymap.set("n", "za", "za", { desc = "Toggle fold" })
keymap.set("n", "zc", "zc", { desc = "Close fold" })
keymap.set("n", "zo", "zo", { desc = "Open fold" })
keymap.set("n", "zM", "zM", { desc = "Close all folds" })
keymap.set("n", "zR", "zR", { desc = "Open all folds" })

-- =========================
-- UFO (SMART FOLDING)
-- =========================

local ok, ufo = pcall(require, "ufo")
if ok then
	keymap.set("n", "<leader>zM", function()
		ufo.closeAllFolds()
	end, { desc = "UFO: Close all folds" })

	keymap.set("n", "<leader>zR", function()
		ufo.openAllFolds()
	end, { desc = "UFO: Open all folds" })
end
