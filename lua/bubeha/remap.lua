vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("i", "<S-Tab>", "<Esc><<_i", { noremap = true, silent = true })
vim.keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
