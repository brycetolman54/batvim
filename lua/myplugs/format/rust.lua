function AsyncRustFmt()
  local file = vim.api.nvim_buf_get_name(0)
  vim.fn.jobstart({ "rustfmt", file }, {
    on_exit = function()
      vim.schedule(function()
        vim.cmd("edit") -- reload buffer after formatting
      end)
    end,
  })
end

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rs",
  callback = AsyncRustFmt,
})
