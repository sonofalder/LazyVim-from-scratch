return	{
    {
        -- telescope or fuzzy find screen
	    "nvim-telescope/telescope.nvim",
        tag="0.1.5",
	    dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            -- instantiate telescope and set some keymaps
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    },
}

