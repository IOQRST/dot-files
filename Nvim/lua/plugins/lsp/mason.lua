return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
    config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- LSP ONLY
        "lua_ls",
        "ruff",
        "biome",
        "gopls",
        "clangd",
        "rubocop",
        "sqruff",
        "tflint",
        "lemminx",
        "tombi",
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "rust-analyzer",
        "docker-language-server",
        "ansible-language-server",
        "yaml-language-server",
        -- DAP
        "debugpy",
        "go-debug-adapter",
        "cpptools",
        -- FORMATTER
        "stylua",
        "isort",
        "prettier",
        "goimports",
        "gofumpt",
        "clang-format",
        "sqlfmt",
        "xmlformatter",
        -- Linter
        "gospel",
        "cpplint",
        "sqlfluff",
        "ansible-lint",
        "tfsec",
        "hadolint",
        "yamllint"
      },
    })
  end,
}
