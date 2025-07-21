local lspconfig = require("plugins.configs.lspconfig")

local on_attach = lspconfig.on_attach
local capabilities = lspconfig.capabilities

-- local lspconfig_python = require("lspconfig")

-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"python" },
-- })

-- lspconfig.lspservers.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {
--     "javascript", "javascriptreact", "javascript.jsx", "typescript"
--     , "typescriptreact", "typescript.tsx", "lua", "python"
--   },
-- })
--
-- lspconfig.angularls.setup{}

