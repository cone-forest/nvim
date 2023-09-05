vim.keymap.set('n', '<leader>;', vim.cmd.Ex)

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep search results in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- replace from buffer
vim.keymap.set('x', '<leader>i', '"_dP')

-- system and vim clipboard overlap
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')

-- trouble plugin
vim.keymap.set('n', '<leader>t', '<cmd> TroubleToggle <CR>')

-- dap plugin
vim.keymap.set('n', '<F5>', '<cmd> DapContinue <CR>')
vim.keymap.set('n', '<F4>', '<cmd> DapTerminate <CR>')
vim.keymap.set('n', '<F10>', '<cmd> DapStepOver <CR>')
vim.keymap.set('n', '<F11>', '<cmd> DapStepInto <CR>')
vim.keymap.set('n', '<F12>', '<cmd> DapStepOut <CR>')
vim.keymap.set('n', '<F9>', '<cmd> DapToggleBreakpoint <CR>')

-- undotree plugin
vim.keymap.set('n', '<leader>u', '<cmd> UndotreeToggle <CR>')
