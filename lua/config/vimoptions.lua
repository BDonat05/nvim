vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.showtabline = 2
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.winborder = "rounded"

vim.diagnostic.enable = true
vim.diagnostic.config({
	virtual_text = true,
	-- virtual_lines = true,
})
vim.cmd("set clipboard+=unnamedplus")
