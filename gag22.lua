
local myMessage = "توكل كي"

local CoreGui = game:GetService("CoreGui")

if CoreGui:FindFirstChild("FullScreenMessageGui") then
    CoreGui.FullScreenMessageGui:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FullScreenMessageGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true 


pcall(function()
    ScreenGui.Parent = CoreGui
end)
if not ScreenGui.Parent then
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

local BackgroundFrame = Instance.new("Frame")
BackgroundFrame.Size = UDim2.new(1, 0, 1, 0)
BackgroundFrame.Position = UDim2.new(0, 0, 0, 0)
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
BackgroundFrame.BorderSizePixel = 0
BackgroundFrame.Parent = ScreenGui

local MessageLabel = Instance.new("TextLabel")
MessageLabel.Size = UDim2.new(0.9, 0, 0.9, 0)
MessageLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
MessageLabel.BackgroundTransparency = 1
MessageLabel.Text = myMessage
MessageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageLabel.TextScaled = true
MessageLabel.Font = Enum.Font.SourceSansBold
MessageLabel.TextWrapped = true
MessageLabel.Parent = BackgroundFrame
