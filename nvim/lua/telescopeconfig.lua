local status, telescope = pcall(require, 'telescope')

if not status then
	vim.notify("telescope not installed, please install with :PlugInstall\n")
	return
end

telescope.setup {
	defaults = {
		file_ignore_patterns = {
			'node_modules'
		}
	},
}

telescope.load_extension 'file_browser'
telescope.load_extension 'media_files'
