RegisterCommand("me", function(source, args, rawCommand)
    local message = table.concat(args, " ")
    if message ~= "" then
        local playerName = GetPlayerName(source)
        local formattedMessage = string.format("**%s %s**", playerName, message)
        TriggerClientEvent("chatMessage", -1, "^3[Me] " .. formattedMessage)
    else
        print("Usage: /me [action]")
    end
end, false)
