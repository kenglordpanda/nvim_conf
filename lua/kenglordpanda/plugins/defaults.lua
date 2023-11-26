-- this file is for any plugin that will get configred in configs/
-- also can be used just for default settings
return {

    {
        "ribru17/bamboo.nvim",
        lazy = false,
    },

    {
        "nvim-lua/plenary.nvim",
    },

    {
        "lewis6991/gitsigns.nvim",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.4",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "ThePrimeagen/harpoon",
        lazy = true,
    },
    {
        "desdic/telescope-rooter.nvim",
    },
    {
        "numToStr/Comment.nvim",
        opts = {},
        lazy = false,
        event = "VeryLazy",
    },
    {
        "rafamadriz/friendly-snippets",
        lazy = true,
    },

    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = "v2.*",
        build = "make install_jsregexp",
        lazy = true,
    },
    {
        "ggandor/leap.nvim",
        dependencies = { "tpope/vim-repeat" },
        lazy = true,
    },
}
