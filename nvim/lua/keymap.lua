local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap


keymap("n", "tt", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "tf", "<cmd>NvimTreeFocus<CR>", opts)
keymap("n", "<C-f>", "<cmd>Telescope live_grep<CR>", opts)
keymap("n", "<C-h>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-s>", "<cmd>Telescope file_browser<CR>", opts)
keymap("n", "K", "<cmd>Telescope lsp_workspace_symbols<CR>", opts)
keymap("n", ",", ":bnext<CR>", opts)
keymap("n", "n", ":bprevious<CR>", opts)
keymap("n", "q", ":bd<CR>", opts)

keymap("i", "jk", "<esc>", opts)

keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)
keymap("t", "<Esc>", "<C-\\><C-n>", opts)
