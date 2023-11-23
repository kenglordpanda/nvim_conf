
  -- Mappings.
  local opts = { buffer = bufnr, noremap = true, silent = true }
  
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts, "Go to Definition")
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<Leader>wa', vim.lsp.buf.add_workspace_folder, opts)
  vim.keymap.set('n', '<Leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
  vim.keymap.set('n', '<Leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  vim.keymap.set('n', '<Leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, opts)

