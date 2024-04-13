require("neovim.core.keymaps")
require("neovim.core.settings")

function R(name)
	require("plenary.reload").reload_module(name)
end

-- Autocommands
vim.api.nvim_create_augroup("custom_buffer", { clear = true })

-- highlight yanks
vim.api.nvim_create_autocmd("TextYankPost", {
	group = "custom_buffer",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ timeout = 100 })
	end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

--dap,yap
