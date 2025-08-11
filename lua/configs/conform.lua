local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    go = { "gofumpt", "goimports-reviser", "golines" },
  },

  formatters = {
    -- C, C++
    ["clang-format"] = {
      prepend_args = {
        "-style={ \
          UseTab: Never, \
          AccessModifierOffset: 0, \
          IndentAccessModifiers: true, \
          PackConstructorInitializers: Never \
        }",
      },
    },
    -- Golang
    ["goimports-reviser"] = {
      prepend_args = { "-rm-unused" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
