return {
    'numToStr/Comment.nvim',
    config = function ()
        require('Comment').setup()

        vim.keymap.set('n', '<C-/>', function ()
            require('Comment.api').toggle.linewise.current()
        end, {})


        vim.keymap.set(
            'v',
            '<C-/>',
            "<Esc><Cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
            {}
        )
    end
}
