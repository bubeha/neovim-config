return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            filters = { custom = { "^.git$" } },
            update_focused_file = { enable = true },
        }

        vim.keymap.set("n", "<C-1>", require("nvim-tree.api").tree.toggle, {
            silent = true,
            desc = "toggle nvim-tree",
        })
    end,
}
