---@type LazySpec
return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {
            "lua",
            "vim",
            "javascript",
            "typescript",
            "python",
            "rust",
            "go",
        },
    },
}
