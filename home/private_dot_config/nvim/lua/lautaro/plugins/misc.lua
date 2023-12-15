return {
	{
		"windwp/nvim-autopairs",
		opts = true,
	},
	{
		"mattn/emmet-vim",
		"tpope/vim-commentary",
		"p00f/nvim-ts-rainbow",
		"tpope/vim-vinegar",
		"alvan/vim-closetag",
		"AndrewRadev/tagalong.vim",
	},

	{
		"nvim-tree/nvim-web-devicons",
		opts = true,
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"f-person/git-blame.nvim",
	},
	{
		"junegunn/fzf",
		"junegunn/fzf.vim",
		vim.keymap.set("n", "<C-f>", ":Files<CR>", { silent = true, noremap = true }),
		vim.keymap.set("n", "<C-b>", ":Buffers<CR>", { silent = true, noremap = true }),
		vim.keymap.set("n", "<C-s>", ":GFiles?<CR>", { silent = true, noremap = true }),
		vim.keymap.set("n", "<C-d>", ":Commits!<CR>", { silent = true, noremap = true }),
	},
}
