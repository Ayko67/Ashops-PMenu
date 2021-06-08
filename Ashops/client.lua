ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(80000)
  end
end)

Ayko              = {}
Ayko.DrawDistance = 100
Ayko.Size         = {x = 0.6, y = 0.6, z = 0.6}
Ayko.Color        = {r = 255, g = 0, b = 0}
Ayko.Type         = 25

local shops = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 0}, Title = "Supérette" },
	Data = { currentMenu = "Faites vos choix !", "Supérette" },
    Events = {
		onSelected = function(self, _, btn, PMenu, menuData, currentButton, currentBtn, currentSlt, result)


            if btn.name == "Pain" then
                TriggerServerEvent('ayko:Pain')
            end

            if btn.name == "Chips" then
                TriggerServerEvent('ayko:Chips')
            end
                
            if btn.name == "Sandwich" then
                TriggerServerEvent('ayko:Sandwich')
            end

            if btn.name == "Nourriture" then
                OpenMenu("Nourriture")
            end

            if btn.name == "Boisson" then
                OpenMenu("Boisson")
            end

            if btn.name == "Divers" then
                OpenMenu("Divers")
            end

            if btn.name == "Hamburger" then
                TriggerServerEvent("ayko:Hamburger")
            end

            if btn.name == "Eau" then   
                TriggerServerEvent("ayko:Eau")
            end
                            
            if btn.name == "Sprite" then   
                TriggerServerEvent("ayko:Sprite")
            end

            if btn.name == "Téléphone" then   
                TriggerServerEvent("ayko:Téléphone")
            end

            if btn.name == "Carte Sim" then   
                TriggerServerEvent("ayko:sim")
            end

            if btn.name == "Fanta" then
                TriggerServerEvent("ayko:Fanta")
            end

            end,
    },

	Menu = {
		["Faites vos choix !"] = {
			b = {
                {name = "Nourriture", ask = "~r~→→→", askX = true},
                {name = "Boisson", ask = "~r~→→→", askX = true},
                {name = "Divers", ask = "~r~→→→", askX = true},
			}
		},

        ["Nourriture"] = {
			b = {
                {name = "Pain", ask = "~g~15$", askX = true},
                {name = "Chips", ask = "~g~20$", askX = true},
                {name = "Sandwich", ask = "~g~25$", askX = true},
                {name = "Hamburger", ask = "~g~30$", askX = true},
			}
		},

        ["Boisson"] = {
			b = {
                {name = "Eau", ask = "~g~10$", askX = true},
                {name = "Fanta", ask = "~g~15$", askX = true},
                {name = "Sprite", ask = "~g~20$", askX = true},
			}
	    },

        ["Divers"] = {
			b = {
                {name = "Téléphone", ask = "~g~300$", askX = true},
                {name = "Carte Sim", ask = "~g~150$", askX = true},
			}
	    }
	}
}


local position = {
    {x = 25.82, y = -1345.49, z = 29.5},
    {x = 373.875,   y = 325.896,  z = 102.66},
	{x = 2557.458,  y = 382.282,  z = 107.722}, 
	{x = -3038.939, y = 585.954,  z = 6.97},
	{x = -3241.927, y = 1001.462, z = 11.850}, 
	{x = 547.431,   y = 2671.710, z = 41.176}, 
	{x = 1961.464,  y = 3740.672, z = 31.363}, 
	{x = 2678.916,  y = 3280.671, z = 54.261}, 
    {x = 1729.216,  y = 6414.131, z = 34.057}, 
    {x = 1135.808,  y = -982.281,  z = 45.45}, 
	{x = -1222.93, y = -906.99,  z = 11.35}, 
	{x = -1487.553, y = -379.107,  z = 39.163}, 
	{x = -2968.243, y = 390.910,   z = 14.054}, 
	{x = 1166.024,  y = 2708.930,  z = 37.167}, 
	{x = 1392.562,  y = 3604.684,  z = 33.995}, 
	{x = -1393.409, y = -606.624,  z = 29.319}, 
    {x = -48.519,   y = -1757.514, z = 28.47}, 
	{x = 1163.373,  y = -323.801,  z = 68.27}, 
	{x = -707.67,  y = -914.22,  z = 18.26}, 
	{x = -1820.523, y = 792.518,   z = 137.20},
	{x = 1698.388,  y = 4924.404,  z = 41.083} 
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(position) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 1.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler ~r~au vendeur.")
				if IsControlJustPressed(1,51) then 					
                    CreateMenu(shops) 
				end
            end
        end
    end  
end)

Citizen.CreateThread(function()

    for k in pairs(position) do

	local blip = AddBlipForCoord(position[k].x, position[k].y, position[k].z)

	SetBlipSprite(blip, 59)
	SetBlipColour(blip, 2)
	SetBlipScale(blip, 0.6)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Supérette")
    EndTextCommandSetBlipName(blip)
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(PlayerPedId()), true

        for k in pairs(position) do
            if (Ayko.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < Ayko.DrawDistance) then
                DrawMarker(Ayko.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Ayko.Size.x, Ayko.Size.y, Ayko.Size.z, Ayko.Color.r, Ayko.Color.g, Ayko.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
			end
        end
    end
end)


--------------------------------- BY Ayko#6666 ---------------------------------