local lsp = require('lsp-zero')
local lsp_diagnostic = require('toggle_lsp_diagnostics')

lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
})

lsp.setup()
lsp_diagnostic.init()
-- Toggle LSP diagnostic
vim.keymap.set("n", "<leader>ld", vim.cmd.ToggleDiag)
