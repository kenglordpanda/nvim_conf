require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "pyright", "gopls"}
}
local lspconfig = require "lspconfig"
local lsps = {"lua_ls", "pyright", "gopls", "marksman"}
for _ , lsp in ipairs(lsps) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
