vim.opt.updatetime = 300 -- ms to hover or such before action
vim.opt.timeoutlen = 500 -- ms allowed between keystrokes
vim.opt.signcolumn = yes -- always show the sign column left of numbers
vim.opt.fillchars:append({ eob = " " }) -- char to use for lines after buffer

vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
}) -- open file to previous location when closed

vim.o.laststatus = 3 -- make the status line span splits
