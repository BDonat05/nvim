-- NOTE to self: when installng a new theme, always add entry to themery
return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	{
		"zaldih/themery.nvim",
		lazy = false,
		opts = {
			themes = {
				"tokyonight",
				"tokyonight-night",
				"tokyonight-storm",
				"tokyonight-day",
				"tokyonight-moon",
				"catppuccin-latte",
				"catppuccin-frappe",
				"catppuccin-macchiato",
				"catppuccin-mocha",
				"nightfly",
			},
			livePreview = true,
		},
	},
}
