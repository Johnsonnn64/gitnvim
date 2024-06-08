require("ibl").setup {
  indent = { char = "┃"},
  scope = {
    show_start = false,
    include = {
      node_type = {
        lua = {
          "field",
          "arguments",
        },
        cpp = {
          "declaration"
        },
        java = {
          "class_declaration",
        }
      }
    },
    exclude = {
      language = {
        "packer",
        "neogitstatus",
        "Trouble",
      },
      node_type = {
        lua = {},
      }
    }
  },
  exclude = {
    filetypes = {
      "markdown",
    },
  }
}
