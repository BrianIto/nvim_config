return {
	"ahmedkhalf/project.nvim",
	requires = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("project_nvim").setup({
			detection_methods = { "pattern" },
			patterns = { ".git", "Makefile", "package.json" },
			silent_chdir = false,
			update_cwd = true,
			respect_buf_cwd = true,
		})
		require("telescope").load_extension("projects")
	end,
}
