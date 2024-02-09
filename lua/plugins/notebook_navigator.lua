local is_windows = function()
  return vim.fn.has("win32") == 1
end

local maybe_init_image_nvim = function()
  if is_windows() then
    return {}
  else
    return {
      "3rd/image.nvim",
      opts = {
        backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
        integrations = {}, -- do whatever you want with image.nvim's integrations
        max_width = 100, -- tweak to preference
        max_height = 12, -- ^
        max_height_window_percentage = math.huge, -- this is necessary for a good experience
        max_width_window_percentage = math.huge,
        window_overlap_clear_enabled = true,
        window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp" }, -- render image files as images when opened
      },
      version = "1.1.0",
    }
  end
end

return {
  {
    "GCBallesteros/NotebookNavigator.nvim",
    keys = {
      {
        "]h",
        function()
          require("notebook-navigator").move_cell("d")
        end,
      },
      {
        "[h",
        function()
          require("notebook-navigator").move_cell("u")
        end,
      },
      { "<LocalLeader>X", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
      { "<LocalLeader>x", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
    },
    dependencies = {
      "echasnovski/mini.comment",
      -- "hkupty/iron.nvim", -- repl provider
      -- "akinsho/toggleterm.nvim", -- alternative repl provider
      -- "benlubas/molten-nvim", -- alternative repl provider
      "anuvyklack/hydra.nvim",
    },
    event = "VeryLazy",
    config = function()
      local nn = require("notebook-navigator")
      nn.setup({ activate_hydra_keys = "<leader>h" })
    end,
  },
  {
    "GCBallesteros/jupytext.nvim",
    opts = {},
    lazy = false,
  },
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    init = function()
      if is_windows() then
        vim.g.molten_image_provider = "none"
      else
        vim.g.molten_image_provider = "image.nvim"
      end
      vim.g.molten_output_win_max_height = 20
    end,
  },
  maybe_init_image_nvim(),
}
