require ('giga.lsp.handlers').setup()
local lsp_list = require ('giga.lsp.lsp-list')
require ('mason').setup()

require("mason-lspconfig").setup({
  ensure_installed = lsp_list.lsp_list
})

require('lspconfig')
for i=1, #lsp_list.lsp_list do
  require("lspconfig")[lsp_list.lsp_list[i]].setup({
    on_attach = require('giga.lsp.handlers').on_attach,
    capabilities = require('giga.lsp.handlers').capabilities,
  })
end
