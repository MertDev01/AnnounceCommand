RegisterNetEvent("SendAllPlayers:Announce")
AddEventHandler("SendAllPlayers:Announce", function(message)
   
for k, v in ipairs(GetPlayers()) do
    TriggerClientEvent("SendAnnounce:Announce", v, message)
end
end)