return {
    {
        -- LSP Config
        "neovim/nvim-lspconfig",
        config = function()
            -- LSP Keymaps
            local opts = { noremap = true, silent = true }
            local bufopts = { noremap = true, buffer = bufnr, silent = true }

            vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
            vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
            vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
            vim.keymap.set("n", "<space>wl", function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end, bufopts)
            vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
            vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
            vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
            vim.keymap.set("n", "<space>f", function()
                vim.lsp.buf.format({ async = true })
            end, bufopts)
        end,
    },

    {
        "williamboman/mason.nvim",
        opts = true
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            })
        end,
    },

}
