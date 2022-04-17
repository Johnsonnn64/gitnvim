local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
  return
end

require('giga.lsp.lsp-installer')
require('giga.lsp.handlers').setup()
