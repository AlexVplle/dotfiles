local status, nvimTree = pcall(require, 'nvim-tree')

if not status then
	vim.notify('nvim-tree not installed, please install nvim-tree with :PlugInstall\n')
	return
end

nvimTree.setup({
	diagnostics = {
		enable = true,
	},
	view = {
		adaptive_size = true,
	},
	renderer = {
		add_trailing = true,
		highlight_git = true,
		icons = {
			glyphs = {
				folder = {
					arrow_closed = ">"
				}

			}
		}
	},
	actions = {
		open_file = {
			quit_on_open = true,
		},
	},
})
