local function get_rice()
    return vim.api.nvim_exec('!cat ~/.config/.rice', true):sub(23)
end

local function rice_to_theme(rice)
    local theme = 'catppuccin'
    if rice:find('sakura-night', 1, true) then
        theme = 'catppuccin'
    elseif rice:find('gruvbox-dark', 1, true) then
        theme = 'gruvbox'
    elseif rice:find('midnight-love', 1, true) then
        theme = 'onedark'
    elseif(rice:find('pine-light', 1, true)) then
        theme = 'rose-pine'
    end
    return theme
end

function CurrentTheme()
    print(rice_to_theme(get_rice()))
end

function ColorMyPencils(color)
	color = color or rice_to_theme(get_rice())
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end


ColorMyPencils()
