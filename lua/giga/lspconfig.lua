require ('mason').setup()
-- require("mason-lspconfig").setup({
--   ensure_installed = lsp_list.lsp_list
-- })

vim.lsp.enable({
  "lua_ls"
})

require ('giga.lsp.handlers').setup()
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp-attach', {clear = true}),
  callback = function(event)
    require('giga.lsp.handlers').on_attach(event.buf)
  end

})

-- require('lspconfig')
-- for i=1, #lsp_list.lsp_list do
--   require("lspconfig")[lsp_list.lsp_list[i]].setup({
--     on_attach = require('giga.lsp.handlers').on_attach,
--     capabilities = require('giga.lsp.handlers').capabilities,
--   })
  -- end
