---------------------------------
--		    FRAMEWORK		   --
---------------------------------
if Config.Framework == 'ESX' then
    ESX = exports["es_extended"]:getSharedObject()
elseif Config.Framework == 'QBCORE' then
        RegisterNetEvent('QBCore:Client:UpdateObject', function()
        QBCore = exports['qb-core']:GetCoreObject()
    end)
end
---------------------------------
--			  Script		   --
---------------------------------

RegisterServerEvent('mfp_jobduty:changestatus')
AddEventHandler('mfp_jobduty:changestatus', function()

    local _source = source

    if Config.Framework == 'ESX' then
        local xPlayer = ESX.GetPlayerFromId(_source)
        local job = xPlayer.job.name
        local grade = xPlayer.job.grade
    
        if job == 'police' or job == 'ambulance' then
            xPlayer.setJob('off' ..job, grade)
            TriggerClientEvent('esx:showNotification', _source, Translation[Config.Locale]['offduty_msg'])
            if Dicordlogging then
                TriggerEvent('mfp_jobduty:discordlog', "**Player offduty** \n" ..xPlayer.name.. " is now offduty in his job: " ..job.. "", DiscordWebhook['webhook'])
            end
        elseif job == 'offpolice' then
            xPlayer.setJob('police', grade)
            TriggerClientEvent('esx:showNotification', _source, Translation[Config.Locale]['onduty_msg_02'])
            if Dicordlogging then
                TriggerEvent('mfp_jobduty:discordlog', "**Player onduty** \n" ..xPlayer.name.. " is now onduty in his job: " ..job.. "", DiscordWebhook['webhook'])
            end
        elseif job == 'offambulance' then
            xPlayer.setJob('ambulance', grade)
            TriggerClientEvent('esx:showNotification', _source, Translation[Config.Locale]['onduty_msg_01'])
            if Dicordlogging then
                TriggerEvent('mfp_jobduty:discordlog', "**Player onduty** \n" ..xPlayer.name.. " is now onduty in his job: " ..job.. "", DiscordWebhook['webhook'])
            end
	    else
	        TriggerClientEvent('esx:showNotification', _source, Translation[Config.Locale]['duty_failed'])		
        end
    elseif Config.Framework == 'QBCORE' then
        local Player = QBCore.Functions.GetPlayer(_source)
        if not Player then return end
            if Player.PlayerData.job.onduty then
                Player.Functions.SetJobDuty(false)
                TriggerClientEvent('QBCore:Notify', _source, Translation[Config.Locale]['offduty_msg'])
            else
                Player.Functions.SetJobDuty(true)
                TriggerClientEvent('QBCore:Notify', _source, Translation[Config.Locale]['onduty_msg_02'])
            end
            TriggerClientEvent('QBCore:Client:SetDuty', _source, Player.PlayerData.job.onduty)
        end

end)


