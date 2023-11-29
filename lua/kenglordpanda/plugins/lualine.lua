return {
	{
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		opts = {},
		config = function(_, opts)
			require("lualine").setup(opts)
		end,
	},
}
