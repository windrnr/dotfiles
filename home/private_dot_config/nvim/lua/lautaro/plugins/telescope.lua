return {
	{
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "bottom_pane",
					layout_config = { height = 0.2 },
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			-- vim.keymap.set("n", "<C-b>", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fa", builtin.builtin, {})

			require("telescope").load_extension("fzf")
			require("telescope").load_extension("file_browser")
		end,
		-- vim.api.nvim_set_keymap(
		-- 	"n",
		-- 	"<C-f>",
		-- 	":Telescope file_browser path=%:p:h select_buffer=true <CR>",
		-- 	{ noremap = true, silent = true }
		-- ),
	},
	{
		"ThePrimeagen/harpoon",
		config = function()
			vim.keymap.set("n", "|", require("harpoon.mark").add_file, {})
			vim.keymap.set("n", "<leader>m", require("harpoon.ui").toggle_quick_menu, {})
			vim.keymap.set("n", "e", require("harpoon.ui").nav_next, {})
		end,
	},
}
