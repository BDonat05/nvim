return {
	"mfussenegger/nvim-lint",
	config = function() -- this mf only supports legacy style config
		local lint = require("lint")
		lint.linters_by_ft = {
			-- lua = { "selene" }, -- I've disabled selene since it doesn't play nice with the nvim config environment
			haskell = { "hlint" },
		}
	end,
	opts = {},
}
