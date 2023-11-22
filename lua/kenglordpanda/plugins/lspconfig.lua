return {

{
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile'},
    dependencies = {
	"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
	},
},

{
    "jose-elias-alvarez/null-ls.nvim",
},
}
