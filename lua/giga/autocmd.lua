AC = vim.api.nvim_create_autocmd
AUNVIM = vim.api.nvim_create_augroup("neovim", {clear = true})

AC("BufEnter", {
  pattern = "*",
  command = "highlight CursorLine guibg=#2a2b3c | highlight IndentBlanklineChar guifg=#585b70",
  group = AUNVIM
})
AC("BufRead", {
  pattern = "/home/john/personal/school/*",
  command = "set filetype=markdown",
  group = AUNVIM
})
AC("FileType", {
  pattern = "markdown,org",
  command = "setlocal nonumber norelativenumber concealcursor=nc",
  group = AUNVIM
})
AC("BufWritePost", {
  pattern = "/home/john/workspace/site/*",
  command = 'silent exec "!rsync -rtvzP ~/workspace/site/ root@johnsonnn.com:/var/www/site"',
  group = AUNVIM
})
AC("BufEnter", {
  pattern = "*",
  command = "set formatoptions-=cro",
  group =  AUNVIM
})
  group = AUNVIM
})
-- AC("BufWritePost", {
--  pattern = "plugins.lua",
--  command = "source % | PackerSync",
--  group = AUNVIM
-- })
