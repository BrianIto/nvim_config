return {
  -- LSP Configuration Plugin
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",  -- Ensure LSP servers are installed
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      -- Ensure Mason is set up
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "volar", "ts_ls" } -- Ensure TypeScript & Vue LSPs are installed
      })
	lspconfig.lua_ls.setup({})
      lspconfig.volar.setup({
        filetypes = { "vue" },
      })
			lspconfig.svelte.setup({})
	lspconfig.ts_ls.setup({})
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
