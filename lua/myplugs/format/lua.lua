function AsyncLuaFmt()
  local file = vim.api.nvim_buf_get_name(0)
  vim.fn.jobstart({ "stylua", "-f", "/home/bat54/.config/nvim/lua/stylua.toml", file }, {
    on_exit = function()
      vim.schedule(function()
        vim.cmd("edit")
      end)
    end,
  })
end

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.lua",
  callback = AsyncLuaFmt,
})
