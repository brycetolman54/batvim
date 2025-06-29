vim.keymap.set("o", "in(", ":<c-u>normal! f(vi(<cr>", { noremap = true, desc = "in next parentheses" })
vim.keymap.set("o", "il(", ":<c-u>normal! F)vi(<cr>", { noremap = true, desc = "in last parentheses" })
vim.keymap.set("o", "on(", ":<c-u>normal! f(va(<cr>", { noremap = true, desc = "around next parentheses" })
vim.keymap.set("o", "ol(", ":<c-u>normal! F)va(<cr>", { noremap = true, desc = "around last parentheses" })
