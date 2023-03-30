local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
    [[                                                                        ]],
    [[     ##### #     ##                                                     ]],
    [[  ######  /#    #### /                             #                    ]],
    [[ /#   /  / ##    ###/                             ###                   ]],
    [[/    /  /  ##    # #                  ##           #                    ]],
    [[    /  /    ##   #                    ##                                ]],
    [[   ## ##    ##   #    /##       /###   ##    ### ###   ### /### /###    ]],
    [[   ## ##     ##  #   / ###     / ###  / ##    ### ###   ##/ ###/ /##  / ]],
    [[   ## ##     ##  #  /   ###   /   ###/  ##     ### ##    ##  ###/ ###/  ]],
    [[   ## ##      ## # ##    ### ##    ##   ##      ## ##    ##   ##   ##   ]],
    [[   ## ##      ## # ########  ##    ##   ##      ## ##    ##   ##   ##   ]],
    [[   #  ##       ### #######   ##    ##   ##      ## ##    ##   ##   ##   ]],
    [[      /        ### ##        ##    ##   ##      ## ##    ##   ##   ##   ]],
    [[  /##/          ## ####    / ##    ##   ##      /  ##    ##   ##   ##   ]],
    [[ /  #####           ######/   ######     ######/   ### / ###  ###  ###  ]],
    [[/     ##             #####     ####       #####     ##/   ###  ###  ### ]],
    [[#                                                                       ]],
    [[ ##                                                                     ]],
}

dashboard.section.buttons.val = {
    dashboard.button('f', '󰈞 Find File', ':Telescope find_files <CR>'),
    dashboard.button('e', '󰝒 New File', ':ene <CR>'),
    dashboard.button('s', ' Settings' , ':e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>'),
    dashboard.button('u', '󰐱 Update Plugins', ':lua require("packer").update'),
    dashboard.button('q', '󰅙 Quit Neovim', ':qa <CR>')
}

dashboard.section.footer.val = {
    [[          Better Than VS Code          ]],
    [[       The Spanish Inquisition       ]],
}

alpha.setup(dashboard.opts)
