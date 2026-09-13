---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'bearded-arc'}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

-- Adicione um autocomando para salvar automaticamente o arquivo
-- vim.cmd([[
--   augroup AutoSave
--     autocmd!
--     autocmd InsertLeave,TextChanged * silent! w
--   augroup END
-- ]])
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent write")
    end
  end,
})


-- Mapeia 'gz' para acionar o comando ':bprev'
vim.opt.list = true
vim.opt.listchars = { trail = "▨", tab = "▸ ", nbsp = "_"}

vim.opt.guicursor = "n:block-Cyan"
vim.opt.guicursor = "i:ver45-Green"

return M

