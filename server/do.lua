RegisterCommand("do", function(source, args, rawCommand)
    local message = table.concat(args, " ")
    if message ~= "" then
        local formattedMessage = string.format("**[Do] %s**", message)
        TriggerClientEvent("chatMessage", -1, "^3" .. formattedMessage)
    else
        print("Usage: /do [description]")
    end
end, false)