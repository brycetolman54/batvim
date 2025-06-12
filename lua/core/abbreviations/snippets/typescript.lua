- typescript react component
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript",
  callback = function()
    vim.cmd(":iab <buffer> cmpn export const = () => {<cr>return (<cr><><cr><tab><cr></><cr>);<cr>}<esc>6kH2whi")
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript",
  callback = function()
    vim.cmd(
      ":iab <buffer> cmpnp export const = (props: Props) => {<cr>return (<cr><><cr><tab><cr></><cr>);<cr>}<esc>6kH2whi"
    )
  end,
})
