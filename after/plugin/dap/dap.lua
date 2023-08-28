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
  lldb = {
    type = "executable",
    name = "lldb",
    command = "lldb",
  },
}

local cpp_conf = {type = "lldb"}
dap.configurations.cpp = {cpp_conf}
dap.configurations.lldb = {cpp_conf}

dap.configurations.python = {{type = "python"}}
dap.configurations.go = {{type = "go"}}
dap.configurations.lua = {{type = "lua"}}
dap.configurations.lua = {{type = "lua"}}
