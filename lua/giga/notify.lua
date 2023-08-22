require ("notify").setup({
  background_colour = "#000000",
  top_down = false,
  render = "compact",
  stages = "slide",
  fps = 60,
})

vim.notify = require("notify")
