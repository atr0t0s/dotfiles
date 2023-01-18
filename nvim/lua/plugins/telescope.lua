-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  pickers = {
    buffers = {
      initial_mode = "normal"
    },
    find_files = {
      hidden = true,
      find_command = {
        'rg',
        '--color=never',
        '--files',
        '--no-ignore',
        '--iglob',
        '!.git',
        '--iglob',
        '!node_modules/**/*',
        '--iglob',
        '!.idea/',
        '--iglob',
        '!dist/',
        '-L'
      }
    }
  },
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

