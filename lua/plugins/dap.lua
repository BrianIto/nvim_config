return {
    -- Core DAP plugin
    {
        "mfussenegger/nvim-dap",
        lazy = true
    },
    -- Go-specific DAP extension
    {
        "leoluz/nvim-dap-go",
        lazy = true,
        dependencies = {"mfussenegger/nvim-dap"},
        config = function()
            require("dap-go").setup()
        end
    },
    -- Optional but recommended UI plugins
    {
        "rcarriga/nvim-dap-ui",
        lazy = true,
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"}, -- Add nvim-nio as dependency
        config = function()
            require("dapui").setup()
            -- Connect DAP UI with DAP events
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.before.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    },
    -- Shows variable values as virtual text (optional)
    {
        "theHamsta/nvim-dap-virtual-text",
        lazy = true,
        dependencies = {"mfussenegger/nvim-dap"},
        config = function()
            require("nvim-dap-virtual-text").setup()
        end
    },
    -- Required dependency for nvim-dap-ui
    {
        "nvim-neotest/nvim-nio",
        lazy = true
    }
}
