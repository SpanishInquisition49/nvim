local wk = require('which-key')

wk.register({
    -- File Explorer --
    ['<leader>e'] = {'<cmd>NvimTreeToggle<cr>', 'Toggle Explorer'},
    -- Focus --
    ['<leader>f'] = { name = '+Focus'},
    ['<leader>fe'] = {'<cmd>NvimTreeFocus<cr>', 'Explorer'},
    ['<leader>fu'] = {'<cmd>UndotreeFocus<cr>', 'Undotree'},
    -- Tabs Navigation --
    ['<leader>t'] = { name = '+Tabs' },
    ['<leader>t1'] = {function() vim.cmd.BufferLineGoToBuffer(1) end, 'Tab 1'},
    ['<leader>t2'] = {function() vim.cmd.BufferLineGoToBuffer(2) end, 'Tab 2'},
    ['<leader>t3'] = {function() vim.cmd.BufferLineGoToBuffer(3) end, 'Tab 3'},
    ['<leader>t4'] = {function() vim.cmd.BufferLineGoToBuffer(4) end, 'Tab 4'},
    ['<leader>t5'] = {function() vim.cmd.BufferLineGoToBuffer(5) end, 'Tab 5'},
    ['<leader>t6'] = {function() vim.cmd.BufferLineGoToBuffer(6) end, 'Tab 6'},
    ['<leader>t7'] = {function() vim.cmd.BufferLineGoToBuffer(7) end, 'Tab 7'},
    ['<leader>t8'] = {function() vim.cmd.BufferLineGoToBuffer(8) end, 'Tab 8'},
    ['<leader>t9'] = {function() vim.cmd.BufferLineGoToBuffer(9) end, 'Tab 9'},
    ['<leader>t0'] = {function() vim.cmd.BufferLineGoToBuffer(0) end, 'Tab 10'},
    ['<leader>q'] = {'<cmd>bd<cr>', 'Close Tab'},
    -- Git --
    ['<leader>g'] = { name = '+Git' },
    ['<leader>gS'] = {'<cmd>Telescope git_stash<cr>', 'Stash'},
    ['<leader>gb'] = {'<cmd>Telescope git_branches<cr>', 'Branches'},
    ['<leader>gc'] = {'<cmd>Telescope git_commits<cr>', 'Commits'},
    ['<leader>gf'] = {'<cmd>Telescope git_files<cr>', 'Files'},
    ['<leader>gs'] = {'<cmd>Git<cr>', 'Status'},
    -- Debug --
    ['<leader>d'] = { name = '+Debug'},
    ['<leader>db'] = {'<cmd>DapToggleBreakpoint<cr>', 'Toggle Breakpoint'},
    ['<leader>dl'] = {function() require('dap').set_breakpoint( { log_message = vim.fn.input('Log point message: ') } ) end, 'LogPoint'},
    ['<leader>du'] = {function() require('dapui').toggle() end, 'Toggle Dap Ui'},
    ['<F5>'] = {'<cmd>DapContinue<cr>', 'Debug Continue'},
    ['<F10>'] = {'<cmd>DapStepOver<cr>', 'Debug Step Over'},
    ['<F11>'] = {'<cmd>DapStepInto<cr>', 'Debug Step Into'},
    ['<F12>'] = {'<cmd>DapStepOut<cr>', 'Debug Step Out'},
    -- Terminal --
    ['<C-T>'] = {'<cmd>ToggleTerm<cr>', 'Toggle Terminal'},
    -- LSP --
    ['<leader>l'] = { name = '+LSP' },
    ['<leader>ld'] = {'<cmd>ToggleDiag<cr>', 'Toggle Diagnostics'},
    ['<leader>li'] = {'<cmd>IndentBlanklineToggle<cr>', 'Toggle Indent Line'},
    -- Undotree --
    ['<leader>u'] = {'<cmd>UndotreeToggle<cr>', 'Toggle Undotree'},
    -- Project --
    ['<leader>p'] = { name = 'Project'},
    ['<leader>pf'] = {'<cmd>Telescope find_files<cr>', 'Find File'},
})
