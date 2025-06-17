vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if #vim.v.argv <= 2 then
      vim.cmd("enew")
      vim.api.nvim_buf_set_name(0, "Start")
      vim.bo.buflisted = false
      vim.bo.buftype = "nofile"
      vim.bo.swapfile = false
      vim.bo.bufhidden = "wipe"

      vim.opt_local.number = false
      vim.opt_local.relativenumber = false
      vim.opt_local.cursorline = false
      vim.opt_local.wrap = false
      vim.opt_local.scrolloff = 0
      vim.opt_local.sidescrolloff = 0
      vim.opt_local.cursorbind = true
      vim.opt_local.scrollbind = false
      vim.opt_local.list = false
      vim.opt_local.signcolumn = "no"
      vim.opt_local.foldcolumn = "0"

      vim.keymap.set("n", "e", ":e ", { noremap = true, buffer = 0 })
      vim.keymap.set("n", "q", ":q!<cr>", { noremap = true, nowait = true, silent = true, buffer = 0 })

      local content = {
        "__________________                              __________________",
        "`-._              \\           |\\__/|           /              ..-'",
        "    \\              \\          |    |          /              /    ",
        "     \\              `-_______/      \\_______-'              /     ",
        "      |                                                    |      ",
        "      |  ██████╗  █████╗ ████████╗██╗   ██╗██╗███╗   ███╗  |      ",
        "      |  ██╔══██╗██╔══██╗╚══██╔══╝██║   ██║██║████╗ ████║  |      ",
        "      |  ██████╔╝███████║   ██║   ██║   ██║██║██╔████╔██║  |      ",
        "      |  ██╔══██╗██╔══██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║  |      ",
        "      |  ██████╔╝██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║  |      ",
        "      /  ╚═════╝ ╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝  \\      ",
        "     /__________                                  __________\\     ",
        "                '----._                    _.----'                ",
        "                       `--             .--'                       ",
        "                          `.-.      .-'                           ",
        "                              \\    /                              ",
        "                               \\  /                               ",
        "                                \\/                                ",
        "+----------------------------------------+",
        "|                                        |",
        "|      \u{f15c} open a new file           e     |",
        "|      \u{21a9} quit                      q     |",
        "|                                        |",
        "+----------------------------------------+",
      }

      local width = vim.api.nvim_win_get_width(0)
      local height = vim.api.nvim_win_get_height(0)
      local pad_lines = math.floor((height - #content) / 2)

      local lines = {}
      for _ = 1, pad_lines do
        table.insert(lines, "")
      end

      for _, line in ipairs(content) do
        local line_width = vim.fn.strdisplaywidth(line)
        local pad = math.floor((width - line_width) / 2)
        table.insert(lines, string.rep(" ", math.max(pad, 0)) .. line)
      end

      vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
      vim.cmd("normal! ggzz")

      vim.bo.modifiable = false
    end
  end,
})
