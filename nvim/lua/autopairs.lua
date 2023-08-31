local status, autopairs = pcall(require, 'nvim-autopairs')

if not status then
	vim.notify('nvim-autopairs not installed, please install with :PlugInstall\n')
	return
end

autopairs.setup({
  enable_check_bracket_line = false,
  ignored_next_char = "[%w%.]"
})
