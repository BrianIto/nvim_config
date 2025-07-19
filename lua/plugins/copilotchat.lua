return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			"zbirenbaum/copilot.lua",
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			window = {
				width = 0.33,
				relative = "editor",
			},
			keys = {
				{ "<leader>cc", "<cmd>CopilotChat<cr>", desc = "Open CopilotChat" },
			},
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
}
