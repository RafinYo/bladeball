local ScreenGui = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local TabsFrame = Instance.new("Frame")
local AimbotTab = Instance.new("TextButton")
local ESPTab = Instance.new("TextButton")
local MiscTab = Instance.new("TextButton")
local CreditsTab = Instance.new("TextButton")
local MainLabel = Instance.new("TextLabel")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "RafinGUI"

OpenButton.Parent = ScreenGui
OpenButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.Size = UDim2.new(0, 50, 0, 50)
OpenButton.Position = UDim2.new(0.5, -25, 0, 10)
OpenButton.Text = "Open"
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    OpenButton.Text = MainFrame.Visible and "Close" or "Open"
end)

MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -200)
MainFrame.Visible = false

TabsFrame.Parent = MainFrame
TabsFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabsFrame.Size = UDim2.new(0, 300, 0, 30)

AimbotTab.Parent = TabsFrame
AimbotTab.Size = UDim2.new(0, 75, 0, 30)
AimbotTab.Text = "Aimbot"

ESPTab.Parent = TabsFrame
ESPTab.Position = UDim2.new(0, 75, 0, 0)
ESPTab.Size = UDim2.new(0, 75, 0, 30)
ESPTab.Text = "ESP"

MiscTab.Parent = TabsFrame
MiscTab.Position = UDim2.new(0, 150, 0, 0)
MiscTab.Size = UDim2.new(0, 75, 0, 30)
MiscTab.Text = "Misc"

CreditsTab.Parent = TabsFrame
CreditsTab.Position = UDim2.new(0, 225, 0, 0)
CreditsTab.Size = UDim2.new(0, 75, 0, 30)
CreditsTab.Text = "Credits"

MainLabel.Parent = MainFrame
MainLabel.Size = UDim2.new(0, 300, 0, 30)
MainLabel.Position = UDim2.new(0, 0, 0, 30)
MainLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MainLabel.Text = "Rafin GUI"
MainLabel.BackgroundTransparency = 1

local settings = {
    aimbotEnabled = false,
    aimMode = "Both",
    espEnabled = false,
    autoShoot = false,
    misc = {
        infiniteJump = false,
        noclip = false,
        xray = false
    }
}

local function isInMatch()
    return checkMatchStatus()
end

local function aimbot()
    local function getClosestPlayer()
        local closestPlayer, closestDistance = nil, math.huge
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                local distance = (LocalPlayer.Character.Head.Position - player.Character.Head.Position).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
        return closestPlayer
    end
    
    if isInMatch() then
        local closestPlayer = getClosestPlayer()
        if closestPlayer and closestPlayer.Character then
            local aimPart
            if settings.aimMode == "Head" then
                aimPart = closestPlayer.Character:FindFirstChild("Head")
            elseif settings.aimMode == "Body" then
                aimPart = closestPlayer.Character:FindFirstChild("HumanoidRootPart")
            elseif settings.aimMode == "Both" then
                aimPart = math.random() < 0.5 and closestPlayer.Character:FindFirstChild("Head") or closestPlayer.Character:FindFirstChild("HumanoidRootPart")
            end
            if aimPart then
                local targetPosition = aimPart.Position
                local mouse = LocalPlayer:GetMouse()
                mousemoveabs(targetPosition.X, targetPosition.Y)
            end
        end
    end
end

local function esp()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            if not player.Character.Head:FindFirstChild("ESP") then
                if isInMatch() then
                    local billboard = Instance.new("BillboardGui", player.Character.Head)
                    billboard.Name = "ESP"
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.AlwaysOnTop = true

                    local frame = Instance.new("Frame", billboard)
                    frame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                    frame.Size = UDim2.new(1, 0, 1, 0)

                    local nameLabel = Instance.new("TextLabel", billboard)
                    nameLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    nameLabel.Text = player.DisplayName
                    nameLabel.BackgroundTransparency = 1

                    local distanceLabel = Instance.new("TextLabel", billboard)
                    distanceLabel.Size = UDim2.new(1, 0, 0.5, 0)
                    distanceLabel.Position = UDim2.new(0, 0, 0.5, 0)
                    distanceLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    distanceLabel.Text = "Distance: " .. math.floor((LocalPlayer.Character.Head.Position - player.Character.Head.Position).Magnitude)
                    distanceLabel.BackgroundTransparency = 1
                end
            end
        end
    end
end

local function autoShoot()
    if isInMatch() then
        local target = settings.aimMode == "Head" and LocalPlayer.Character.Head or LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if target then
        end
    end
end

local function infiniteJump()
    UserInputService.JumpRequest:Connect(function()
        if settings.misc.infiniteJump and isInMatch() then
            LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end

local function noclip()
    RunService.Stepped:Connect(function()
        if settings.misc.noclip and isInMatch() then
            for _, part in pairs(LocalPlayer.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

local function xray()
    if isInMatch() then
        for _, part in pairs(workspace:GetDescendants()) do
            if part:IsA("BasePart") and not part:IsDescendantOf(LocalPlayer.Character) then
                part.Transparency = settings.misc.xray and 0.5 or 0
            end
        end
    end
end

local function credits()
    print("Made by imrafin")
    setclipboard("https://discord.gg/3WtS2F7CaX")
end

AimbotTab.MouseButton1Click:Connect(function()
    MainLabel.Text = "Aimbot Tab"
end)

ESPTab.MouseButton1Click:Connect(function()
    MainLabel.Text = "ESP Tab"
end)

MiscTab.MouseButton1Click:Connect(function()
    MainLabel.Text = "Misc Tab"
end)

CreditsTab.MouseButton1Click:Connect(function()
    MainLabel.Text = "Credits Tab"
end)

local infiniteJumpButton = Instance.new("TextButton")
local noclipButton = Instance.new("TextButton")
local xrayButton = Instance.new("TextButton")

infiniteJumpButton.Parent = MainFrame
infiniteJumpButton.Size = UDim2.new(0, 200, 0, 50)
infiniteJumpButton.Position = UDim2.new(0, 50, 0, 100)
infiniteJumpButton.Text = "Toggle Infinite Jump"
infiniteJumpButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
infiniteJumpButton.TextColor3 = Color3.fromRGB(255, 255, 255)

noclipButton.Parent = MainFrame
noclipButton.Size = UDim2.new(0, 200, 0, 50)
noclipButton.Position = UDim2.new(0, 50, 0, 160)
noclipButton.Text = "Toggle Noclip"
noclipButton.TextColor3 = Color3.fromRGB(255, 255, 255)

xrayButton.Parent = MainFrame
xrayButton.Size = UDim2.new(0, 200, 0, 50)
xrayButton.Position = UDim2.new(0, 50, 0, 220)
xrayButton.Text = "Toggle X-Ray"
xrayButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
xrayButton.TextColor3 = Color3.fromRGB(255, 255, 255)

infiniteJumpButton.MouseButton1Click:Connect(function()
    settings.misc.infiniteJump = not settings.misc.infiniteJump
    infiniteJumpButton.Text = settings.misc.infiniteJump and "Infinite Jump: ON" or "Infinite Jump: OFF"
end)

noclipButton.MouseButton1Click:Connect(function()
    settings.misc.noclip = not settings.misc.noclip
    noclipButton.Text = settings.misc.noclip and "Noclip: ON" or "Noclip: OFF"
end)

xrayButton.MouseButton1Click:Connect(function()
    settings.misc.xray = not settings.misc.xray
    xrayButton.Text = settings.misc.xray and "X-Ray: ON" or "X-Ray: OFF"
    xray()
end)

RunService.RenderStepped:Connect(function()
    if settings.aimbotEnabled then
        aimbot()
    end

    if settings.espEnabled then
        esp()
    end

    if settings.autoShoot then
        autoShoot()
    end
end)

infiniteJump()
noclip()
