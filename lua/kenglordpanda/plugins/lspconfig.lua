return {

	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPre", "BufNewFile" },
	},

	{
		"williamboman/mason.nvim",
	},

	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function(_, opts)
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					go = { "gofumpt", "goimports", "goimports-reviser" },
					cpp = { "clang-format" },
					markdown = { "markdownlint" },
					csharp = { "csharpier" },
					javascript = { "prettierd" },
					html = { "prettierd" },
					css = { "prettierd" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
			})
		end,
	},
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require("lint")
			lint.linters_by_ft = {
				markdown = { "markdownlint" },
				go = { "golangci-lint", "gospel" },
				cpp = { "cpplint" },
				lua = { "luacheck" },
				python = { "flake8" },
				javascript = { "eslint_d" },
				css = { "stylelint" },
			}
			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					require("lint").try_lint()
				end,
			})
		end,
	},
}
