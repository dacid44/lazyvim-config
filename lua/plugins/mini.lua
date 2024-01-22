return {
  {
    "echasnovski/mini.hipatterns",
    event = "VeryLazy",
    dependencies = { "GCBallesteros/NotebookNavigator.nvim" },
    opts = function()
      local nn = require("notebook-navigator")

      local opts = { highlighters = { cells = nn.minihipatterns_spec } }
      return opts
    end,
  },
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    dependencies = { "GCBallesteros/NotebookNavigator.nvim" },
    opts = function()
      local nn = require("notebook-navigator")

      local opts = { custom_textobjects = { h = nn.miniai_spec } }
      return opts
    end,
  },
}
