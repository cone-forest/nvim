local dap = require('dap')

vim.keymap.set('n', '<F4>',
[[:lua 
  require('dap').terminate() 
  require('dapui').close() 
  require('dap').repl.close()
<CR>]])
vim.keymap.set('n', '<F5>', ':lua require(\'dap\').continue()<CR>')
vim.keymap.set('n', '<F10>', ':lua require(\'dap\').step_over()<CR>')
vim.keymap.set('n', '<F11>', ':lua require(\'dap\').step_into()<CR>')
vim.keymap.set('n', '<F12>', ':lua require(\'dap\').step_out()<CR>')
vim.keymap.set('n', '<F9>', ':lua require(\'dap\').toggle_breakpoint()<CR>')

dap.adapters = {
  python = {
    type = 'executable';
    command = 'python',
    args = { '-m', 'debugpy.adapter' };
  },
  codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      command = "/usr/bin/codelldb",
      args = { "--port", "${port}" },
    },
  },
}

-- dap.configurations.cpp = {{
--   name = "Launch",
--   type = "codelldb",
--   request = "launch",
--   program = function()
--       return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--     end,
--     cwd = '${workspaceFolder}',
--     stopOnEntry = false,
--     args = {},
-- }}
dap.configurations.cpp = {
  {
    type = "codelldb",
    request = "launch",
    program = vim.fn.expand('%:t:r'),
    args = function ()
      local argv = {}
      arg = vim.fn.input(string.format("argv: "))
      for a in string.gmatch(arg, "%S+") do
        table.insert(argv, a)
      end
      vim.cmd('echo ""')
      return argv
    end,
    cwd = "${workspaceFolder}",
    -- Uncomment if you want to stop at main
    stopAtEntry = true,
    MIMode = "gdb",
    miDebuggerPath = "/usr/bin/gdb",
    setupCommands = {
      {
        text = "-enable-pretty-printing",
        description = "enable pretty printing",
        ignoreFailures = false,
      },
    },
  },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.python = {{type = "python"}}
dap.configurations.go = {{type = "go"}}
dap.configurations.lua = {{type = "lua"}}
