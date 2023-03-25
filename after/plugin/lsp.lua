local lsp = require('lsp-zero')
local lsp_diagnostic = require('toggle_lsp_diagnostics')
local lsp_config = require('lspconfig')

lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
})

lsp.setup()
-- LUA Setup --
lsp_config.lua_ls.setup({
   settings = {
     Lua = {
       runtime = {
         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
         version = 'LuaJIT',
       },
       diagnostics = {
         -- Get the language server to recognize the `vim` global
         globals = {'vim'},
       },
       workspace = {
         -- Make the server aware of Neovim runtime files
         library = vim.api.nvim_get_runtime_file("", true),
       },
       -- Do not send telemetry data containing a randomized but unique identifier
       telemetry = {
         enable = false,
       },
     },
   },
})

lsp_diagnostic.init()
