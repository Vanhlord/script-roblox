local module = {}

local enabled = false
local UIS = game:GetService("UserInputService")

function module.Toggle()
    enabled = not enabled
    print("Infinite Jump:", enabled and "ON" or "OFF")

    if enabled then
        -- Gắn sự kiện
        module.connection = UIS.JumpRequest:Connect(function()
            local player = game:GetService("Players").LocalPlayer
            local char = player.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    else
        -- Gỡ sự kiện
        if module.connection then
            module.connection:Disconnect()
            module.connection = nil
        end
    end
end

return module

