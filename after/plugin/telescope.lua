local builtin = require('telescope.builtin')
local git = '<C-g>'
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-g>s', builtin.git_stash, {})
vim.keymap.set('n', '<C-g>f', builtin.git_files, {})
vim.keymap.set('n', '<C-g>b', builtin.git_branches, {})
vim.keymap.set('n', '<C-g>c', builtin.git_commits, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
