-- move lines
vim.keymap.set("n", "<leader>-", "ddp", { noremap = true, desc = "move line down" })
vim.keymap.set("n", "<leader>_", "ddkP", { noremap = true, desc = "move line up" })

-- change word case
vim.keymap.set("i", "<c-u>", "<esc>viwUi", { noremap = true, desc = "uppercase word" })
vim.keymap.set("n", "<c-u>", "viwU", { noremap = true, desc = "uppercase word" })
