require"telescope".load_extension("frecency")
require('telescope').setup{
  defaults = {
    theme = "dropdown",
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden"
    },
    path_display = { "truncate = 2" },
    file_ignore_patterns = {"^.git", "^.pki", "%.jpg", "%.jpeg", "%.png", "%.gif", "%.otf", "%.ttf"},
    preview = {
      timeout = 200,
      filesize_limit = 3
    },
    initial_mode = "normal"
  },
  --extensions = {
    --frecency = {
      --db_root = "/home/john/.cache/nvim/db_root",
      --show_scores = false,
      --show_unindexed = true,
      --devicons_disabled = true,
      --ignore_patterns = {"*.git/*", "*/tmp/*"},
      --workspaces = {
        --["conf"] = "/home/john/.config",
        --["data"] = "/home/john/.local/share",
      --},
    --},
  --},
}


