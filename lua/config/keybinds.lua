local map = vim.keymap.set

-- Native binds
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down a page" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up a page" })

map("i", "<C-c>", "<Esc>", { desc = "Exit insert mode" })
map("n", "<Esc>", "<CMD>nohl<CR>", { desc = "Stop search highlighting" })

map("n", "<C-s>", "<CMD>w<CR>", { desc = "Save buffer" })
map("n", "<leader>c", "<CMD>bd<CR>", { desc = "Close buffer" })
map("n", "<leader>q", "<CMD>q<CR>", { desc = "Quit window" })
map("n", "<leader>Q", "<CMD>qa!<CR>", { desc = "Force quit window" })

-- Plugin keybinds
-- NOTE: blink.cmp binds are not here, sice they're best configurable internally

-- NOTE: comment mappings are hidden and can only be configured internally (fuck the makers of the
-- NOTE: comment plugin), so check out the comment.nvim github repo for keybindings

map("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "Open Lazy package manager" })

map("n", "<leader>e", "<CMD>Neotree toggle left<CR>", { desc = "Open Neo-tree" })
map("n", "<leader>tt", "<CMD>Themery<CR>", { desc = "Open Themery" })

local builtin = require("telescope.builtin")
map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
map("n", "<leader>fc", "<CMD>TodoTelescope<CR>", { desc = "Find Todo comments in telescope" })

map("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

map("n", "<leader>m", "<CMD>Mason<CR>", { desc = "Open Mason tool manager" })

map("n", "<leader>tb", "<CMD>ToggleTerm<CR>", { desc = "Toggle terminal on the bottom" })
map("n", "<leader>tf", "<CMD>ToggleTerm direction=float<CR>", { desc = "Toggle a floating terminal" })
map("n", "<C-t>", "<CMD>ToggleTerm<CR>", { desc = "Toggle terminal on the bottom" })
map("t", "<C-t>", "<CMD>ToggleTerm<CR>", { desc = "Toggle terminal on the bottom" })
map("n", "<M-t>", "<CMD>ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal" }) -- M stands for the alt key
map("t", "<M-t>", "<CMD>ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal" })

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
	map("n", "<leader>la", vim.lsp.buf.code_action, opts)
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
map("n", "<leader>xs", "<cmd>Trouble symbols toggle position=right<cr>", { desc = "Symbols (Trouble)" })
map("n", "<leader>xl", "<cmd>Trouble lsp toggle position=right<cr>", { desc = "Lsp definitions (Trouble)" })
map("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Loclist (Trouble)" })
map("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfixlist (Trouble)" })

map("n", "<leader>lg", "<CMD>LazyGit<CR>", { desc = "Open Lazygit" })
