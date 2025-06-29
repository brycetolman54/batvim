vim.keymap.set("o", "p", "i(", { noremap = true, desc = "parameters" })
vim.keymap.set("o", "F", ":<c-u>normal! 0f(hviw<cr>", { noremap = true, desc = "function name" })
vim.keymap.set("o", "b", ":<c-u>/return<cr>:noh<cr>", { noremap = true, desc = "body" })
