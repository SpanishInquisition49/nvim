local dap = require('dap')

dap.defaults.fallback.terminal_win_cmd = 'tabnew'

-- Toggle Breakpoint
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
-- Set LogPoint
vim.keymap.set('n', '<Leader>dl', function() 
    dap.set_breakpoint({ log_message = vim.fn.input('Log point message: ')}); 
end)
-- Continue Execution
vim.keymap.set("n", "<F5>", dap.continue, {})
-- Step Over (Next)
vim.keymap.set("n", "<F10>", dap.step_over, {})
-- Step Into
vim.keymap.set("n", "<F11>", dap.step_into, {})
-- Step Out
vim.keymap.set("n", "<F12>", dap.step_out, {})
-- Status Inspection
vim.keymap.set('n', '<Leader>dr', dap.repl.open, {})

