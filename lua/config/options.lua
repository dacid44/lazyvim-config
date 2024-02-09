-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false

if vim.fn.has("win32") == 1 then
  vim.g.python_host_prog = "C:\\Users\\dacid\\miniconda3\\envs\\neovim\\python.exe"
  vim.g.python3_host_prog = "C:\\Users\\dacid\\miniconda3\\envs\\neovim\\python.exe"
  package.path = package.path .. ";" .. vim.fn.expand("C:\\Users\\dacid\\AppData\\Roaming\\luarocks\\share\\lua\\5.1\\?\\init.lua;")
  package.path = package.path .. ";" .. vim.fn.expand("C:\\Users\\dacid\\AppData\\Roaming\\luarocks\\share\\lua\\5.1\\?.lua;")
elseif (vim.fn.has("unix") == 1 and vim.fn.hostname() == "DACID44-LAPTOP2") then
  vim.g.python_host_prog = "/home/dacid44/Python/neovim/bin/python3.11"
  vim.g.python3_host_prog = "/home/dacid44/Python/neovim/bin/python3.11"
  -- package.path = package.path .. ";" .. vim.fn.expand("/home/dacid44/.luarocks/share/lua/5.1/?/init.lua;")
  -- package.path = package.path .. ";" .. vim.fn.expand("/home/dacid44/.luarocks/share/lua/5.1/?.lua;")
  package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
  package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
end

if vim.g.neovide == true then
  require("config/neovide").options()
end
