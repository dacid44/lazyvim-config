return {
  options = function()
    vim.g.neovide_scale_factor = 0.8
  end,
  keymaps = function()
    local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1/1.25)
    end)
    vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = 1
    end)
  end,
  autocmds = function()
  end,
}