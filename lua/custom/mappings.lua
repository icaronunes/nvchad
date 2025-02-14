local M = {}
local map = vim.keymap.set
local api = vim.api

map("n", "ZZ", "<cmd> qa <CR>", { desc = "General Quit Nvim"})
map({ "n", "i" }, "<C-z>", ":undo <CR>", { desc = "General Undo"} )
-- Mapeia 'gz' para acionar o comando ':bprev'
api.nvim_set_keymap('n', 'gz', ':bprev<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', 'gm', ':bnext<CR>', { noremap = true, silent = true })

return M
