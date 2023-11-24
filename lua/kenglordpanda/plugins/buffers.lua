return {
	{
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.4",
			dependencies = { "nvim-lua/plenary.nvim" },
		},
	},
	{
		"stevearc/oil.nvim",
		use_defaults_keymaps = false,
		opts = {

			vim.keymap.set("n", "<Leader>o", ":Oil<cr>", {desc = "Open Oil File Explorer"}),
			keymaps = {
				["g?"] = "actions.show_help",
				["<CR>"] = "actions.select",
				["ov"] = "actions.select_vsplit",
				["<C-h>"] = "actions.select_split",
				["<C-t>"] = "actions.select_tab",
				["pv"] = "actions.preview",
				["ff"] = "actions.close",
				["<C-l>"] = "actions.refresh",
				[".."] = "actions.parent",
				["cw"] = "actions.open_cwd",
				["`"] = "actions.cd",
				["~"] = "actions.tcd",
				["gs"] = "actions.change_sort",
				["gx"] = "actions.open_external",
				["g."] = "actions.toggle_hidden",
				["g\\"] = "actions.toggle_trash",
			},
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
}
