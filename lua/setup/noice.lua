local nc = require("noice")

nc.setup({
  presets = {
    command_palette = true,
    lsp_doc_border = true,
  },
  views = {
    cmdline_popup = {
      position = {
        row = "50%",
        col = "50%",
      },
      size = {
        width = 60,
        height = "auto",
      },
    },
  },
})
