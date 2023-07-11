RegisterCommand("911", function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local roadName = args[1] or "Unknown Road" -- Default to "Unknown Road" if no road name is provided
    table.remove(args, 1)
    local message = table.concat(args, " ")

    local embedData = {
        {
            ["color"] = 16711680, -- Red
            ["title"] = "911 Emergency",
            ["description"] = "Assistance is needed!",
            ["fields"] = {
                {
                    ["name"] = "Player",
                    ["value"] = playerName,
                    ["inline"] = true
                },
                {
                    ["name"] = "Road Name",
                    ["value"] = roadName,
                    ["inline"] = true
                },
                {
                    ["name"] = "Message",
                    ["value"] = message
                }
            }
        }
    }

    if message ~= "" then
        PerformHttpRequest("https://discord.com/api/webhooks/1122134779907821589/bZn2wqhOyda0s0OO1R5O1-nFjoBYEU3ewO3423yqLALNg5TgYboY_yrZ0Fv7YVmr3VvV", function(err, text, headers)
            if err == 200 then
                print("911 message sent to Discord")
            else
                print("Failed to send 911 message to Discord")
            end
        end, "POST", json.encode({embeds = embedData}), {["Content-Type"] = "application/json"})
    else
        print("Usage: /911 [road name] [message]")
    end
end, false)
