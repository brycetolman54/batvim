vim.opt.wrap = true -- allow wrapping
vim.opt.textwidth = 150 -- break only at 150 char long
vim.opt.linebreak = true -- break only between words

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  callback = function()
    local fo = vim.opt_local.formatoptions:append("t")
  end,
}) -- add t to options for wrapping
