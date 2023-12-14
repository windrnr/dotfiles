return {
	-- {
	-- 	"rust-lang/rust.vim",
	-- 	ft = "rust",
	-- 	init = function()
	-- 		vim.g.rustfmt_autosave = 1
	-- 	end,
	-- },

	{
		"cdelledonne/vim-cmake",
		"airblade/vim-rooter",
	},

	{
		"roobert/tailwindcss-colorizer-cmp.nvim",
		config = function()
			require("tailwindcss-colorizer-cmp").setup({
				color_square_width = 2,
			})
		end,
	},

	{
		"folke/trouble.nvim",
		enabled = true,
		opts = { use_diagnostic_signs = true },
		config = function()
			vim.keymap.set("n", "T", ":TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
		end,
	},
}
