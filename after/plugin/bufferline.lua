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
            },
            {
                filetype = 'dapui_watches',
                text_align = 'center',
                text = 'Debug'
            },
        },
    }
}

