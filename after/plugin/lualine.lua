vim.opt.showmode = false

local function git_stash_count()
    if vim.fn.isdirectory('.git') == 0 then
        return 0
    end
    local stash = vim.api.nvim_exec('!git stash list', true):sub(20)
    local _, count = string.gsub(stash, '\n', '')
    return count
end

local function get_node_version()
    local scripts = vim.api.nvim_exec('!node -v', true)
    return '󰎙 ' .. vim.trim((vim.split(scripts, '\n'))[3])
end

local function is_node_file()
    local bufnr = vim.api.nvim_get_current_buf()
    local type = vim.bo[bufnr].filetype
    if type == 'javascript' or type == 'typescript' then
        return true
    end
    return false
end

local function stash()
    return ' ' .. git_stash_count()
end

local function my_mode_fmt(str)
    local symbol = ''
    if str == 'INSERT' then
        symbol = ' 󰼭'
    elseif str == 'COMMAND' then
        symbol = ' '
    elseif str == 'NORMAL' then
        symbol = ' '
    elseif str == 'ALPHA' then
        symbol = ' 󰀫'
    else
        symbol = ' '
    end
    return str .. symbol
end

local alpha = {
    sections = {
        lualine_a = {
            { 'mode', fmt = function() return my_mode_fmt('ALPHA') end }
        },
        lualine_b = {
            { 'branch',  icon = {' ', color={fg='white'} } },
            { stash, cond = function() return git_stash_count() > 0 end },
        }
    },
    filetypes = {'alpha'}

}

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {
            { 'mode', fmt = my_mode_fmt }
        },
        lualine_b = {
            { 'branch',  icon = {' ', color={fg='white'} }, on_click = function() vim.cmd.Telescope("git_branches") end },
            { stash, cond = function()return git_stash_count() > 0 end },
            'diff',
        },
        lualine_c = {
            {
                'filename',
                symbols = {
                    modified = '󰷈 ',
                    readonly = ' ',
                    unnamed = '[No Name] ',
                    newfile = '󱪝 ',
                }
            },
            {
                'diagnostics',
                symbols = { error = '󰚽 ', warn='󰀦 ', info=' ', hint='󰌵 ' },
                always_visible = true
            },
        },
        lualine_x = {
            'encoding',
            'filesize',
            'fileformat',
            'filetype',
            {
                get_node_version,
                cond = is_node_file
            }
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {alpha, 'nvim-tree', 'fugitive', 'mundo', 'toggleterm', 'nvim-dap-ui'},
}
