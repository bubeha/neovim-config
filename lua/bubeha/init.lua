require("bubeha.set")

require("bubeha.remap")

require("bubeha.lazy_init")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
    group = "__formatter__",
    command = ":FormatWrite",
})
