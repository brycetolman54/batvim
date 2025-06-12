vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.cmd(":iab <buffer> fmn fn main() {<cr>j<cr>}<esc>kLa<bs><esc>xa")
  end,
})
