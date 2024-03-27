local M = {
	"hoob3rt/lualine.nvim",
}

function M.config()
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
end
return M
