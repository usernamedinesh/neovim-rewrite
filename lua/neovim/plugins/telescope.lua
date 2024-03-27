local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true },
		{ "ThePrimeagen/git-worktree.nvim" },
	},
}

function M.config()
	local telescope = require("telescope")
	telescope.load_extension("fzf")
	-- local builtin = require("telescope.builtin")
	require("telescope").load_extension("git_worktree")

	pcall(require("telescope").load_extension, "fzf")

	-- set keymaps
	local keymap = vim.keymap

	vim.keymap.set("n", "<leader>?", function()
		-- You can pass additional configuration to telescope to change theme, layout, etc.
		require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			winblend = 10,
			previewer = false,
		}))
	end, { desc = "[/] Fuzzily search in current buffer]" })

	keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
	keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find Oldfiles" })
	keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
	keymap.set(
		"n",
		"<leader>fa",
		"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
		{ desc = "Find all" }
	)
	keymap.set(
		"n",
		"<leader>fw",
		"<cmd> Telescope current_buffer_fuzzy_find<cr>",
		{ desc = "Find string under cursor in cwd" }
	)
	keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "find buffers" })

	vim.api.nvim_set_keymap(
		"n",
		"<Leader>sr",
		'<CMD>lua require("telescope").extensions.git_worktree.git_worktrees()<CR>',
		{ noremap = true, silent = true }
	)

	vim.api.nvim_set_keymap(
		"n",
		"<Leader>sR",
		'<CMD>lua require("telescope").extensions.git_worktree.create_git_worktree()<CR>',
		{ noremap = true, silent = true }
	)

	vim.api.nvim_set_keymap(
		"n",
		"<Leader>sn",
		'<CMD>lua require("telescope").extensions.notify.notify()<CR>',
		{ noremap = true, silent = true }
	)
	keymap.set("n", "<leader>fc", function()
		require("telescope.builtin").find_files({
			cwd = "/home/dinesh/.config/nvim/",
		})
	end, { noremap = true, silent = true, desc = "Find config files" })
end

return M
