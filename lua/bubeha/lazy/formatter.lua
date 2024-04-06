return {
    'mhartington/formatter.nvim',
    config = function()
        local util = require("formatter.util")

        require("formatter").setup({
            logging = false,
            filetype = {
                lua = {
                    require("formatter.filetypes.lua").stylua,
                    function()
                        if util.get_current_buffer_file_name() == "special.lua" then
                            return nil
                        end

                        return {
                            exe = "stylua",
                            args = {
                                "--search-parent-directories",
                                "--stdin-filepath",
                                util.escape_path(util.get_current_buffer_file_path()),
                                "--",
                                "-",
                            },
                            stdin = true,
                        }
                    end
                },
                go = {
                    function()
                        return {
                            exe = "goimports",
                            stdin = true
                        }
                    end,
                    function()
                        return {
                            exe = "gofmt",
                            stdin = true
                        }
                    end,
                },

                ["*"] = {
                    require("formatter.filetypes.any").remove_trailing_whitespace
                }
            }
        })
    end
}
