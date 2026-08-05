-- اكتب رسالتك هنا
local myMessage = "توكل كي"

-- خدمات روبلوكس
local CoreGui = game:GetService("CoreGui")

-- إزالة أي واجهة قديمة بنفس الاسم إن وجدت
if CoreGui:FindFirstChild("FullScreenMessageGui") then
    CoreGui.FullScreenMessageGui:Destroy()
end

-- إنشاء الشاشة الرئيسية
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FullScreenMessageGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true -- لجعل الواجهة تغطي حتى شريط روبلوكس العلوي

-- التثبيت في CoreGui أو PlayerGui
pcall(function()
    ScreenGui.Parent = CoreGui
end)
if not ScreenGui.Parent then
    ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
end

-- خلفية الواجهة بالكامل (Full Screen Frame)
local BackgroundFrame = Instance.new("Frame")
BackgroundFrame.Size = UDim2.new(1, 0, 1, 0)
BackgroundFrame.Position = UDim2.new(0, 0, 0, 0)
BackgroundFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15) -- لون الخلفية
BackgroundFrame.BorderSizePixel = 0
BackgroundFrame.Parent = ScreenGui

-- نص الرسالة بمنتصف الشاشة وبحجم كبير
local MessageLabel = Instance.new("TextLabel")
MessageLabel.Size = UDim2.new(0.9, 0, 0.9, 0) -- يغطي معظم الشاشة لتناسب النصوص الطويلة
MessageLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
MessageLabel.BackgroundTransparency = 1
MessageLabel.Text = myMessage
MessageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageLabel.TextScaled = true -- يجعل حجم الخط يتوسع ليملأ الشاشة بأكبر حجم ممكن
MessageLabel.Font = Enum.Font.SourceSansBold
MessageLabel.TextWrapped = true
MessageLabel.Parent = BackgroundFrame
