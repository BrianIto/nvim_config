return {
    -- LSP Configuration Plugin
    {
        "neovim/nvim-lspconfig",
		lazy = false,
	priority = 1000,
        dependencies = {
            "williamboman/mason.nvim", -- Ensure LSP servers are installed
            "williamboman/mason-lspconfig.nvim"
        },
        config = function()
            local lspconfig = require("lspconfig")
            local util = require("lspconfig.util")

            -- Ensure Mason is set up
            require("mason").setup()
            require("mason-lspconfig").setup(
                {
                    ensure_installed = { "ts_ls", "lua_ls", "gopls"}
                }
            )
            lspconfig.lua_ls.setup({})
            lspconfig.svelte.setup({})
            lspconfig.ts_ls.setup({})
		lspconfig.gopls.setup({})
            --lspconfig.ts_ls.setup{
            --	init_options = {
            --plugins = {
            --	{
            --		name = "@vue/typescript-plugin",
            --languages = {"javascript", "typescript", "vue"},
            --},
            --},
            --},
            --filetypes = {
            --	"javascript",
            --"typescript",
            --"vue",
            --},
            --}
        end
    }
}
