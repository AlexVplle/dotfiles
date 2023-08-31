local statusLsp, lsp = pcall(require, "lspconfig")

if not statusLsp then
    vim.notify("lspconfig not installed, please install with :PlugInstall\n")
    return
end

local statusCmpLsp, cmpLsp = pcall(require, 'cmp_nvim_lsp')

if not statusCmpLsp then
    vim.notify("cmp_nvim_lsp not installed, please install with :PlugInstall\n")
    return
end

local statusRustTools, rustTools = pcall(require, 'rust-tools')

if not statusRustTools then
	vim.notify("rust-tools not installed, please install with :PlugInstall\n")
	return
end

local servers = { ['pyright'] = {},
    ['tsserver'] = {},
    ['html'] = {},
    ['clangd'] = {},
    ['cssls'] = {},
    ['sumneko_lua'] = { Lua = { diagnostics = { globals = { 'vim' } },
        workspace = { library = vim.api.nvim_get_runtime_file("", true) } } },
    ['jsonls'] = {},
    ['eslint'] = {},
    ['bashls'] = {},
    ['prismals'] = {},
	['glslls'] = {},
}

local capabilities = cmpLsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(_, bufnr)
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "f", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
end

for server, opts in pairs(servers) do
    lsp[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = opts,
    }
end

rustTools.setup({
    server = {
        on_attach = function(_, bufnr)
            local opts = { noremap = true, silent = true }
            -- Hover actions
            vim.keymap.set("n", "<C-space", rustTools.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rustTools.code_action_group.code_action_group, { buffer = bufnr })
            vim.api.nvim_buf_set_keymap(bufnr, "n", "rf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", opts) -- to format with null ls source
        end,
    },
})
