vim.opt.guicursor = ""
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.clipboard = "unnamed"
vim.o.completeopt = "menuone,noselect"

--copy paste
vim.api.nvim_set_keymap("v", "<S-p>", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<S-k>", '"+p', { noremap = true })
vim.keymap.set(
	"n",
	"<leader>lf",
	"<cmd>lua vim.lsp.buf.format{ async = true }<cr>",
	{ noremap = true, silent = true, desc = "Format" }
)

vim.api.nvim_set_keymap("n", "'", ":", { noremap = true })
vim.api.nvim_set_option("completefunc", "completefunc#omni#syntax")

vim.api.nvim_set_keymap("n", "E", "$", { noremap = false })
vim.api.nvim_set_keymap("n", "B", "^", { noremap = false })

vim.keymap.set("n", "ss", "<cmd>bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
vim.opt.autoindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = false

vim.opt.smartindent = true

vim.opt.wrap = false
-- vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
-- vim.opt.background = "dark"
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"

-- vim.cmd("highlight MyTextColor guifg=#FF0000 ctermfg=red")
-- vim.cmd("highlight LineNr guifg=#329e56  ctermfg=red") --line number color
-- vim.cmd("highlight ColorColumn guibg=#583f3a ctermbg=black") --singcolumn
