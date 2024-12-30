-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mines.floatTerm")
local move_config = require("nvim-treesitter.parsers").get_parser_configs()
move_config.move = {
  install_info = {
    url = "https://github.com/tzakian/tree-sitter-move",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "move",
  used_by = { "move" },
}
