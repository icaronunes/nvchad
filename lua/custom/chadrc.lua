---@type ChadrcConfig 
local M = {}
M.ui = {theme = 'decay'}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

-- Adicione um autocomando para salvar automaticamente o arquivo
vim.cmd([[
  augroup AutoSave
    autocmd!
    autocmd InsertLeave,TextChanged * silent! w
  augroup END
]])

-- Mapeia 'gz' para acionar o comando ':bprev'
vim.opt.list = true
vim.opt.listchars = { trail = "▨", tab = "▸ ", nbsp = "_"}

vim.opt.guicursor = "n:block-Cyan"
vim.opt.guicursor = "i:ver45-Green"

return M

