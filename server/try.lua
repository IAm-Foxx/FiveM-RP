RegisterCommand("try", function(source, args, rawCommand)
    local message = table.concat(args, " ")
    if message ~= "" then
        local formattedMessage = string.format("**[Try] %s**", message)
        TriggerClientEvent("chatMessage", -1, "^3" .. formattedMessage)
    else
        print("Usage: /try [attempt]")
    end
end, false)