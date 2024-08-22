local PlayerDate, setJobs2
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		ESX = exports['es_extended']:getSharedObject()
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:setJobs2')
AddEventHandler('esx:setJobs2', function(jobs2)
	PlayerData = jobs2
end)

exports.qtarget:AddBoxZone("vagosBoss", vector3(330.202428, -2014.302958, 22.209722), 2.4, 1, {
	name="vagosBoss",
	heading=150,
	--debugPoly=true,
	minZ=29.73,
	maxZ=31.73
	  }, {
		  options = {
			  {
				  event = "vagosbossactions", 
				  icon = "far fa-circle",
				  label = "Menu OG",
				  jobs2 = "vagos",
			  },
		  },
		  distance = 3.5
  })
  
  RegisterNetEvent('vagosbossactions')
  AddEventHandler('vagosbossactions', function()
	  OpenvagosBoss()
  end)
  
  function OpenvagosBoss()
	  TriggerEvent('esx_society:openBossMenu', 'vagos', function(data, menu)
		  menu.close()
		  end, { wash = false })
  end

