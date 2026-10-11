vim.api.nvim_create_autocmd("FileType", {
	pattern = { "rust", "c", "lua", "markdown", "bash", "c_sharp", "haskell" },
	callback = function()
		vim.treesitter.start()
		-- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		-- vim.wo.foldmethod = 'expr'
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = set_lsp_keymaps,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
