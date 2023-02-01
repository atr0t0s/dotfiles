-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
  vim.g.mapleader = ' '
  vim.g.maplocalleader = ' '

-- Keymaps for better default experience
  vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Rewrite & Alias Defaults
  vim.keymap.set('i', 'jk', '<Esc>')
  vim.keymap.set('i', 'kj', '<Esc>')
  vim.keymap.set('n', '<leader>w', '<Esc>:w<Return>', { desc = 'Write file' })
  vim.keymap.set('n', '<leader>q', '<Esc>:q<Return>', { desc = 'Quit file' })
  vim.keymap.set('n', '<leader>e', '<Esc>:NvimTreeClose<Return>:qa<Return>', { desc = 'Quit Neovim' })

-- Dashboard
  vim.keymap.set('n', '<leader>*', '<Esc>:Alpha<Return>', { desc = 'Opens the Dashboard' })

-- File Explorer
  vim.keymap.set('n', '<leader>f', '<Esc>:NvimTreeToggle<Return>', { desc = 'Toggle Nvim-tree' })

-- Buffers
  vim.keymap.set('n', '<leader>x', '<Esc>:bprevious<bar>bdelete #<Return>', { desc = 'Close buffer' })
  vim.keymap.set('n', '<leader>[', '<Esc>:bprevious<Return>', { desc = 'Previous buffer' })
  vim.keymap.set('n', '<leader>]', '<Esc>:bnext<Return>', { desc = 'Next buffer' })

-- Git diff view
  vim.keymap.set('n', '<leader>dd', '<Esc>:DiffviewOpen<Return>', { desc = 'Open git diff view' })
  vim.keymap.set('n', '<leader>dc', '<Esc>:DiffviewClose<Return>', { desc = 'Close git diff view' })

-- Other Plugins
  -- Run HTTP Requests
  vim.keymap.set('n', '<leader>rs', '<Plug>RestNvim', { desc = 'Run HTTP request under cursor' })
  vim.keymap.set('n', '<leader>rsp', '<Plug>RestNvimPreview', { desc = 'Preview HTTP request under cursor' })
  vim.keymap.set('n', '<leader>rsl', '<Plug>RestNvimLast', { desc = 'Re-run last HTTP request' })
  -- Floating Terminal Open/Close
  vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<Return>', { desc = 'Open terminal' })
  vim.keymap.set('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<Return>', { desc = 'Close terminal' })

-- Window Management
  vim.keymap.set('n', '<C-w>z', '<CMD>WindowsMaximize<Return>')
  vim.keymap.set('n', '<C-w>_', '<CMD>WindowsMaximizeVertically<Return>')
  vim.keymap.set('n', '<C-w>|', '<CMD>WindowsMaximizeHorizontally<Return>')
  vim.keymap.set('n', '<C-w>=', '<CMD>WindowsEqualize<Return>')
  vim.keymap.set('n', '<leader>l', '<Esc><c-w>l', { desc = 'Move to right pane' })
  vim.keymap.set('n', ';', '<C-w>w', { desc = 'Cycle windows' })
  vim.keymap.set('n', '<leader>h', '<Esc><c-w>h', { desc = 'Move to left pane' })
  vim.keymap.set('n', '<leader>j', '<Esc><c-w>j', { desc = 'Move to down pane' })
  vim.keymap.set('n', '<leader>k', '<Esc><c-w>k', { desc = 'Move to up pane' })

-- Remap for dealing with word wrap
  vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
  vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Telecope
  vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
  vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
  vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = '[/] Fuzzily search in current buffer]' })
  -- Find files in current workspace
  vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
  -- Get help. PDE help.
  vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
  -- Search current workspace with Grep
  vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
  -- Search current workspace fuzzily
  vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
  -- Search LSP messages
  vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
  -- Show PDE messages in Telescope
  vim.keymap.set('n', '<leader>sn', '<Esc>:Noice telescope<Return>', { desc = 'Noice messages' })
  -- Yank History
  vim.keymap.set('n', '<leader>y', '<CMD>lua require("telescope").extensions.neoclip.default()<Return>', { desc = 'Yank History' })

-- Symbols Outline
  vim.keymap.set('n', '<leader>o', '<Esc>:SymbolsOutline<Return>', { desc = "Outline" })

-- Diagnostic keymaps
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
  vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Floating windows diagnostics' })
  vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = 'Add buffer diagnostics' })
