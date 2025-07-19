require("config.lazy")

require("dap-go").setup()

-- Basic keymaps
vim.keymap.set(
    "n",
    "<F5>",
    function()
        require("dap").continue()
    end
)
vim.keymap.set(
    "n",
    "<F10>",
    function()
        require("dap").step_over()
    end
)
vim.keymap.set(
    "n",
    "<F11>",
    function()
        require("dap").step_into()
    end
)
vim.keymap.set(
    "n",
    "<F12>",
    function()
        require("dap").step_out()
    end
)
vim.keymap.set(
    "n",
    "<leader>b",
    function()
        require("dap").toggle_breakpoint()
    end
)
vim.keymap.set(
    "n",
    "<leader>du",
    function()
        require("dapui").toggle()
    end
)

vim.opt.number = true
vim.diagnostic.config({virtual_text = false})
vim.o.splitright = true
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>p", "<cmd>Telescope projects<CR>", {desc = "Projects"})
vim.keymap.set("n", "<leader>f", "<cmd>Telescope live_grep<CR>", {desc = "Live Grep"})
