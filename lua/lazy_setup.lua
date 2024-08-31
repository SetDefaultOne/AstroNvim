require("lazy").setup({
    {
        "AstroNvim/AstroNvim",
        version = "^4",
        import = "astronvim.plugins",
        opts = {
            mapleader = " ",
            maplocalleader = ",",
            icons_enabled = true,
            pin_plugins = nil,
            update_notifications = true,
        },
    },
    { import = "community" },
    { import = "plugins" },
} --[[@as LazySpec]], {
    install = { colorscheme = { "astrotheme" } },
    ui = { backdrop = 100 },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "zipPlugin",
            },
        },
    },
} --[[@as LazyConfig]])
