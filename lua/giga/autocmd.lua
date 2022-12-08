vim.cmd[[
  autocmd BufWritePost /home/john/workspace/site/* silent exec "!rsync -rtvzP ~/workspace/site/ root@johnsonnn.com:/var/www/site"
]]
