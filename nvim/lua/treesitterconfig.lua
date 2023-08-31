local treesitterStatus, treesitter = pcall(require, 'nvim-treesitter.configs')
local autotagStatus, _ = pcall(require, 'nvim-ts-autotag')

if not treesitterStatus then
	vim.notify("nvim-treesitter not installed, please install with :PlugInstall\n")
	return
end

if not autotagStatus then
	vim.notify("nvim-ts-autotag not installed, please install with :PlugInstall\n")
	return
end

treesitter.setup {
	ensure_installed = {'bash', 'c', 'css', 'html', 'javascript', 'json', 'lua', 'make', 'python', 'regex', 'ruby', 'solidity', 'tsx', 'typescript', 'vim'},
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true
	},
	autotag = {
		enable = true,
	},
}
