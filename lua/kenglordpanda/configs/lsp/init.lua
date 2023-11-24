require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "pyright", "gopls"}
}
local lspconfig = require 'lspconfig'
local coq = require 'coq'
local lsps = {"lua_ls", "pyright", "gopls", "marksman"}
for _ , lsp in ipairs(lsps) do
    lspconfig[lsp].setup {
        coq.lsp_ensure_capabilities({
            on_attach = on_attach,
            capabilities = capabilities,
        })
    }
end

require("kenglordpanda.configs.lsp.formatter")
require("kenglordpanda.configs.lsp.keymaps")
