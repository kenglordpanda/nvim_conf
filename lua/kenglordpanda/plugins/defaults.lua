-- this file is for any plugin that will get configred in configs/
-- also can be used just for default settings
return {

	{
		"ribru17/bamboo.nvim",
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
	},

	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "v2.*",
		build = "make install_jsregexp",
	},
	{
		"RRethy/vim-illuminate",
		event = "VeryLazy",
	},
	{
		"ggandor/leap.nvim",
		dependencies = { "tpope/vim-repeat" },
	},
}
