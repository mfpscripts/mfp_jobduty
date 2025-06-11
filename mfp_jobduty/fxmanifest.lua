fx_version 'bodacious'
game 'gta5'
  
description 'mfp_jobduty | Go on/off duty'
author 'MFPSCRIPTS'
version '1.1'

lua54 'yes'

server_scripts {
   --'@oxmysql/lib/MySQL.lua', -- enable if you're using oxmysql
   '@mysql-async/lib/MySQL.lua', -- enable if you're using mysql-async
  'config.lua',
  'server.lua',
  'server_encrypted.lua',
  'webhook.lua',
  'versioncheck.lua'
}

client_scripts {
  '@NativeUI/NativeUI.lua', -- enable if you're using NativeUI
  --'@NativeUILua_Reloaded/src/NativeUIReloaded.lua', -- enable if you're using NativeUI Reloaded
  'config.lua',
  'client.lua',
}

escrow_ignore {
	'config.lua',
	'client.lua',
  'server.lua',
  'webhook.lua',
} 

-- visit mfpscripts.com for more! --