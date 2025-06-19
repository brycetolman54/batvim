vim.keymap.set("t", "jk", "<c-\\><c-n>:bd!<cr>:q!<cr>", { noremap = true, desc = "exit to normal mode", silent = true })

-- toggle terminal window
vim.keymap.set({ "n", "i", "v" }, "ttm", function()
  vim.cmd("bot 10split | terminal")
  vim.cmd("startinsert")
end, { noremap = true, desc = "open terminal mode" })
