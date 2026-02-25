require ('mason').setup()

require ('giga.lsp.handlers').setup()
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp-attach', {clear = true}),
  callback = function(event)
    require('giga.lsp.handlers').on_attach(event.buf)
  end
})
