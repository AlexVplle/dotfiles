local statusMason, mason = pcall(require, "mason")

if not statusMason then
    vim.notify("mason not installed, please install with :PlugInstall\n")
    return
end

local statusMasonLspConfig, masonLspConfig = pcall(require, "mason-lspconfig")

if not statusMasonLspConfig then
    vim.notify("mason-lspconfig not installed, please install with :PlugInstall\n")
    return
end

mason.setup()
masonLspConfig.setup({
    ensure_installed = { 'pyright', 'tsserver', 'html', 'clangd', 'lua_ls', 'cssls', 'jsonls', 'eslint', 'bashls'},
    automatic_installation = true,
})
