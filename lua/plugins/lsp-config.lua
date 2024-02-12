return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ansiblels",
                    "bashls",
                    "dockerls",
                    "gopls",
                    "html",
                    "htmx",
                    "jsonls",
                    "jqls",
                    "lua_ls",
                    "marksman",
                    "pyright",
                    "rust_analyzer",
                    "taplo",
                    "tsserver",
                    "lemminx",
                    "yamlls",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.ansiblels.setup({})
            lspconfig.bashls.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.html.setup({})
            lspconfig.htmx.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.jqls.setup({})
            lspconfig.lua_ls.setup({})
            lspconfig.marksman.setup({})
            lspconfig.pyright.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.taplo.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.lemminx.setup({})
            lspconfig.yamlls.setup({})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    },
}
