require('orgmode').setup_ts_grammar()

-- orgmode
require('orgmode').setup {
  org_agenda_files = { '~/personal/org/*' },
  org_archive_location = 'archive/%s_archive',
  org_agenda_start_on_weekday = 7,
  org_agenda_skip_deadline_if_done = true,
  org_todo_keywords = { 'TODO', 'HW', 'PT', '|', 'DONE' },
  calendar_week_start_day = 0,
  win_split_mode = "tabnew",
  org_capture_templates = {
    h = {
      description = 'Homework',
      template = '\n* HW %?\n  %u\n',
      target = '~/personal/org/homework.org',
    },
    p = {
      description = 'PT',
      template = '\n* PT %?\n  %u\n',
      target = '~/personal/org/homework.org',
    }
  }
}
