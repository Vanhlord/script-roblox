local module = {}

local flying = false
local bodyVel
local bodyGyro

function module.ToggleFly()
    flying = not flying

    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    if not char then return end

    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    if flying then
        print("Fly: ON")

        bodyVel = Instance.new("BodyVelocity")
        bodyVel.MaxForce = Vector3.new(1e6, 1e6, 1e6)
        bodyVel.Parent = root

        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(1e6, 1e6, 1e6)
        bodyGyro.Parent = root

    else
        print("Fly: OFF")

        if bodyVel then bodyVel:Destroy() end
        if bodyGyro then bodyGyro:Destroy() end
    end
end

return module
