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
    "yaml",
    "toml",
    "markdown",
    "python",
    "awk"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

require("nvim-treesitter.configs").setup(options)
