local nf = require("notify")

vim.notify = require("notify")

nf.setup({
  stages = "fade_in_slide_out",
  timeout = 2000,
  top_down = false,
  position = "bottom-right",
})

vim.keymap.set("n", "<leader>nd", function()
  nf.dismiss()
end, { noremap = true, desc = "dismiss notifications" })
