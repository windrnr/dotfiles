vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.md", "*.txt", "*.tex" },
	command = "set linebreak | set wrap",
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*.c" },
	command = "set shiftwidth=8 | set tabstop=8",
})
