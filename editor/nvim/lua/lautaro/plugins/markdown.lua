return {
    {
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        -- build = "cd app && yarn install",
        build = ":call mkdp#util#install()",
        keys = {
        {"<C-L>", ":MarkdownPreviewToggle<CR>", desc= "Markdown Toggle" },
        },
    },

    {
        'junegunn/limelight.vim',
    },

    {
        'junegunn/goyo.vim'
    },

    {
        'godlygeek/tabular'
    },

    {
        'vim-pandoc/vim-pandoc-syntax'
    },

    {
        'vim-pandoc/vim-pandoc'
    },

    {

    }
};
