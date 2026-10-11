local map = vim.keymap.set

-- Native binds
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<C-s>", ":w<CR>")
map("n", "<leader>c", ":bd<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")

-- Plugin keybinds
-- NOTE: blink.cmp binds are not here, sice they're best configurable internally
map("n", "<leader>e", ":Neotree toggle left<CR>")
map("n", "<leader>tt", ":Themery<CR>")

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

map("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

map("n", "<leader>tb", "<CMD>ToggleTerm<CR>", { desc = "Open terminal on the bottom" })
map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", { desc = "Open a floating terminal" })

map("n", "<leader>m", "<CMD>Mason<CR>")

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	map("t", "<esc>", [[<C-\><C-n>]], opts)
	map("t", "jk", [[<C-\><C-n>]], opts)
	map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	map("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

function _G.set_lsp_keymaps(event)
	local opts = { buffer = event.buf }

	map("n", "gd", vim.lsp.buf.definition, opts)
	map("n", "gr", vim.lsp.buf.references, opts)
	map("n", "K", vim.lsp.buf.hover, opts)
	map("n", "<leader>rn", vim.lsp.buf.rename, opts)
	map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	map("n", "<leader>lf", require("conform").format, opts)
	map("n", "<leader>ld", vim.diagnostic.open_float, opts)
end

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle focus=true<cr>", { desc = "Diagnostics (Trouble)" })
map(
	"n",
	"<leader>xX",
	"<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)
map("n", "<leader>cs", "<cmd>Trouble symbols toggle position=right<cr>", { desc = "Symbols (Trouble)" })
map("n", "<leader>cl", "<cmd>Trouble lsp toggle position=right<cr>", { desc = "Lsp definitions (Trouble)" })
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Loclist (Trouble)" })
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfixlist (Trouble)" })

map("n", "<leader>lg", "<CMD>LazyGit<CR>", { desc = "Open Lazygit" })
