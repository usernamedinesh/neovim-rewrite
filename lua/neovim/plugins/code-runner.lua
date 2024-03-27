local M = {
	"CRAG666/code_runner.nvim",
}

function M.config()
	require("code_runner").setup({
		filetype = {
			python = "python3 -u",
			rust = {
				"cd $dir &&",
				"rustc $fileName &&",
				"$dir/$fileNameWithoutExt",
			},
			c = {
				"cd $dir &&",
				"gcc $fileName -o $fileNameWithoutExt &&",
				"./$fileNameWithoutExt",
			},
			cpp = {
				"cd $dir &&",
				"g++ $fileName -o $fileNameWithoutExt &&",
				"./$fileNameWithoutExt",
			},
			javascript = "node",
			typescript = "node",
			go = "go run",
		},
	})

	vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
	vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
	vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
	vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
	vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
	vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
	vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
end
return M
