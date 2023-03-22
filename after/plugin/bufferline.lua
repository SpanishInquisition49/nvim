require('bufferline').setup {
    options = {
        mode = 'buffers',
        offsets = {
            {
                filetype = 'NvimTree',
                text_align = 'center',
                text = 'File Explorer',
            },
            {
                filetype = 'undotree',
                text_align = 'center',
                text = 'Undo Tree'
            }
        },
    }
}

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
