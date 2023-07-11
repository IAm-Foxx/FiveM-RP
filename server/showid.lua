RegisterCommand("showid", function(source, args, rawCommand)
    local playerId = GetPlayerServerId(source)
    TriggerClientEvent("chatMessage", source, "^1[Server]^7 Your player ID is: " .. playerId)
end, false)