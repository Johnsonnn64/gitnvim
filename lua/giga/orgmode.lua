require('orgmode').setup_ts_grammar()

-- orgmode
require('orgmode').setup({
  org_agenda_files = {'~/personal/org/*'},
  org_default_notes_file = '~/personal/org/index.org',
  org_agenda_start_on_weekday = 7,
  org_agenda_skip_deadline_if_done = true,
  -- org_todo_keywords = {'TODO', 'WAITING', '|', 'DONE'},
  calendar_week_start_day = 0,
  win_split_mode = "edit",
})
