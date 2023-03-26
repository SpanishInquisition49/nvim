vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#F38BA8 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#FAB387 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#A6E3A1 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#89B4FA gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#CBA6F7 gui=nocombine]]

vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
