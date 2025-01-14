return {
	-- Debugging framework
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui", -- UI for DAP
			"theHamsta/nvim-dap-virtual-text", -- Inline values
			"nvim-neotest/nvim-nio", -- Required dependency for dap ui
		},
		config = function()
			require("dapui").setup()
			require("nvim-dap-virtual-text").setup()
		end,
	},
}
