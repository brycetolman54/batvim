vim.keymap.set({ "i", "v" }, "jk", "<esc>", { noremap = true, desc = "exit to normal mode" })

vim.keymap.set({ "i", "v" }, "<localleader>w", "<esc>:w<cr>", { noremap = true, desc = "save" })
vim.keymap.set({ "i", "v" }, "<localleader>x", "<esc>:x<cr>", { noremap = true, desc = "save and exit" })
vim.keymap.set({ "i", "v" }, "<localleader>q", "<esc>:q!<cr>", { noremap = true, desc = "exit no save" })

vim.keymap.set("n", "q", ":q!<cr>", { noremap = true, desc = "quit" })
vim.keymap.set("n", "e", function()
  local fname = vim.fn.input("File to open: ")
  if fname ~= "" then
    vim.cmd("e " .. fname)
  end
end, { desc = "Open file" })
