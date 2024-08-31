---@type LazySpec
return {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
        features = {
            large_buf = { size = 1024 * 256, lines = 4096 },
            autopairs = true,
            cmp = true,
            diagnostics_mode = 3, -- (0 = off, 1 = text, 2 = sign, 3 = on)
            highlighturl = true,
            notifications = true,
        },
        diagnostics = {
            virtual_text = true,
            underline = true,
        },
        -- neovim options
        options = {
            opt = {
                relativenumber = true,
                number = true,
                spell = false,
                signcolumn = "yes",
                wrap = false,
            },
        },
        mappings = {
            n = {
                ["<S-l>"] = {
                    function() require("astrocore.buffer").nav(vim.v.count1) end,
                    desc = "Next buffer",
                },
                ["<S-h>"] = {
                    function() require("astrocore.buffer").nav(-vim.v.count1) end,
                    desc = "Previous buffer",
                },
            },
        },
    },
}
