local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup{
  options = {
    modified_icon = "ノ",
    tab_size = 14,
    show_close_icon = false,
    show_buffer_close_icons = false,
    separator_style = "thin",
    offsets = {
      {
        filetype = "NvimTree",
        text = "FileTree",
        highlight = "Directory",
        text_align = "left",
      }
    },
  }
}

vim.cmd [[
  hi BufferLineBufferSelected gui=bold
  hi BufferLineTabSelected guifg=normal_fg
]]
