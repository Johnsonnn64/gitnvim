local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then
  return
end

lualine.setup {
  options = {
    theme = "catppuccin",
    icons_enabled = true,
    component_separators = '|',
    section_separators = { left = '', right = '' },
    globalstatus = true,
  },

  sections = {
    lualine_a = {
      { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename' },
    lualine_c = { 'branch', 'diff' },
    lualine_x = { 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = {
      { 'location', separator = { left = '', right = '' } },
    },
  },

  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
}
