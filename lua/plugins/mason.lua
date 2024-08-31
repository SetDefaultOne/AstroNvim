---@type LazySpec
return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "clangd",
                "gopls",
                "omnisharp",
                "pyright",
            },
        },
    },
    {
        "jay-babu/mason-null-ls.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "prettier",
                "black",
                "clang_format",
                "codespell",
                "gofmt",
                "goimports",
                "golines",
                "isort",
                "markdownlint",
                "prisma_format",
                "codespell",
                "commitlint",
                "editorconfig_checker",
                "markdownlint_cli2",
                "selene",
                "todo_comments",
                "trail_space",
                "dictionary",
                "printenv",
                "spell",
                "tags",
            },
        },
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            ensure_installed = {
                "python",
                "js-debug-adapter",
                "cpptools",
            },
        },
    },
}
