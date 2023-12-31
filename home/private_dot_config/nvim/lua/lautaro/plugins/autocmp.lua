return {
	{
		"hrsh7th/cmp-nvim-lsp",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			require("lspconfig")["gopls"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["clangd"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["rust_analyzer"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["pyright"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["tsserver"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["lua_ls"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["jsonls"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["asm_lsp"].setup({
				capabilities = capabilities,
			})

			require("lspconfig")["zls"].setup({
				capabilities = capabilities,
			})

            require("lspconfig")["tailwindcss"].setup({
				capabilities = capabilities,
			})

		end,
	},

	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),

				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},

	{
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
	},

	{
		"saadparwaiz1/cmp_luasnip",
		config = function()
			require("luasnip").setup({
				enable_autosnippets = true,
			})
		end,
	},
}
