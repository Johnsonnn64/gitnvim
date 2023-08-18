lsp_list = {
  'pyright',
  'clangd',
  'cssls',
  'html',
  'lua_ls',
  'bashls',
  'tsserver',
}

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = lsp_list
})
require('lspconfig')

for i=1, #lsp_list do
  require("lspconfig")[lsp_list[i]].setup({
    on_attach = on_attach,
    capabilities = capabilities
  })
end
