vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.winhighlight = "Normal:NormalDark"
    vim.cmd("hi NormalDark guibg=#121212")
  end,
})
