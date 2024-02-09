return {
  "Canop/nvim-bacon",
  keys = {
    { "!", ":BaconLoad<CR>:w<CR>:BaconNext<CR>", desc = "Bacon next item"},
    { ",", ":BaconList<CR>", desc = "Bacon previous item"},
  },
  ft = "rust",
}
