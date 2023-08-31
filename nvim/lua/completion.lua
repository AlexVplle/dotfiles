local statusCmp, cmp = pcall(require, 'cmp')

if not statusCmp then
	vim.notify("cmp not installed, please install with :PlugInstall\n")
	return
end

local statusLuasnip, luasnip = pcall(require, 'luasnip')

if not statusLuasnip then
	vim.notify("luasnip not installed, please install with :PlugInstall\n")
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end
	},
	sources = {
		{ name = 'nvim_lsp', keyword_length = 3},
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'buffer', keyword_length = 3},
		{ name = 'luasnip', keyword_length = 2},
		{ name = 'path', keyword_length = 3},
	};
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	window = {
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
		completion = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
	},
})
