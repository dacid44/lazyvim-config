return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "InsertLeave", "TextChanged" },
  opts = {
    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = {},
      cancel_defer_save = {},
    },
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")

      -- don't save for notebook file types
      if utils.not_in(fn.getbufvar(buf, "&filetype"), { "notebook", "ipynb", "quarto", "qmd" }) then
        return true
      end
      return false
    end,
  },
}
