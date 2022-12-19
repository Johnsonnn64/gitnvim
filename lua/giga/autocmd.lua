AC = vim.api.nvim_create_autocmd
AUNVIM = vim.api.nvim_create_augroup("neovim", {clear = true})

AC("BufEnter", {
  pattern = "*",
  command = "highlight CursorLine guibg=#2a2b3c",
  group = AUNVIM
})
AC("BufRead,BufNewFile", {
  pattern = "~/personal/s*/*",
  command = "set filetype=markdown",
  group = AUNVIM
})
AC("FileType", {
  pattern = "markdown,org",
  command = "setlocal nonumber norelativenumber concealcursor=nc",
  group = AUNVIM
})
AC("BufWritePost", {
  pattern = "~/workspace/site/*",
  command = 'silent exec "!rsync -rtvzP ~/workspace/site/ root@johnsonnn.com:/var/www/site"',
  group = AUNVIM
})
AC("bufenter", {
  pattern = "*",
  command = "set formatoptions-=cro",
  group =  AUNVIM
})
AC("BufWritePost", {
  pattern = "plugins.lua",
  command = "source <afile> | PackerSync",
  group = AUNVIM
})

