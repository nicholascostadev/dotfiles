-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')


vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = "Find git tracked files" })
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Toggle Term
vim.keymap.set('n', '<C-t>', vim.cmd.ToggleTerm)
vim.keymap.set('t', '<C-t>', vim.cmd.ToggleTerm)

-- Buffer navigation
vim.keymap.set('n', 'L', vim.cmd.bnext)
vim.keymap.set('n', 'H', vim.cmd.bprev)

-- split window navigations
vim.keymap.set('n', '<C-j>', '<C-W>j')
vim.keymap.set('n', '<C-k>', '<C-W>k')
vim.keymap.set('n', '<C-h>', '<C-W>h')
vim.keymap.set('n', '<C-l>', '<C-W>l')

-- Moving lines up and down
vim.keymap.set('n', '<A-j>', ':m .+1<cr>')
vim.keymap.set('n', '<A-k>', ':m .-2<cr>')
vim.keymap.set('i', "<A-j>", "<Esc>:m .+1<cr>==gi")
vim.keymap.set('i', "<A-k>", "<Esc>:m .-2<cr>==gi")
vim.keymap.set('v', "<A-j>", ":m '>+1<cr>gv=gv")
vim.keymap.set('v', "<A-k>", ":m '<-2<cr>gv=gv")

-- save on ctrl+s
vim.keymap.set('n', "<C-s>", ":w<cr>")

-- Come to config
vim.keymap.set('n', '<leader>cC', ":e ~/.config/nvim/init.lua<cr>", { desc = "Goto config file"})
