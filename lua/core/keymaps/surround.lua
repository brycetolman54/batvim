-- normal mode
vim.keymap.set("n", '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel', { noremap = true, desc = "add double quotes" })
vim.keymap.set("n", "<leader>'", "viw<esc>a'<esc>bi'<esc>lel", { noremap = true, desc = "add single quotes" })
vim.keymap.set("n", "<leader>(", "viw<esc>a)<esc>bi(<esc>lel", { noremap = true, desc = "add parentheses" })
vim.keymap.set("n", "<leader>{", "viw<esc>a}<esc>bi{<esc>lel", { noremap = true, desc = "add braces" })
vim.keymap.set("n", "<leader>[", "viw<esc>a]<esc>bi[<esc>lel", { noremap = true, desc = "add brackets" })
vim.keymap.set("n", "<leader><", "viw<esc>a><esc>bi<<esc>lel", { noremap = true, desc = "add angle brackets" })
vim.keymap.set("n", "<leader>x", "viw<esc>a<del><esc>bi<bs><esc>lel", { noremap = true, desc = "remove surrounding" })

-- visual mode
vim.keymap.set("v", '<leader>"', '<esc>`<i"<esc>`>la"<esc>', { noremap = true, desc = "add double quotes" })
vim.keymap.set("v", "<leader>'", "<esc>`<i'<esc>`>la'<esc>", { noremap = true, desc = "add single quotes" })
vim.keymap.set("v", "<leader>(", "<esc>`<i(<esc>`>la)<esc>", { noremap = true, desc = "add parentheses" })
vim.keymap.set("v", "<leader>{", "<esc>`<i{<esc>`>la}<esc>", { noremap = true, desc = "add braces" })
vim.keymap.set("v", "<leader>[", "<esc>`<i[<esc>`>la]<esc>", { noremap = true, desc = "add brackets" })
vim.keymap.set("v", "<leader><", "<esc>`<i<<esc>`>la><esc>", { noremap = true, desc = "add angle brackets" })
vim.keymap.set("v", "<leader>x", "<esc>`<i<bs><esc>`>li<bs><esc>", { noremap = true, desc = "remove surrounding" })
