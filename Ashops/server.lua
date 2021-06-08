ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('ayko:Pain')
AddEventHandler('ayko:Pain', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('bread', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("bread") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Chips')
AddEventHandler('ayko:Chips', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('chips', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("chips") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Sandwich')
AddEventHandler('ayko:Sandwich', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sandwich', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("sandwich") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Hamburger')
AddEventHandler('ayko:Hamburger', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 30
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('hamburger', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("hamburger") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Eau')
AddEventHandler('ayko:Eau', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('water', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("water") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Sprite')
AddEventHandler('ayko:Sprite', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 20
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sprite', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("sprite") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Téléphone')
AddEventHandler('ayko:Téléphone', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 300
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('phone', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("phone") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:sim')
AddEventHandler('ayko:sim', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('sim', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("sim") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

RegisterNetEvent('ayko:Fanta')
AddEventHandler('ayko:Fanta', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 15
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem('fanta', 1)
         TriggerClientEvent('esx:showNotification', source, "Vous avez reçu ~b~1x ".. ESX.GetItemLabel("fanta") .." ~w~ pour ~g~$".. price .."~s~ !")
    else
         TriggerClientEvent('esx:showNotification', source, "Il vous ~r~manque~g~ $"..price-xMoney.."~w~ !")
    end
end)

--------------------------------- BY Ayko#6666 ---------------------------------