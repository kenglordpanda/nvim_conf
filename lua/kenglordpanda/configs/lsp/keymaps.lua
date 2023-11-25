-- Mappings.
local nmap = function(lhs, rhs, desc)
	local opts = { buffer = bufnr, noremap = true, silent = true, desc = desc }
	vim.keymap.set("n", lhs, rhs, opts)
end

nmap("gD", vim.lsp.buf.declaration, "Go to declaration")
nmap("gd", vim.lsp.buf.definition, "Go to definition")
nmap("K", vim.lsp.buf.hover, "LSP Hover")
nmap("gi", vim.lsp.buf.implementation, "LSP Implementation")
nmap("<C-k>", vim.lsp.buf.signature_help, "Signature Help")
nmap("<Leader>wa", vim.lsp.buf.add_workspace_folder, "Add workspace folder")
nmap("<Leader>wr", vim.lsp.buf.remove_workspace_folder, "Remove workspace folder")
nmap("<Leader>wl", function()
	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, "List workspace folders")
nmap("<Leader>D", vim.lsp.buf.type_definition, "LSP Typedef")
nmap("<Leader>rn", vim.lsp.buf.rename, "LSP Rename")
nmap("gr", vim.lsp.buf.references, "LSP References")
nmap("<Leader>e", vim.diagnostic.open_float, "Open floating diagnostic")
nmap("[d", vim.diagnostic.goto_prev, "Go to previous diagnostic")
nmap("]d", vim.diagnostic.goto_next, "Go to new diagnostic")
nmap("<Leader>q", vim.diagnostic.setloclist, "Open diagnostic list")

-- formatter

vim.keymap.set("n", "<Leader>fo", ":Format<CR>", { desc = "LSP Format" })
