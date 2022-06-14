require('orgmode').setup_ts_grammar()

-- orgmode
require('orgmode').setup({
  org_agenda_files = {'~/personal/org/*'},
  org_default_notes_file = '~/personal/org/index.org',
})

-- bullet symbols
require('org-bullets').setup {
  symbols = { "◉", "○", "✸", "✿" }
}
