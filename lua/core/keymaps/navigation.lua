-- moving on the line
vim.keymap.set("n", "H", "0", { noremap = true, desc = "move to start of line" })
vim.keymap.set("n", "L", "$", { noremap = true, desc = "move to end of line" })

-- moving between windows
vim.keymap.set({ "n", "i" }, "<c-j>", "<c-w>j", { noremap = true, desc = "move down a window" })
vim.keymap.set({ "n", "i" }, "<c-k>", "<c-w>k", { noremap = true, desc = "move up a window" })
vim.keymap.set({ "n", "i" }, "<c-h>", "<c-w>h", { noremap = true, desc = "move left a window" })
vim.keymap.set({ "n", "i" }, "<c-l>", "<c-w>l", { noremap = true, desc = "move right a window" })
