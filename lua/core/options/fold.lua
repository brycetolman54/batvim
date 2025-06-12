vim.opt.foldmethod = "syntax" -- fold based on indents
vim.opt.foldcolumn = "1" -- show foldmarkers in the sign column
vim.opt.fillchars:append({
  fold = " ",
  foldopen = "▾",
  foldclose = "▸",
}) -- chars to use for the fold sign column
vim.opt.foldminlines = 3 -- min lines to start a fold
vim.opt.foldnestmax = 5 -- max depth of nested folds
vim.opt.foldlevelstart = 2 -- fold level showing upon opening a file
vim.opt.foldtext = "v:lua.my_fold_text()" -- text to show a collapsed fold
function _G.my_fold_text()
  local start_line = vim.fn.getline(vim.v.foldstart)
  local end_line = vim.v.foldend - vim.v.foldstart + 1
  return start_line .. "  <- " .. end_line .. " lines ->"
end
