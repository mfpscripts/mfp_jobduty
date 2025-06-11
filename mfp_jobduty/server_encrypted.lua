---------------------------------
--			  Script		   --
---------------------------------

AddEventHandler('onResourceStart', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	print(" _____ _____ _____ _____ _____ _____ _____ _____ _____ _____ ")
	print("|     |   __|  _  |   __|     | __  |     |  _  |_   _|   __|")
	print("| | | |   __|   __|__   |   --|    -|-   -|   __| | | |__   |")
	print("|_|_|_|__|  |__|  |_____|_____|__|__|_____|__|    |_| |_____|")
	print("The resource " .. resourceName .. " has been started")
	if Dicordlogging then
		  TriggerEvent('mfp_jobduty:discordlog', "**mfp_jobduty** has been started succesfully!", DiscordWebhook['webhook'])
		  end
  end)

function sendLogs (message,webhook)
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ content = message }), { ['Content-Type'] = 'application/json' })
end


------------ DISCORD LOGGING --------------
RegisterServerEvent('mfp_jobduty:discordlog')
AddEventHandler('mfp_jobduty:discordlog', function(message, webhook)
sendLogs(message , webhook)
end)