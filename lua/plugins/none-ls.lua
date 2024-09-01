---@type LazySpec
return {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
        local null_ls = require("null-ls")

        -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/
        opts.sources = require("astrocore").list_insert_unique(opts.sources, {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.prettier,
        })
    end,
}
