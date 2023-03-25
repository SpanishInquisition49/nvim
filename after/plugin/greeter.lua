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
    dashboard.button('q', '󰅙 Quit Neovim', ':qa <CR>')
}

dashboard.section.footer.val = ' The Spanish Inquisition '

alpha.setup(dashboard.opts)
