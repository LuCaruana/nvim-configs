-- this is for syntax highlighting

local options = {
  ensure_installed = {
    "awk",
    "bash",
    "c",
    "cmake",
    "cpp",
    "css",
    "go",
    "gomod",
    "gosum",
    "gowork",
    "html",
    "javascript",
    "lua",
    "luadoc",
    "make",
    "markdown",
    "printf",
    "python",
    "toml",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
