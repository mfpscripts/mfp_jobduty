Citizen.CreateThread( function()
	updatePath = "/maxifaxipaxi-new/VERSIONS"
	resourceName = GetCurrentResourceName()..""
	
	function checkVersion(err,responseText, headers)
		curVersion = GetResourceMetadata(resourceName, "version")
	
		if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
			print("\n^3===========================================^7")
			print("^2["..resourceName.."] - New Update Available.\n^7New Version: ^5"..responseText.."\n^7Current Version: ^5"..curVersion.."\n^7Note: Please update from https://keymaster.fivem.net")
			print("\n^3===========================================^7")
		elseif tonumber(curVersion) > tonumber(responseText) then
			print("^7You skipped a few versions of "..resourceName.." or we got some server issues. \n^8Contact our support at discord.gg/mfp")
		else
			print("\n^2[INFO] ^7You are running the latest version.")
		end
	end
	
	PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/master/jobduty", checkVersion, "GET")
end)