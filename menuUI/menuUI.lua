local M = {}

function M.createUI(player)
    -- check PlayerGui
    local playerGui = player:WaitForChild("PlayerGui")
    
    -- tạo ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "MenuUI"
    screenGui.Parent = playerGui

    -- tạo Frame chính
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 200)
    frame.Position = UDim2.new(0.5, -150, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    frame.BorderSizePixel = 0
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Parent = screenGui

    -- animation: fade in
    frame.BackgroundTransparency = 1
    local tweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = tweenService:Create(frame, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()

    -- ví dụ thêm TextLabel
    local title = Instance.new("TextLabel")
    title.Text = "Menu Xịn"
    title.Size = UDim2.new(1, 0, 0, 50)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextScaled = true
    title.Parent = frame

    return screenGui
end

return M
