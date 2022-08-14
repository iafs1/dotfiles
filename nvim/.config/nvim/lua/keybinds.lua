-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Other keymaps
vim.api.nvim_set_keymap('i', 'jk', '<esc>', {noremap=true})
vim.api.nvim_set_keymap('i', 'kj', '<esc>', {noremap=true})
vim.keymap.set('n', '<leader>r', '<Cmd>%SnipRun<CR>')
vim.keymap.set('n', '<leader>n', '<Cmd>NvimTreeToggle<CR>')

-- Tab cycle
vim.keymap.set('n', '<Tab>', '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferNext<CR>')