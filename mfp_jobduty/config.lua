Config = {}
Translation = {}

Config.Locale = 'en' -- 'en' for english, 'de' for german
Config.Framework = 'ESX' -- or 'QBCORE'

Config.DutyLocations = {
  { ['x'] = -1850.2,  ['y'] = -336.3,  ['z'] =  49.5}, -- LSMD
  { ['x'] = 377.7,  ['y'] = -1606.3,  ['z'] =  30.2}, -- LSPD
}
  
Translation = {
  ['de'] = {
  ['open_menu'] = 'Drücke ~INPUT_CONTEXT~ um deinen Dienststatus zu verwalten',
  ['status'] = 'Dienststatus',
  ['status_disc'] = 'Gehe in/aus den Dienst',
  ['duty'] = 'Statusverwaltung',
  ['duty_disc'] = 'Gehe in & aus den Dienst',
  ['offduty_msg'] = '~p~Du befindest dich nun außerdienst, schönen Feierabend!.',
  ['onduty_msg_01'] = '~p~Du befindest dich nun im Dienst.',
  ['onduty_msg_02'] = '~p~Du befindest dich nun im Polizeidienst.',
  ['duty_failed'] = '~r~Du bist nicht dazu berechtigt den Dienststatus zu wechseln.',
  },

  ['en'] = {
  ['open_menu'] = 'Drücke ~INPUT_CONTEXT~ um deinen Dienststatus zu verwalten',
  ['status'] = 'Dienststatus',
  ['status_disc'] = 'Gehe in/aus den Dienst',
  ['duty'] = 'Statusverwaltung',
  ['duty_disc'] = 'Gehe in & aus den Dienst',
  ['offduty_msg'] = '~p~Du befindest dich nun außerdienst, schönen Feierabend!.',
  ['onduty_msg_01'] = '~p~Du befindest dich nun im Dienst.',
  ['onduty_msg_02'] = '~p~Du befindest dich nun im Polizeidienst.',
  ['duty_failed'] = '~r~Du bist nicht dazu berechtigt den Dienststatus zu wechseln.',
  },

}
