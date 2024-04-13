return {
	{ "junegunn/fzf", build = "./install --all" },
	{ "junegunn/fzf.vim" },
	{ "tpope/vim-fugitive" },
	{ "github/copilot.vim" },
	{ "github/copilot.vim" },
	{
		"terryma/vim-multiple-cursors",
		-- "mg979/vim-visual-multi",
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		end,
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"stevearc/dressing.nvim",
		config = function()
			require("dressing").setup()
		end,
	},

	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
				-- surr*ound_words             ysiw)           (surround_words)
				--     *make strings               ys$"            "make strings"
				--     [delete ar*ound me!]        ds]             delete around me!
				--     remove <b>HTML t*ags</b>    dst             remove HTML tags
				--     'change quot*es'            cs'"            "change quotes"
				--     <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
				--     delete(functi*on calls)     dsf             function calls
				--
			})
		end,
	},

	{
		"laytan/cloak.nvim",
		config = function()
			require("cloak").setup({
				enabled = true,
				cloak_character = "*",
				highlight_group = "Comment",
				patterns = {
					{
						file_pattern = {
							".env*",
							"wrangler.toml",
							".dev.vars",
						},
						cloak_pattern = "=.+",
					},
				},
			})
		end,
	},

	{
		"hoob3rt/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					-- icons_enabled = true,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },
					lualine_c = {
						function()
							local current_file = vim.fn.expand("%:p")
							return vim.fn.fnamemodify(current_file, ":~:.")
						end,
					},
					-- lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
}
