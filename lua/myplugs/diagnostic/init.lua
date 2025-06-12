require("myplugs.diagnostic.rust")

vim.diagnostic.config({ virtual_text = true }) -- show errors in virtual text
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
  end,
}) -- open a diagnostic window with errors
