-- set keymaps
vim.keymap.set("t", "jk", "<c-\\><c-n>", { noremap = true, desc = "exit to normal mode", silent = true })
vim.keymap.set("t", "jq", "<c-\\><c-n>:bd!<cr>", { noremap = true, desc = "exit and quit", silent = true })
vim.keymap.set("t", "jc", "<c-\\><c-n>:hide<cr>", { noremap = true, desc = "close terminal", silent = true })

-- toggle terminal window
vim.keymap.set({ "n", "i", "v" }, "ttm", function()
  -- get the buffer if it exists
  local term = nil
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_name(buf):match("Terminal$") then
      term = buf
    end
  end

  -- open the old terminal or make a new one
  if term and vim.api.nvim_buf_is_valid(term) then
    vim.cmd("bot 10split")
    vim.api.nvim_set_current_buf(term)
    vim.cmd("startinsert")
  else
    vim.cmd("bot 10split | terminal")
    local buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_name(buf, "Terminal")

    vim.bo[buf].buflisted = false
    vim.opt_local.spell = false

    vim.cmd("startinsert")
  end
end, { noremap = true, desc = "open terminal mode" })

-- close the term buffers
-- vim.api.nvim_create_autocmd("TermClose", {
--   pattern = "*",
--   callback = function()
--     for _, buf in ipairs(vim.api.nvim_list_bufs()) do
--       local name = vim.api.nvim_buf_get_name(buf)
--       if name:match("^term://") then
--         if vim.api.nvim_buf_is_valid(buf) then
--           vim.api.nvim_buf_delete(buf, { force = true })
--         end
--       end
--     end
--   end,
-- })
