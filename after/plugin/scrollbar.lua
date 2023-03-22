local scrollbar = require('scrollbar')
local gitsigns = require('gitsigns')

gitsigns.setup {
    signcolumn = false,
    current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'right_align',
        delay = 1000,
    },
    current_line_blame_formatter = '<author>,<author_time:%Y-%m-%d> - <summary>',
}
require('scrollbar.handlers.gitsigns').setup()
scrollbar.setup()

