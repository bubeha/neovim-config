return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = {},
				typescriptreact = {},
				javascript = {},
				javascriptreact = {},
				["*"] = { "trim_whitespace" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" },
			command = "silent! EslintFixAll",
		})
	end,
}
