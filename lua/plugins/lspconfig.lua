return {
	-- LSP Configuration Plugin
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		priority = 1000,
		dependencies = {
			"williamboman/mason.nvim", -- Ensure LSP servers are installed
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			local lspconfig = vim.lsp.config
			local util = require("lspconfig.util")

			-- Ensure Mason is set up
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "ts_ls", "lua_ls", "gopls" },
			})
			vim.lsp.enable("ts_ls")
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("gopls")
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
		end,
	},
}
