vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.bo.makeprg = "cargo build"
    vim.bo.errorformat = "%f:%l:%c: %m"
  end,
})
