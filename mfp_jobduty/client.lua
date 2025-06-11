---------------------------------
--			      Script		       --
---------------------------------

_menuPool = NativeUI.CreatePool()
local mainMenu

Citizen.CreateThread(function()
    while true do

        _menuPool:ProcessMenus()
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
		for k,v in pairs(Config.DutyLocations) do
			if GetDistanceBetweenCoords(playerCoords, v.x, v.y, v.z, true) < 1.5 then
		  ShowInputNotification(Translation[Config.Locale]['open_menu']) 
      end
        if IsControlJustReleased(0, 38) then
		      if GetDistanceBetweenCoords(playerCoords, v.x, v.y, v.z, true) < 1.5 then 
              openmainMenu()
          end
        end 
    end
        Citizen.Wait(1)
    end
	
end)

function ShowInputNotification(text)
	SetTextComponentFormat('STRING')
	AddTextComponentString(text)
	EndTextCommandDisplayHelp(0, 0, 1, -1)
end

function openmainMenu()
    
	mainMenu = NativeUI.CreateMenu(Translation[Config.Locale]['status'], Translation[Config.Locale]['status_disc'])
    _menuPool:Add(mainMenu)
		
	local dienstItem = NativeUI.CreateItem(Translation[Config.Locale]['duty'], Translation[Config.Locale]['duty_disc'])
  mainMenu:AddItem(dienstItem)

    dienstItem:SetRightBadge(BadgeStyle.Star)

    dienstItem.Activated = function(sender, index)
		    mainMenu:Visible(false)
        TriggerServerEvent('mfp_jobduty:changestatus')
    end

    mainMenu:Visible(true)

    _menuPool:MouseControlsEnabled(false)
	  _menuPool:MouseEdgeEnabled(false)
	  _menuPool:ControlDisablingEnabled(false)
end