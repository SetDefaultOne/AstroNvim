---@type LazySpec
return {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
        local null_ls = require("null-ls")

        -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/
        opts.sources = require("astrocore").list_insert_unique(opts.sources, {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.clang_format,
            null_ls.builtins.formatting.codespell,
            null_ls.builtins.formatting.gofmt,
            null_ls.builtins.formatting.goimports,
            null_ls.builtins.formatting.golines,
            null_ls.builtins.formatting.isort,
            null_ls.builtins.formatting.markdownlint,
            null_ls.builtins.formatting.prisma_format,

            null_ls.builtins.diagnostics.codespell,
            null_ls.builtins.diagnostics.commitlint,
            null_ls.builtins.diagnostics.editorconfig_checker,
            null_ls.builtins.diagnostics.markdownlint_cli2,
            null_ls.builtins.diagnostics.selene,
            null_ls.builtins.diagnostics.todo_comments,
            null_ls.builtins.diagnostics.trail_space,

            null_ls.builtins.hover.dictionary,
            null_ls.builtins.hover.printenv,

            null_ls.builtins.completion.spell,
            null_ls.builtins.completion.tags,
        })
    end,
}
