--// UI
local function ScriptLoader()
    local function tween(...)
        game:GetService("TweenService"):Create(...):Play()
    end
    
    game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
    local loading = Instance.new("ScreenGui")
    local background = Instance.new("Frame")
    local gradient = Instance.new("UIGradient")
    local status = Instance.new("TextLabel")
    local rotatingImage = Instance.new("ImageLabel")
    
    loading.Name = "loading"
    loading.Parent = game:GetService("CoreGui")
    loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    background.Name = "background"
    background.Parent = loading
    background.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
    background.Position = UDim2.new(0, 0, -0.100000001, 0)
    background.Size = UDim2.new(1, 0, 1.10000002, 0)
    
    -- Modify gradient to Blue (top) and Purple (bottom)
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 255)),  -- Blue (Top)
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(128, 0, 128))  -- Purple (Bottom)
    }
    gradient.Rotation = 90
    gradient.Name = "gradient"
    gradient.Parent = background
    
    status.Name = "status"
    status.Parent = loading
    status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    status.BackgroundTransparency = 1.000
    status.Position = UDim2.new(0, 0, 0.893442631, 0)
    status.Size = UDim2.new(1, 0, 0.0355480109, 0)
    status.Font = Enum.Font.SourceSansItalic
    status.Text = "Loading Speed Hub"
    status.TextColor3 = Color3.fromRGB(255, 255, 255)
    status.TextScaled = true
    status.TextSize = 14.000
    status.TextStrokeColor3 = Color3.fromRGB(52, 52, 52)
    status.TextStrokeTransparency = 0.000
    status.TextWrapped = true
    
    -- Add the static image in the center (no rotation)
    rotatingImage.Name = "rotatingImage"
    rotatingImage.Parent = loading
    rotatingImage.BackgroundTransparency = 1
    rotatingImage.Position = UDim2.new(0.5, -50, 0.5, -50)  -- Centered
    rotatingImage.Size = UDim2.new(0, 100, 0, 100)  -- Adjust size as needed
    rotatingImage.Image = "rbxassetid://73588754900171"  -- Replace with the actual image asset ID
    
    if syn then syn.protect_gui(loading) end
    
    repeat wait() until game:GetService("Players").LocalPlayer
    status.Text = "Loading Speed Hub : By CBB"
    
    -- Define the loader function
    local function loader()
        -- Your custom script logic
        local request = request or http_request or Krnl.request or syn.request or Fluxus.request

local function fetchScript(nga)
    local url = nga
    local headers = {
        ["ngrok-skip-browser-warning"] = "true"
    }

    local response = request({
        Url = url,
        Method = "GET",
        Headers = headers
    })
    if not response then
        
        return nil
    end
    local success, script = pcall(function()
        return loadstring(response.Body)()
    end)
    if not success then
        
        return nil
    end
    return script
end

local FlurioreLib = fetchScript("https://pastebin.com/raw/2mBP9Q7e")
    local Startup = FlurioreLib:MakeNotify({
        ["Title"] = "Speed X",
        ["Description"] = "",
        ["Color"] = Color3.fromRGB(255, 0, 111),
        ["Content"] = "Updated",
        ["Time"] = 1,
        ["Delay"] = 5
    })

local nowprediction = true
    local auto_parry_enabled = false
    local personnel_detector_enabled = true
    local ball_trial_Enabled = false
    local strength = 0
    local gravity_enabled = false
    local current_curve = nil
    local ai_Enabled = false
    local auto_win = false
    local tp_hit = false
    local visualize_Enabled = false
    local parry_mode = "Rage"
    local Helper = fetchScript("https://pastebin.com/raw/3M42Ukj4")
    local RobloxReplicatedStorage = cloneref(game:GetService('RobloxReplicatedStorage'))
    local RbxAnalyticsService = cloneref(game:GetService('RbxAnalyticsService'))
    local ReplicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
    local UserInputService = cloneref(game:GetService('UserInputService'))
    local NetworkClient = cloneref(game:GetService("NetworkClient"))
    local TweenService = cloneref(game:GetService('TweenService'))
    local VirtualUser = cloneref(game:GetService('VirtualUser'))
    local HttpService = cloneref(game:GetService('HttpService'))
    local RunService = cloneref(game:GetService('RunService'))
    local LogService = cloneref(game:GetService('LogService'))
    local Lighting = cloneref(game:GetService('Lighting'))
    local CoreGui = cloneref(game:GetService('CoreGui'))
    local Players = cloneref(game:GetService('Players'))
    local Debris = cloneref(game:GetService('Debris'))
    local Stats = cloneref(game:GetService('Stats'))
    local uis = game:GetService("UserInputService")
    local speeddo = 3
    local skibidispam = false
    local anticurveskibi = false
    local LocalPlayer = Players.LocalPlayer
    
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end
    
    local crypter = fetchScript("https://raw.githubusercontent.com/Egor-Skriptunoff/pure_lua_SHA/master/sha2.lua")
    
    setfpscap(100)
    
    local LocalPlayer = Players.LocalPlayer
    local client_id = RbxAnalyticsService:GetClientId()
    
    local names_map = {
        ['protected'] = crypter.sha3_384(client_id, 'sha3-256'),
    
        ['Pillow'] = crypter.sha3_384(client_id .. 'Pillow', 'sha3-256'),
        ['Touhou'] = crypter.sha3_384(client_id .. 'Touhou', 'sha3-256'),
        ['Shion'] = crypter.sha3_384(client_id .. 'Shion', 'sha3-256'),
        ['Miku'] = crypter.sha3_384(client_id .. 'Miku', 'sha3-256'),
        ['Sino'] = crypter.sha3_384(client_id .. 'Sino', 'sha3-256'),
        ['Soi'] = crypter.sha3_384(client_id .. 'Soi', 'sha3-256')
    }
    
    local assets = game:GetObjects('rbxassetid://98657300657778')[1]
    
    assets.Parent = RobloxReplicatedStorage
    assets.Name = names_map['protected']
    
    local effects_folder = assets.effects
    local objects_folder = assets.objects
    local sounds_folder = assets.sounds
    local gui_folder = assets.gui
    
    local RunTime = workspace.Runtime
    local Alive = workspace.Alive
    local Dead = workspace.Dead
    
    local AutoParry = {
        ball = nil,
        target = nil,
        entity_properties = nil
    }
    
    local Player = {
        Entity = nil,
    
        properties = {
            grab_animation = nil
        }
    }
    
    Player.Entity = {
        properties = {
            sword = '',
            server_position = Vector3.zero,
            velocity = Vector3.zero,
            position = Vector3.zero,
            is_moving = false,
            speed = 0,
            ping = 0
        }
    }
    
    local World = {}
    
    AutoParry.ball = {
        training_ball_entity = nil,
        client_ball_entity = nil,
        ball_entity = nil,
    
        properties = {
            last_ball_pos = Vector3.zero,
            aero_dynamic_time = tick(),
            hell_hook_completed = true,
            last_position = Vector3.zero,
            rotation = Vector3.zero,
            position = Vector3.zero,
            last_warping = tick(),
            parry_remote = nil,
            is_curved = false,
            last_tick = tick(),
            auto_spam = false,
            cooldown = false,
            respawn_time = 0,
            parry_range = 0,
            spam_range = 0,
            maximum_speed = 0,
            old_speed = 0,
            parries = 0,
            direction = 0,
            distance = 0,
            velocity = 0,
            last_hit = 0,
            lerp_radians = 0,
            radians = 0,
            speed = 0,
            dot = 0
        }
    }
    
    AutoParry.target = {
        current = nil,
        from = nil,
        aim = nil,
    }
    
    AutoParry.entity_properties = {
        server_position = Vector3.zero,
        velocity = Vector3.zero,
        is_moving = false,
        direction = 0,
        distance = 0,
        speed = 0,
        dot = 0
    }
    
    
    function create_animation(object: Instance, info: TweenInfo, value: table)
        local animation = TweenService:Create(object, info, value)
    
        animation:Play()
    
        task.wait(info.Time)
    
        Debris:AddItem(animation, 0)
        animation:Destroy()
        animation = nil
    end
    
    local function linear_predict(a: any, b: any, time_volume: number)
        return a + (b - a) * time_volume
    end
    
    function World:get_pointer()
        local mouse_location = UserInputService:GetMouseLocation()
        local ray = workspace.CurrentCamera:ScreenPointToRay(mouse_location.X, mouse_location.Y, 0)
    
        return CFrame.lookAt(ray.Origin, ray.Origin + ray.Direction)
    end
    
    function AutoParry.get_ball()
        for _, ball in workspace.Balls:GetChildren() do
            if ball:GetAttribute("realBall") then
                return ball
            end
        end
    end
    
    function AutoParry.get_client_ball()
        for _, ball in workspace.Balls:GetChildren() do
            if not ball:GetAttribute("realBall") then
                return ball
            end
        end
    end
    
    function makingtrail()
        local ball = nil
    
        -- å–”ç†°å‰¯å–”å›™ç«µå–™å±¶ç¬‚å–”ç¼–ç¬å–”î€¿èµ‹å–”î‚ç¦å–”ç¼–ç¬Ÿå–”ä½®è¦†å–”ï½€é‡œå–”ï½€ç®‘å–”æ¶ç®‘å–”æ–·ç¬— Trail
        local function createOrUpdateTrail()
            local Trail = ball:FindFirstChild("Trail")
            if not Trail then
                Trail = Instance.new("Trail")
                Trail.Name = "Trail"
                Trail.FaceCamera = true
                Trail.Parent = ball
            end
    
            local At1 = ball:FindFirstChild("at1")
            local At2 = ball:FindFirstChild("at2")
    
            if At1 and At2 then
                Trail.Attachment0 = At1
                Trail.Attachment1 = At2
    
                Trail.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0.00, Color3.new(1.00, 0.00, 0.02)),
                    ColorSequenceKeypoint.new(0.14, Color3.new(0.98, 1.00, 0.00)),
                    ColorSequenceKeypoint.new(0.30, Color3.new(0.07, 1.00, 0.00)),
                    ColorSequenceKeypoint.new(0.48, Color3.new(0.00, 0.98, 1.00)),
                    ColorSequenceKeypoint.new(0.69, Color3.new(0.03, 0.00, 1.00)),
                    ColorSequenceKeypoint.new(0.88, Color3.new(1.00, 0.00, 0.98)),
                    ColorSequenceKeypoint.new(1.00, Color3.new(1.00, 0.00, 0.02))
                }
    
                Trail.WidthScale = NumberSequence.new{
                    NumberSequenceKeypoint.new(0.00, 0.5, 0.00),
                    NumberSequenceKeypoint.new(1.00, 0.00, 0.00)
                }
    
                Trail.Transparency = NumberSequence.new{
                    NumberSequenceKeypoint.new(0.00, 0.00, 0.00),
                    NumberSequenceKeypoint.new(1.00, 1.00, 0.00)
                }
    
                Trail.Enabled = true
            end
        end
    
        -- å–”ç†°å‰¯å–”å›™ç«µå–™å±¶ç¬‚å–”ç¼–ç¬å–”î€¿èµ‹å–”î‚ç¦å–”ç¼–ç¬Ÿå–”ä½®è¦†å–”ï½€ç®‘å–”æ¶å¤å–”ï¿½ Trail å–™ä½®å¼—å–”ç­ç¬¡å–”è„†ç¬– ff
        local function enableTrailAndDisableFF()
            createOrUpdateTrail()
    
            local Trail = ball:FindFirstChild("Trail")
            if Trail then
                Trail.Enabled = true
            end
    
            local ff = ball:FindFirstChild("ff")
            if ff then
                ff.Enabled = false
            end
        end
    
        -- å–”ç†°å‰¯å–”å›™ç«µå–™å±¶ç¬‚å–”ç¼–ç¬å–”î€¿èµ‹å–”î‚ç¦å–”ç¼–ç¬Ÿå–”ä½®è¦†å–”ï½€ç¬¡å–”è„†ç¬– Trail å–™ä½®å¼—å–”ç­ç®‘å–”æ¶å¤å–”ï¿½ ff
        local function disableTrailAndEnableFF()
            local Trail = ball:FindFirstChild("Trail")
            if Trail then
                Trail:Destroy()
            end
    
            local ff = ball:FindFirstChild("ff")
            if ff then
                ff.Enabled = true
            end
        end
    
        ball = Helper.getBall()
    
        if ball then
            if ball_trial_Enabled then
                enableTrailAndDisableFF()
            else
                disableTrailAndEnableFF()
            end
        end
    
    end
    
    local self = Helper.getBall()
    local Visualize = Instance.new("Part",workspace)
    Visualize.Color = Color3.new(1, 1, 1)
    Visualize.Material = Enum.Material.ForceField
    Visualize.Transparency = 0.5
    Visualize.Anchored = true
    Visualize.CanCollide = false
    Visualize.CastShadow = false
    Visualize.Shape = Enum.PartType.Ball
    Visualize.Size = Vector3.new(30,30,30)
    local Highlight = Instance.new("Highlight")
    Highlight.Parent = Visualize
    Highlight.Enabled = true
    Highlight.FillTransparency = 0
    Highlight.OutlineColor = Color3.new(1, 1, 1)
    
    RunService.PreSimulation:Connect(function()
        if visualize_Enabled and LocalPlayer then
            Visualize.Transparency = 0
            Visualize.Material = Enum.Material.ForceField
            Visualize.Size = Vector3.new(AutoParry.ball.properties.parry_range,AutoParry.ball.properties.parry_range,AutoParry.ball.properties.parry_range)
            Visualize.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position)
        else
            Visualize.Material = Enum.Material.ForceField
            Visualize.Transparency = 1
        end	
        if AutoParry.ball.properties.auto_spam then
          Visualize.Color = Color3.new(1, 0, 0)
          Visualize.Size = Vector3.new(30, 30, 30)
        elseif not (AutoParry.target.current and AutoParry.target.current ~= LocalPlayer.Character) then
        Visualize.Color = Color3.new(0, 1, 0)
        Visualize.Size = Vector3.new(AutoParry.ball.properties.parry_range,AutoParry.ball.properties.parry_range,AutoParry.ball.properties.parry_range)
        elseif AutoParry.ball.properties.distance < AutoParry.ball.properties.parry_range then
        Visualize.Color = Color3.new(0, 0, 0)
        Visualize.Size = Vector3.new(AutoParry.ball.properties.parry_range,AutoParry.ball.properties.parry_range,AutoParry.ball.properties.parry_range)
        else
          Visualize.Color = Color3.new(1, 1, 1)
        end
    end)

function Player:get_aim_entity()
        local closest_entity = nil
        local minimal_dot_product = -math.huge
        local camera_direction = workspace.CurrentCamera.CFrame.LookVector
    
        for _, player in Alive:GetChildren() do
            if not player then
                continue
            end
    
            if player.Name ~= LocalPlayer.Name then
                if not player:FindFirstChild('HumanoidRootPart') then
                    continue
                end
    
                local entity_direction = (player.HumanoidRootPart.Position - workspace.CurrentCamera.CFrame.Position).Unit
                local dot_product = camera_direction:Dot(entity_direction)
    
                if dot_product > minimal_dot_product then
                    minimal_dot_product = dot_product
                    closest_entity = player
                end
            end
        end
    
        return closest_entity
    end
    
        function Player:get_closest_player_to_cursor()
        local closest_player = nil
        local minimal_dot_product = -math.huge
    
        for _, player in workspace.Alive:GetChildren() do
            if not player then
                continue
            end
            
            if player.Name ~= LocalPlayer.Name then
                if not player:FindFirstChild('HumanoidRootPart') then
                    continue
                end
    
                local screen_position, on_screen = workspace.CurrentCamera:WorldToScreenPoint(player.HumanoidRootPart.Position)
                local mouse_location = UserInputService:GetMouseLocation()
                local offset = (Vector2.new(screen_position.X, screen_position.Y) - mouse_location).Magnitude
    
                if on_screen and offset < minimal_dot_product then
                    minimal_dot_product = offset
                    closest_player = player
                end
            end
        end
    
        return closest_player
    end
    
    -- AutoParry logic to handle ball parry prediction
    function AutoParry:predict_ball_position(delta_time)
        if not self.ball then
            return nil
        end
    
        local ball_position = self.ball.Position
        local ball_velocity = self.ball.Velocity
    
        return ball_position + (ball_velocity * delta_time)
    end
    
    function AutoParry:check_parry_range()
        -- Assume LocalPlayer's position and ball's predicted position
        if not self.ball then
            return false
        end
    
        local predicted_position = self:predict_ball_position(0.1)
        local distance_to_ball = (LocalPlayer.Character.PrimaryPart.Position - predicted_position).Magnitude
    
        return distance_to_ball < self.ball.properties.parry_range
    end
    
    -- Main loop to handle the AutoParry logic
    RunService.Heartbeat:Connect(function(delta_time)
        if auto_parry_enabled then
            AutoParry.ball = AutoParry.get_ball()
            
            if AutoParry:check_parry_range() then
                -- Fire the parry remote if within range
                if AutoParry.ball.properties.parry_remote then
                    AutoParry.ball.properties.parry_remote:FireServer()
                end
            end
        end
        
        if visualize_Enabled then
            -- Update visualization of the parry range
            Visualize.Size = Vector3.new(AutoParry.ball.properties.parry_range, AutoParry.ball.properties.parry_range, AutoParry.ball.properties.parry_range)
            Visualize.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
        end
    end)
    
    -- Helper function to fetch the ball's training target
    function AutoParry:get_training_ball()
        for _, ball in workspace.Balls:GetChildren() do
            if ball:GetAttribute("trainingBall") then
                return ball
            end
        end
    end
    
    -- Function to toggle auto-parry
    function AutoParry:toggle_auto_parry(state)
        auto_parry_enabled = state
    end
    
    -- Example toggle function for visualization
    function toggle_visualize(state)
        visualize_Enabled = state
    end
    
    -- Bind toggle functions to specific keys (example: "P" for auto-parry, "V" for visualization)
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then
            return
        end
    
        if input.KeyCode == Enum.KeyCode.P then
            AutoParry:toggle_auto_parry(not auto_parry_enabled)
        elseif input.KeyCode == Enum.KeyCode.V then
            toggle_visualize(not visualize_Enabled)
        end
    end)
end

ScriptLoader()
