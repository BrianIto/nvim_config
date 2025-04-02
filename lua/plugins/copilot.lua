return {}
--[[return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_no_tab_map = true
		vim.api.nvim_set_keymap("i", "<leader><Tab>", "copilot#Accept('<CR>')", { expr=true, silent = true })
		require("copilot").setup({
			suggestion = { enabled = true },
			panel = { enabled = true },
		})
	end,
}--]]
