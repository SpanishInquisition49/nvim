require('mason').setup()
local dap = require('dap')
local dapui = require('dapui')
dapui.setup()

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = vim.fn.expand('~/.local/share/nvim/mason/bin/OpenDebugAD7'),
    args = {},
}

dap.configurations.c = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    MIMode = 'gdb',
    miDebuggerPAth = 'gdb',
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    args = {},
  },
}

dap.configurations.c = dap.configurations.c
dap.configurations.rust = dap.configurations.c

-- Debug --
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
vim.keymap.set('n', '<Leader>dl', function()
    dap.set_breakpoint({ log_message = vim.fn.input('Log point message: ')});
end)
vim.keymap.set("n", "<F5>", dap.continue, {})
vim.keymap.set("n", "<F10>", dap.step_over, {})
vim.keymap.set("n", "<F11>", dap.step_into, {})
vim.keymap.set("n", "<F12>", dap.step_out, {})
vim.keymap.set('n', '<Leader>dr', dap.repl.open, {})
vim.keymap.set('n', '<leader>du', dapui.toggle, {})
-- DAP UI Auto Toggle --
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
-- Breakpoint Icons --
vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg='#f38ba8', bg='#31353f' })
vim.api.nvim_set_hl(0, 'DapLogPoint', { fg='#f38ba8', bg='#31353f' })
vim.api.nvim_set_hl(0, 'DapStopped', { fg='#fab387', bg='#31353f' })

vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='󰜋', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text='󰜋', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' })
