dap = require('dap')
lspconfig = require('lspconfig')

vim.keymap.set('n', "<leader>g", '<cmd> CMakeGenerate <CR>')
vim.keymap.set('n', "<leader>b", '<cmd> CMakeBuild <CR>')
vim.keymap.set('n', "<leader>G", '<cmd> CMakeGenerate! <CR>')
vim.keymap.set('n', "<leader>B", '<cmd> CMakeBuild! <CR>')
vim.keymap.set('n', "<leader>R", '<cmd> CMakeRun <CR>')

lspconfig.clangd.setup({
  on_attach = on_attach,
  on_new_config = function(new_config, new_cwd)
    local status, cmake = pcall(require, "cmake-tools")
    if status then
      cmake.clangd_on_new_config(new_config)
    end
  end,
})

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
