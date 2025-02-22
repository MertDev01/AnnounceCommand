ESX = exports["es_extended"]:getSharedObject()

RegisterCommand('announce', function(source, args)
    local message = table.concat(args, " ")
    TriggerServerEvent("SendAllPlayers:Announce", message)
end)

RegisterNetEvent("SendAnnounce:Announce")
AddEventHandler("SendAnnounce:Announce", function(message)
    ESX.ShowNotification(message)
end)