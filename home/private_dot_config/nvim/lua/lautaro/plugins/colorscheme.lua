return {
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox-material",
		config = function()
			-- vim.cmd("colorscheme gruvbox-material")
		end,
	},
    {
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		config = function()
            require("gruvbox").setup({
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = true,
            italic = {
                strings = true,
                emphasis = true,
                comments = true,
                operators = false,
                folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
            })
            vim.cmd("colorscheme gruvbox")
		end,
	},

    {
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		config = function()
			-- vim.cmd("colorscheme kanagawa")
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				bold_vert_split = false,
				dim_nc_background = false,
				disable_background = false,
				disable_float_background = false,
				disable_italics = false,
				groups = {
					background = "base",
					background_nc = "_experimental_nc",
					panel = "surface",
					panel_nc = "base",
					border = "highlight_med",
					comment = "muted",
					link = "iris",
					punctuation = "subtle",

					error = "love",
					hint = "iris",
					info = "foam",
					warn = "gold",

					headings = {
						h1 = "iris",
						h2 = "foam",
						h3 = "rose",
						h4 = "gold",
						h5 = "pine",
						h6 = "foam",
					},
				},
				highlight_groups = {
					ColorColumn = { bg = "rose" },
					CursorLine = { bg = "foam", blend = 10 },
				},
			})
			-- vim.cmd("colorscheme rose-pine")
		end,
	},
}
