return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	require("telescope").setup({
		extensions = {
			projects = {
				default_action = "cd",
			},
		},
	}),
	dependencies = { "nvim-lua/plenary.nvim" },
}
