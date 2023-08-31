local status, alpha = pcall(require, 'alpha')

if not status then
	vim.notify("alpha not installed, please install with :PlugInstall\n")
	return
end

local dashboard = require 'alpha.themes.dashboard'

dashboard.section.buttons.val = {
	dashboard.button("f", "Find File", "<cmd>Telescope find_files<CR>"),
	dashboard.button("b", "File Browser", "<cmd>Telescope file_browser<CR>")
}

alpha.setup(dashboard.opts)
