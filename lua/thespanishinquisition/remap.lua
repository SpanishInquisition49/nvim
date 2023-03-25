vim.g.mapleader = " "

-- File Explorer --
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>fe', vim.cmd.NvimTreeFocus)
-- Buffer Navigation --
vim.keymap.set('n', '<leader>1', function() vim.cmd.BufferLineGoToBuffer(1) end, {})
vim.keymap.set('n', '<leader>2', function() vim.cmd.BufferLineGoToBuffer(2) end, {})
vim.keymap.set('n', '<leader>3', function() vim.cmd.BufferLineGoToBuffer(3) end, {})
vim.keymap.set('n', '<leader>4', function() vim.cmd.BufferLineGoToBuffer(4) end, {})
vim.keymap.set('n', '<leader>5', function() vim.cmd.BufferLineGoToBuffer(5) end, {})
vim.keymap.set('n', '<leader>6', function() vim.cmd.BufferLineGoToBuffer(6) end, {})
vim.keymap.set('n', '<leader>7', function() vim.cmd.BufferLineGoToBuffer(7) end, {})
vim.keymap.set('n', '<leader>8', function() vim.cmd.BufferLineGoToBuffer(8) end, {})
vim.keymap.set('n', '<leader>9', function() vim.cmd.BufferLineGoToBuffer(9) end, {})
vim.keymap.set('n', '<leader>0', function() vim.cmd.BufferLineGoToBuffer(0) end, {})
vim.keymap.set('n','<leader>q', function() vim.cmd('bd') end, {})
-- Toggle LSP diagnostic --
vim.keymap.set("n", "<leader>ld", vim.cmd.ToggleDiag)
-- Toggle Terminal --
vim.keymap.set('n', '<C-t>', vim.cmd.ToggleTerm, {})
vim.keymap.set('t', '<C-t>', vim.cmd.ToggleTerm, {})
