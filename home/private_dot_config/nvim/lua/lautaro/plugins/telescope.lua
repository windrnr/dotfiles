return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "plenary"
        },
        config = function()
            require('telescope').setup({
                defaults = {
                    layout_strategy = "bottom_pane",
                    layout_config = {
                        height = 0.25
                    }
                }
            })

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<C-f>', builtin.find_files, {})
            vim.keymap.set('n', '<C-p>', builtin.git_files, {})
            vim.keymap.set('n', '<leader>pws', function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end)
            vim.keymap.set('n', '<leader>pWs', function()
                local word = vim.fn.expand("<cWORD>")
                builtin.grep_string({ search = word })
            end)
            vim.keymap.set('n', '<C-g>', function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)
            vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        end
    },

    -- {
    --     "nvim-telescope/telescope-fzf-native.nvim",
    --     build =
    --     "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
    --     dependencies = {
    --         "plenary"
    --     }
    -- },
}
