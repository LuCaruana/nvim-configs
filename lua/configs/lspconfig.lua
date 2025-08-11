-- language servers

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.servers = {
  "lua_ls",
  "clangd", -- if i want to use the system's one, add it to mason-lspconfig (and mason-conform for clang-format) ignore-install table
}

local defaults_servers = {}

-- enable servers with defaults

for _, lsp in ipairs(defaults_servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  })
end

lspconfig.lua_ls.setup({
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        enable = false, -- Disable all diagnostics from lua_ls, a different linter is used
        -- globals = { "vim" },
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
          "${3rd}/love2d/library",
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
})

lspconfig.clangd.setup({
  on_attach = function(client)
    -- disable default formatter (clangd)
    client.server_capabilities.documentFormattintProvider = false
    client.server_capabilities.documentRangeFormattintProvider = false
    on_attach(client)
  end,
  on_init = on_init,
  capabilities = capabilities,
})
-- read :h vim.lsp.config for changing options of lsp servers
