-- Surligner brièvement le texte copié
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Surligner le texte copié",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
	end,
})

-- Retirer les espaces en fin de ligne avant sauvegarde
vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Nettoyer les espaces en fin de ligne",
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

-- Revenir à la dernière position connue dans le fichier
vim.api.nvim_create_autocmd("BufReadPost", {
	desc = "Revenir à la dernière position d'édition",
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})
