vim.g.mapleader = " "
vim.api.nvim_set_keymap("n", "<Leader>pv", ":Oil<CR>", { noremap = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.api.nvim_set_keymap("i", "<M-m>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-o>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("n", "U", "<C-r>", { noremap = true })

vim.api.nvim_set_keymap("n", "<S-m>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-c>", "<C-d>zz", { noremap = true, silent = true })

-- Map keys to navigate between buffers
-- Insert mode navigation
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-'>", "<Right>", { noremap = true, silent = true })

vim.keymap.set("n", "ff", ":vsplit <CR>")
vim.keymap.set("n", "sv", ":split <cr>")

vim.keymap.set("n", "sn", ":tabnew <cr>")

vim.keymap.set("n", "<S-h>", ":resize -2 <cr>")
vim.keymap.set("n", "<S-f>", ":resize +2 <cr>")
vim.keymap.set("n", "<S-d>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<S-i>", ":vertical resize +2<CR>")

-- Normal mode navigation
vim.api.nvim_set_keymap("n", "<Esc>", "<cmd>noh<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("v", "ii", "<Esc>")
vim.keymap.set("c", "ii", "<Esc>")

vim.api.nvim_set_keymap("n", "S", [[:%s/<C-r><C-w>/<C-r><C-w>/gI<Left><Left><Left>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "mm", ":w<CR>", { silent = false })
vim.api.nvim_set_keymap("n", "<leader>q", ":q!<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>wq", ":wq<CR>", { silent = true })

-- gc for visual line comment
-- gb for visual multi-line comment
vim.api.nvim_set_keymap("n", "<Leader>/", ":<C-u>normal gcc<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<Leader>/", ":normal gcc<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>fj", vim.lsp.buf.format)

vim.api.nvim_set_keymap("n", "vv", "V", { silent = true })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>")

--restart neovim
vim.api.nvim_set_keymap("n", "<leader>rr", ':!nvim -c "qa!" &<CR>', { silent = true })
-- vim.api.nvim_set_keymap("n", "ss", ":source $MYVIMRC<CR>", { silent = true })
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)
