vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "Start",
  callback = function()
    vim.opt_local.winhighlight = "Normal:StartDark"
    vim.cmd("hi StartDark guibg=#000000")
  end,
})
