return {
	"nvim-telescope/telescope.nvim",
	require("telescope").setup({
		extensions = {
			projects = {
				default_action = "cd",
			},
		},
	}),
	dependencies = { "nvim-lua/plenary.nvim" },
}
