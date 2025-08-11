-- this is for syntax highlighting

local options = {
  ensure_installed = {
    "lua",
    "luadoc",
    "printf",
    "vim",
    "vimdoc",
    "bash",
    "html",
    "css",
    "javascript",
    "typescript",
    "yaml",
    "toml",
    "markdown",
    "python",
    "awk",
    "c",
    "cpp",
    "cmake",
    "make",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
