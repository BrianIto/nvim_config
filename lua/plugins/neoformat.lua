return {
	"sbdchd/neoformat",
	config = function()
		vim.g.neoformat_enabled_javascript = { "biome format" }
		vim.g.neoformat_enabled_typescript = { "biome format" }
		vim.g.neoformat_enabled_json = { "biome format" }
		vim.g.neoformat_biome = {
			exe = "biome",
			args = { "format", "--stdin-file-path", '"%:p"' },
			stdin = 1,
		}
	end,
}
