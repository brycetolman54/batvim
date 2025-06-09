vim.cmd('echom " >^.^<"')

-- commands
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
	callback = function()
		local fo = vim.opt_local.formatoptions:append("t")
	end,
})
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			vim.api.nvim_win_set_cursor(0, mark)
		end
	end,
})

-- wrap options
vim.opt.wrap = true -- allow wrapping
vim.opt.textwidth = 150 -- break only at 150 characters long
vim.opt.linebreak = true -- break only between words

-- number options
vim.opt.number = true -- allow number
vim.opt.numberwidth = 5 -- make number 5 from left edge
vim.opt.relativenumber = true -- show relative numbers from current line

-- indentation
vim.opt.shiftround = true -- round up tab to be a multiple tab size
vim.opt.tabstop = 4 -- number of spaces in a tab
vim.opt.expandtab = true -- make tabs spaces
vim.opt.shiftwidth = 4 -- number of spaces in an indent
vim.opt.smartindent = true -- autoindent new lines based on syntax
vim.opt.autoindent = true -- copies indent from previous line

-- highlighting
vim.opt.matchtime = 7 -- highlight for 0.7 seconds when using match
vim.opt.cursorline = true -- highlight the current line
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- highlight matches while typing

-- searching
vim.opt.ignorecase = true -- case-insensitive in search
vim.opt.smartcase = true -- case-sensitive when using capitals

-- copying
vim.opt.clipboard = "unnamedplus" -- use the system clipboard

-- scrolling
vim.opt.scrolloff = 8 -- min lines above/below cursor when scrolling
vim.opt.sidescrolloff = 5 -- min lines left/right when scrolling

-- command completion
vim.opt.wildmenu = true -- enhance command-line completion
vim.opt.wildmode = "full" -- show all matches with completion

-- extra files
vim.opt.backup = false -- don't save backup files
vim.opt.swapfile = false -- don't use swap files
vim.opt.undofile = true -- use an undo file to save more undo history
vim.opt.undodir = vim.fn.expand("~/.local/share/nvim/undo")

-- other
vim.opt.updatetime = 300 -- ms to hover or such before action
vim.opt.timeoutlen = 500 -- ms allowed between keystrokes
vim.opt.signcolumn = yes -- always show the sign column left of numbers
vim.opt.fillchars:append({ eob = " " }) -- char to use for lines after buffer
vim.opt.list = true -- shows whitespace characters
vim.opt.listchars = {
	space = "·",
	eol = ".",
	trail = "~",
	extends = ">",
	precedes = "<",
}

-- folding
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

-- mappings
vim.keymap.set("n", "-", "ddp")
vim.keymap.set("n", "_", "ddkP")
