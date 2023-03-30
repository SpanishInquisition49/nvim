require('mason').setup()
local dap = require('dap')
local dapui = require('dapui')
require('persistent-breakpoints').setup{
	load_breakpoints_event = { "BufReadPost" }
}

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
    miDebuggerPath = 'gdb',
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    args = {},
  },
}

dap.configurations.c = dap.configurations.c
dap.configurations.rust = dap.configurations.c

-- DAP UI Auto open on launch --
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
-- Breakpoint Icons --
vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg='#f38ba8', bg='#31353f' })
vim.api.nvim_set_hl(0, 'DapLogPoint', { fg='#f38ba8', bg='#31353f' })
vim.api.nvim_set_hl(0, 'DapStopped', { fg='#A6E3A1', bg='#31353f' })

vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text='󰜋', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' })
