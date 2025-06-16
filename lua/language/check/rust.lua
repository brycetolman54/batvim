vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    local cargo = vim.fs.find({ "Cargo.toml" }, { upward = true })[1]
    if not cargo then
      return
    end

    vim.lsp.start({
      name = "rust-analyzer",
      cmd = { "rust-analyzer" },
      root_dir = vim.fs.dirname(cargo),
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = true,
            enableExperimental = true,
            enableOnType = true,
          },
        },
      },
    })
  end,
}) -- set the analyzer up when entering a rust file
