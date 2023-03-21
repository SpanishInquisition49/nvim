-- Code diagnostics
local diagnostic = require("galaxyline.providers.diagnostic")
-- Version control
local vcs = require("galaxyline.providers.vcs")
-- Core files information
local fileinfo = require("galaxyline.providers.fileinfo")
-- Extensions, aka plugins
local extension = require("galaxyline.providers.extensions")
-- Neovim highlighting
local colors = require("galaxyline.highlighting")
-- Buffer information, e.g. corresponding icon
local buffer = require("galaxyline.providers.buffer")
-- Search results
local search = require("galaxyline.providers.search")
-- Spacing
local whitespace = require("galaxyline.providers.whitespace")
-- Active language server information
local lspclient = require("galaxyline.providers.lsp")

local condition = require("galaxyline.condition")

---- Providers
BufferIcon  = buffer.get_buffer_type_icon
BufferNumber = buffer.get_buffer_number
FileTypeName = buffer.get_buffer_filetype
-- Git Provider
if condition.check_git_workspace() then
    GitBranch = vcs.get_git_branch
    DiffAdd = vcs.diff_add             -- support vim-gitgutter vim-signify gitsigns
    DiffModified = vcs.diff_modified   -- support vim-gitgutter vim-signify gitsigns
    DiffRemove = vcs.diff_remove       -- support vim-gitgutter vim-signify gitsigns
end
-- Search Provider
SearchResults = search.get_results
-- File Provider
LineColumn = fileinfo.line_column
FileFormat = fileinfo.get_file_format
FileEncode = fileinfo.get_file_encode
FileSize = fileinfo.get_file_size
FileIcon = fileinfo.get_file_icon
FileName = fileinfo.get_current_file_name
LinePercent = fileinfo.current_line_percent
ScrollBar = extension.scrollbar_instance
VistaPlugin = extension.vista_nearest
-- Whitespace
Whitespace = whitespace.get_item
-- Diagnostic Provider
DiagnosticError = diagnostic.get_diagnostic_error
DiagnosticWarn = diagnostic.get_diagnostic_warn
DiagnosticHint = diagnostic.get_diagnostic_hint
DiagnosticInfo= diagnostic.get_diagnostic_info
-- LSP
GetLspClient = lspclient.get_lsp_client


---- Public libs
-- Get file icon color
--require("galaxyline.providers.fileinfo").get_file_icon_color()
-- Custom file icon with color
--localmy_icons = require("galaxyline.providers.fileinfo").define_file_icon()
--my_icons['yourfile type here'] = { color code, icon}
--If your filetype does is not defined in neovim  you can use file extensions
--my_icons['yourfile ext  in here'] = { color code, icon}

----built-in conditions
--if buffer not empty return true else false
--condition.buffer_not_empty()
--if winwidth(0)/ 2 > 40 true else false
--condition.hide_in_width()
--find git root, you can use this to check if the project is a git workspace
--condition.check_git_workspace()


---- built-in theme
-- local colors = require("galaxyline.themes.colors").default
--- Palette:
-- fg = "#bbc2cf"
-- yellow = "#ECBE7B"
-- cyan = "#008080"
-- darkblue = "#081633"
-- green = "#98be65"
-- orange = "#FF8800"
-- violet = "#a9a1e1"
-- magenta = "#c678dd"
-- blue = "#51afef"
-- red = "#ec5f67o
--
