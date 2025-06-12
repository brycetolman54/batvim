-- set up the braces
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "rust" },
  callback = function()
    vim.cmd(":iab <buffer> {} {<cr>j<cr><esc>Hi};<esc>kLhi<del><del>")
  end,
})
