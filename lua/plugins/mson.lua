return { 
	{
	'williamboman/mason.nvim',
	config = function()
		require("mason").setup()
	end
	},
	 {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup {}
            lspconfig.pyright.setup {}
            lspconfig.tsserver.setup {}
        end
    },
}
