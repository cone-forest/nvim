local dap = require('dap')
local dapui = require("dapui")
local telescope = require('telescope')
local daptext = require("nvim-dap-virtual-text")

vim.fn.sign_define(
    "DapBreakpoint",
    { text = "●", texthl = "", linehl = "", numhl = "debugBreakpoint" }
)
vim.fn.sign_define(
    "DapBreakpointCondition",
    { text = "◆", texthl = "", linehl = "debugBreakpoint", numhl = "debugBreakpoint" }
)
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "", linehl = "debugPC", numhl = "debugPC" })
dap.defaults.fallback.force_external_terminal = true
daptext.setup()
dapui.setup({
    layouts = {
        {
            elements = {
                "watches",
                { id = "scopes", size = 0.5 },
                { id = "repl", size = 0.15 },
            },
            size = 79,
            position = "left",
        },
        {
            elements = {
                "console",
            },
            size = 0.25,
            position = "bottom",
        },
    },
  })

telescope.load_extension('dap')
