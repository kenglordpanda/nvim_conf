-- If wanting to configured further make a [name of plugin].lua file in the config folder


local plugins = {

{
  "nvim-lua/plenary.nvim",
},
-- searching plugins 

{
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end
},
{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
},


--theme stuff

{ 
    "savq/melange-nvim",
},
-- treesitter stuff

{
    "nvim-treesitter/nvim-treesitter",
},

-- lsp stuff

{
    "jose-elias-alvarez/null-ls.nvim",
},

{
  "williamboman/mason.nvim",
},

{
    "neovim/nvim-lspconfig",
},
{

},
-- lualine esque stuff

{
  "MunifTanjim/nougat.nvim",
},

-- buffer management and file marking
{
    "j-morano/buffer_manager.nvim",
},


-- other stuff

{
  -- amongst your other plugins
  {'akinsho/toggleterm.nvim', version = "*", config = true}
},

{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
},

-- which key stuff

{
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},

}

require("lazy").setup(plugins)

-- note to future me:
-- add files in configs/*.lua in order to do more than default

