-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "<C-z>", "<cmd>undo<cr>", { desc = "undo" })

if vim.g.neovide == true then
  require("config/neovide").keymaps()
end