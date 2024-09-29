local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source.lua"))()
local Window = OrionLib:MakeWindow({Name = "Xyris Script", Subtitle = "Rivals", HidePremium = false, SaveConfig = true, ConfigFolder = "RafinConfigs"})

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

local MainTab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})
MainTab:AddToggle({Name = "Enable Aimbot", Default = false, Callback = function(value) settings.aimbotEnabled = value end})
MainTab:AddDropdown({Name = "Aim Mode", Default = "Both", Options = {"Head", "Body", "Both"}, Callback = function(value) settings.aimMode = value end})
MainTab:AddToggle({Name = "Auto Shoot", Default = false, Callback = function(value) settings.autoShoot = value end})

local ESPTab = Window:MakeTab({Name = "ESP", Icon = "rbxassetid://4483345998", PremiumOnly = false})
ESPTab:AddToggle({Name = "Enable ESP", Default = false, Callback = function(value) settings.espEnabled = value end})

local MiscTab = Window:MakeTab({Name = "Misc", Icon = "rbxassetid://4483345998", PremiumOnly = false})
MiscTab:AddToggle({Name = "Infinite Jump", Default = false, Callback = function(value) settings.misc.infiniteJump = value end})
MiscTab:AddToggle({Name = "Noclip", Default = false, Callback = function(value) settings.misc.noclip = value end})
MiscTab:AddToggle({Name = "X-Ray", Default = false, Callback = function(value) settings.misc.xray = value end})

local CreditsTab = Window:MakeTab({Name = "Credits", Icon = "rbxassetid://4483345998", PremiumOnly = false})
CreditsTab:AddLabel("Made by imrafin")
CreditsTab:AddButton({Name = "Join our Discord", Callback = function() setclipboard("https://discord.gg/3WtS2F7CaX") OrionLib:MakeNotification({Name = "Notification", Content = "Discord link copied to clipboard!", Time = 5}) end})

local function isInMatch()
    return checkMatchStatus()
end

local function aimbot()
    local function getClosestPlayer()
        local closestPlayer, closestDistance = nil, math.huge
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
                local distance = (game.Players.LocalPlayer.Character.Head.Position - player.Character.Head.Position).Magnitude
                if distance < closestDistance then
                    closestDistance = distance
                    closestPlayer = player
                end
            end
        end
        return closestPlayer
    end

    if isInMatch() and settings.aimbotEnabled then
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
                local mouse = game.Players.LocalPlayer:GetMouse()
                mousemoveabs(targetPosition.X, targetPosition.Y)
            end
        end
    end
end

local function esp()
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            if settings.espEnabled then
                if not player.Character.Head:FindFirstChild("ESP") then
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
                    distanceLabel.Text = "Distance: " .. math.floor((game.Players.LocalPlayer.Character.Head.Position - player.Character.Head.Position).Magnitude)
                    distanceLabel.BackgroundTransparency = 1
                end
            end
        end
    end
end

game:GetService("RunService").RenderStepped:Connect(function()
    aimbot()
    esp()
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if settings.misc.infiniteJump then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)

game:GetService("RunService").Stepped:Connect(function()
    if settings.misc.noclip then
        for _, part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if settings.misc.xray then
        for _, part in pairs(workspace:GetDescendants()) do
            if part:IsA("BasePart") and not part:IsDescendantOf(game.Players.LocalPlayer.Character) then
                part.Transparency = 0.5
            end
        end
    end
end)

OrionLib:Init()
