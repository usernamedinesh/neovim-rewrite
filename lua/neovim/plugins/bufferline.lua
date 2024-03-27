local M = {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
}

function M.config()
	require("bufferline").setup({
		options = {
			numbers = "none", -- "none", "ordinal", "buffer_id", "both"
			-- indicator_icon = "▎",
			modified_icon = "●",
			buffer_close_icon = "X",
			left_trunc_marker = "",
			right_trunc_marker = "",
			offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
			show_tab_indicators = true,
			show_buffer_close_icons = true,
			-- show_close_icon = true,
			diagnostics = "nvim_lsp", -- false | "nvim_lsp",
			sort_by = "id", -- "extension", "relative_directory", "directory" or a function
			custom_filter = function(buf_number)
				local file_name = vim.fn.bufname(buf_number)
				return vim.fn.filereadable(file_name) == 1
			end,
		},
	})
	vim.opt.termguicolors = true
	-- Move to next buffer
	vim.api.nvim_set_keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

	-- Move to previous buffer
	vim.api.nvim_set_keymap("n", "<S-j>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

	-- Close all buffers except the current one
	vim.api.nvim_set_keymap("n", "<leader>cc", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })

	-- Close all buffers
	vim.api.nvim_set_keymap("n", "<leader>ca", ":BufferLineCloseAllBuffers<CR>", { noremap = true, silent = true })
end
return M
