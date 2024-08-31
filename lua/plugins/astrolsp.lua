---@type LazySpec
return {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
        features = {
            codelens = true,
            inlay_hints = false,
            semantic_tokens = true,
        },
        formatting = {
            format_on_save = {
                enabled = true,
            },
            disabled = {
                "lua_ls",
                "tsserver",
            },
            timeout_ms = 2048,
        },
        autocmds = {
            lsp_codelens_refresh = {
                cond = "textDocument/codeLens",
                {
                    event = { "InsertLeave", "BufEnter" },
                    desc = "Refresh codelens (buffer)",
                    callback = function(args)
                        if require("astrolsp").config.features.codelens then
                            vim.lsp.codelens.refresh({ bufnr = args.buf })
                        end
                    end,
                },
            },
        },
        mappings = {
            n = {
                gD = {
                    function() vim.lsp.buf.declaration() end,
                    desc = "Declaration of current symbol",
                    cond = "textDocument/declaration",
                },
            },
        },
    },
}
