return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- treesitter config
        local config = require("nvim-treesitter.configs")
        config.setup({
            -- ensure_installed = {"lua", "python", "json", "yaml", "html", "rust", "go"},
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
