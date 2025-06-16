require("language.diagnostic.rust")

vim.diagnostic.config({ virtual_text = true }) -- show errors in virtual text
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      border = "double",
      source = "always",
      header = "Errors",
      prefix = "",
      focusable = true,
      style = "minimal",
      winblend = 100,
      max_width = 40,
      max_height = 8,
      format = function(d)
        return d.message
      end,
    })
  end,
}) -- open a diagnostic window with errors
