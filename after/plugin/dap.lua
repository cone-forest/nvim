local dap = require('dap')

vim.keymap.set('n', '<F5>', ':lua require(\'dap\').continue()<CR>')
vim.keymap.set('n', '<F10>', ':lua require(\'dap\').step_over()<CR>')
vim.keymap.set('n', '<F11>', ':lua require(\'dap\').step_into()<CR>')
vim.keymap.set('n', '<F12>', ':lua require(\'dap\').step_out()<CR>')
vim.keymap.set('n', '<F9>', ':lua require(\'dap\').toggle_breakpoint()<CR>')

dap.adapters = {
  python = {
    type = 'executable';
    command = os.getenv('HOME') .. '/.virtualenvs/tools/bin/python';
    args = { '-m', 'debugpy.adapter' };
  },
  cpp = {
    type = 'executable';
    command = '';
    args = {};
  }
}

