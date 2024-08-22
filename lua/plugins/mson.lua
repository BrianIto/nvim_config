return { 
	{
	'williamboman/mason.nvim',
	config = function()
		require("mason").setup()
	end
	},
	{
	'williamboman/mason-lspconfig.nvim',
    	config = function()
      		require('mason-lspconfig').setup({
        		ensure_installed = { 'pyright', 'tsserver', 'clangd' },  -- Add the servers you want to install
      		})
    	end,
	},
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local mason_lspconfig = require('mason-lspconfig')

      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      })
    end,
  },
}

