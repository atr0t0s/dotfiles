-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {'~/cloud/Dropbox/notes/*', '~/cloud/Dropbox/notes/projects/**/*', '~/cloud/Dropbox/notes/minutes/*', '~/cloud/Dropbox/notes/interestes/**/*'},
  org_default_notes_file = '~/cloud/Dropbox/notes/refile.org',
  mappings = {
    org = {
      org_toggle_checkbox = 'cic'
    }
  }
})

