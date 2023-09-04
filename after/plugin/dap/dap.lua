local dap = require('dap')

vim.keymap.set('n', '<F4>', '<cmd> DapTerminate <CR>')
vim.keymap.set('n', '<F5>', '<cmd> DapContinue <CR>')
vim.keymap.set('n', '<F10>', '<cmd> DapStepOver <CR>')
vim.keymap.set('n', '<F11>', '<cmd> DapStepInto <CR>')
vim.keymap.set('n', '<F12>', '<cmd> DapStepOut <CR>')
vim.keymap.set('n', '<F9>', '<cmd> DapToggleBreakpoint <CR>')

dap.adapters = {
  python = {
    type = 'executable';
    command = 'python',
    args = { '-m', 'debugpy.adapter' };
  },
  codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
      command = '/usr/bin/codelldb',
      args = {"--port", "${port}"},
    },
  },
 }

dap.configurations.cpp = {{
  name = "Launch",
  type = "codelldb",
  request = "launch",
  program = function()
    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  end,
  cwd = '${workspaceFolder}',
  stopOnEntry = false,
}}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

dap.configurations.python = {{
  name = "debugpy",
  type = "python",
  request = "launch",
  program = "${file}",
  pythonPath = function()
    return '/usr/bin/python'
  end,
}}
-- dap.configurations.go = {{type = "go"}}
-- dap.configurations.lua = {{type = "lua"}}
