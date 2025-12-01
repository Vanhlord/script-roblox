local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local base = "https://raw.githubusercontent.com/<username>/<repo>/main/"

local function loadModule(path)
    local code = HttpService:GetAsync(base .. path)
    return loadstring(code)()
end

local menuUI = loadModule("menuUI/menuUI.lua")

-- khi player vào game
Players.PlayerAdded:Connect(function(player)
    menuUI.createUI(player)
end)

