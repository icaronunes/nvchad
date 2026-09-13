return {
  on_attach = function(client, bufnr)
    -- Teclas para navegação
    local opts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  end,
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
}
