local status, toggleterm = pcall(require, 'toggleterm')

if not status then
	vim.notify('toggleterm not installed, please install with :PlugInstall\n')
	return
end

toggleterm.setup {
	open_mapping = [[<C-t>]]
}
