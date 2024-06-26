return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "bash",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "heex",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "php",
                "go",
                "json",
            },
            sync_install = false,
            auto_install = false,
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })
    end
}
