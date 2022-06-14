local status_ok, configs = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

configs.setup {
  ensure_isntalled = 'maintained',
  sync_install = false,
  ignore_install = { '' },
  highlight = {
    enable = true,
    disable = { '' },
    additional_vim_regex_highlighting = {'org'},
  },
  indent = { enable = true, disable = { '' } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
