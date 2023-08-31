local status, lualine = pcall(require, 'lualine')

if not status then
	vim.notify("lualine not installed, please install with :PlugInstall\n")
	return
end

lualine.setup {
	options = {
		theme = 'tokyonight',
		section_separators = '',
		component_separators = '|',
	},
	sections = {
		lualine_a = {'mode'},
    		lualine_b = {'branch', 'diff', 'diagnostics'},
    		lualine_c = { {'filename', path = 3, file_status = true } },
    		lualine_x = {'fileformat', 'filetype'},
    		lualine_y = { },
    		lualine_z = {'location'}
	},
}
