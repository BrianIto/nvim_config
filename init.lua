require("config.lazy")

vim.opt.number = true
vim.diagnostic.config({ virtual_text = false })
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>p", "<cmd>Telescope projects<CR>", { desc = "Projects" })
vim.keymap.set("n", "<leader>f", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
