require("which-key").setup({
  preset = "modern",
  plugins = {
    spelling = {
      suggestions = 5,
    },
  },
  win = {
    no_overlap = false,
    title_pos = "center",
    wo = {
      winblend = 50,
    },
  },
})
