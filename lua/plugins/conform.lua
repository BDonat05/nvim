return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			c_sharp = { "csharpier" },
			c = { "clang-format" },
			haskell = { "fourmolu" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		notify_on_error = true,
	},
}
