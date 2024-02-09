-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "<C-z>", "<cmd>undo<cr>", { desc = "undo" })

local Util = require("lazyvim.util")
local bacon = function()
  Util.terminal({ "bacon" }, { cwd = Util.root() })
  map("t", "q", "<cmd>close<cr>", { desc = "Hide bacon", buffer = true })
  map("t", "<C-b>", "<cmd>close<cr>", { desc = "Hide bacon", buffer = true })
end
map("n", "<C-b>", bacon, { desc = "Show bacon" })

if vim.g.neovide == true then
  require("config/neovide").keymaps()
end
