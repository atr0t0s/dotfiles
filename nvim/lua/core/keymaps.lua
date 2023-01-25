-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<leader>f', '<Esc>:NvimTreeToggle<Return>', { desc = 'Toggle Nvim-tree' })
vim.keymap.set('n', '<leader>l', '<Esc><c-w>l', { desc = 'Move to right pane' })
vim.keymap.set('n', '<leader>h', '<Esc><c-w>h', { desc = 'Move to left pane' })
vim.keymap.set('n', '<leader>j', '<Esc><c-w>j', { desc = 'Move to down pane' })
vim.keymap.set('n', '<leader>k', '<Esc><c-w>k', { desc = 'Move to up pane' })
vim.keymap.set('n', '<leader>x', '<Esc>:bprevious<bar>bdelete #<Return>', { desc = 'Close buffer' })
vim.keymap.set('n', '<leader>[', '<Esc>:bprevious<Return>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>]', '<Esc>:bnext<Return>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>w', '<Esc>:w<Return>', { desc = 'Write file' })
vim.keymap.set('n', '<leader>q', '<Esc>:q<Return>', { desc = 'Quit file' })
vim.keymap.set('n', '<leader>e', '<Esc>:qa<Return>', { desc = 'Quit Neovim' })
vim.keymap.set('n', '<leader>rs', '<Plug>RestNvim', { desc = 'Run HTTP request under cursor' })
vim.keymap.set('n', '<leader>rsp', '<Plug>RestNvimPreview', { desc = 'Preview HTTP request under cursor' })
vim.keymap.set('n', '<leader>rsl', '<Plug>RestNvimLast', { desc = 'Re-run last HTTP request' })
vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<Return>', { desc = 'Open terminal' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<Return>', { desc = 'Close terminal' })
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('v', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('v', 'kj', '<Esc>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sn', '<Esc>:Noice telescope<Return>', { desc = 'Noice messages' })
vim.keymap.set('n', '<leader>y', '<CMD>lua require("telescope").extensions.neoclip.default()<Return>', { desc = 'Yank History' })

vim.keymap.set('n', '<leader>o', '<Esc>:SymbolsOutline<Return>', { desc = "Outline" })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Floating windows diagnostics' })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = 'Add buffer diagnostics' })
