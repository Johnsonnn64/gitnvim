require('nvim-autopairs').setup {
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%)%>%]%)%}%,]]=],
    check_comma = false,
    highlight = 'Search',
    highlight_grey='Comment'
  },
}
