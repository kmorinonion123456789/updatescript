local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TikTokPromoUI"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.4, 0)
titleLabel.Position = UDim2.new(0, 0, 0.1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "更新が入りました！\nTikTokをチェック☑️"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.8, 0, 0.3, 0)
button.Position = UDim2.new(0.1, 0, 0.6, 0)
button.Text = "リンクをコピー"
button.BackgroundColor3 = Color3.fromRGB(254, 44, 85) -- TikTokカラー
button.TextColor3 = Color3.new(1, 1, 1)
button.Font = Enum.Font.SourceSansBold
button.TextSize = 16
button.Parent = frame

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = button

button.MouseButton1Click:Connect(function()
    local url = "https://www.tiktok.com/@mimi242871?_r=1&_t=ZS-948Guuwoww3"
    
    if setclipboard then
        setclipboard(url)
        button.Text = "コピー完了！"
        button.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
    else
        button.Text = "コピー失敗（非対応）"
    end
    
    print("unko: TikTokリンクをコピーしました")
    
    task.wait(2)
    button.Text = "リンクをコピー"
    button.BackgroundColor3 = Color3.fromRGB(254, 44, 85)
end)
