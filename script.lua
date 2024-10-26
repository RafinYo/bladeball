-- // Key System \\ --
--// Key System UI
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
    status.Text = "Loading Xyris Hub"
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
    rotatingImage.Image = "rbxassetid://114282177083923"  -- Replace with the actual image asset ID
    
    if syn then syn.protect_gui(loading) end
    
    repeat wait() until game:GetService("Players").LocalPlayer
    status.Text = "Loading Xyris Hub : By Xyris Hub Team"
    
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
        ["Title"] = "Xyris Hub",
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
    
        -- å–”ç†°å‰¯å–”å›™ç«µå–™å±¶ç¬‚å–”ç¼–ç¬å–”î€¿èµ‹å–”î‚ç¦å–”ç¼–ç¬Ÿå–”ä½®è¦†å–”ï½€é‡œå–”ï½€ç®Ÿå–”ä¾§ç«¾å–”î‚ç¦å–”ç²ªè…‘å–”î…™å‰¯å–”æ¶ç®‘å–”æ–·ç¬— Trail
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
            if player == LocalPlayer.Character then
                continue
            end
    
            if player.Parent ~= Alive then
                continue
            end
    
            local player_direction = (player.PrimaryPart.Position - workspace.CurrentCamera.CFrame.Position).Unit
            local pointer = World.get_pointer()
            local dot_product = pointer.LookVector:Dot(player_direction)
    
            if dot_product > minimal_dot_product then
                minimal_dot_product = dot_product
                closest_player = player
            end
        end
    
        return closest_player
    end

    function AutoParry.get_parry_remote()
        local Services = {game:GetService("VirtualUser"),game:GetService('VirtualInputManager')}

        for _, v in pairs(Services) do
            local temp_remote = v:FindFirstChildOfClass('RemoteEvent')
    
            if temp_remote and temp_remote.Name:find('\n') then
            AutoParry.ball.properties.parry_remote = temp_remote
        end
    end
end
    
AutoParry.get_parry_remote()
AutoParry.get_parry_remote()
AutoParry.get_parry_remote()
AutoParry.get_parry_remote()

function AutoParry.perform_grab_animation()
        local animation = ReplicatedStorage.Shared.SwordAPI.Collection.Default:FindFirstChild('GrabParry')
        local currently_equipped = Player.Entity.properties.sword
    
        if not currently_equipped or currently_equipped == 'Titan Blade' then
            return
        end
    
        if not animation then
            return
        end
    
        local sword_data = ReplicatedStorage.Shared.ReplicatedInstances.Swords.GetSword:Invoke(currently_equipped)
    
        if not sword_data or not sword_data['AnimationType'] then
            return
        end
    
        local character = LocalPlayer.Character
    
        if not character or not character:FindFirstChild('Humanoid') then
            return
        end
    
        for _, object in ReplicatedStorage.Shared.SwordAPI.Collection:GetChildren() do
            if object.Name ~= sword_data['AnimationType'] then
                continue
            end
    
            if not (object:FindFirstChild('GrabParry') or object:FindFirstChild('Grab')) then
                continue
            end
    
            local sword_animation_type = 'GrabParry'
    
            if object:FindFirstChild('Grab') then
                sword_animation_type = 'Grab'
            end
    
            animation = object[sword_animation_type]
        end
    
        Player.properties.grab_animation = character.Humanoid:LoadAnimation(animation)
        Player.properties.grab_animation:Play()
end
    
function AutoParry.perform_parry()
	local ball_properties = AutoParry.ball.properties

	if ball_properties.cooldown and not ball_properties.auto_spam then
		return
	end

	ball_properties.parries += 1
	AutoParry.ball.properties.last_hit = tick()

	local camera = workspace.CurrentCamera
	local camera_direction = camera.CFrame.Position

	local direction = camera.CFrame
	local target_position = AutoParry.entity_properties.server_position

	if not ball_properties.auto_spam then
		AutoParry.perform_grab_animation()

		ball_properties.cooldown = true

		if current_curve == 'Stright' then
			direction = CFrame.new(LocalPlayer.Character.PrimaryPart.Position, target_position)
		end

		if current_curve == 'Backwards' then
			direction = CFrame.new(camera_direction, (camera_direction + (-camera.CFrame.LookVector * 10000)) + Vector3.new(0, 1000, 0))
		end

		if current_curve == 'Randomizer' then
			direction = CFrame.new(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(math.random(-1000, 1000), math.random(-350, 1000), math.random(-1000, 1000)))
		end

		if current_curve == 'Boost' then
			direction = CFrame.new(LocalPlayer.Character.PrimaryPart.Position, target_position + Vector3.new(0, 150, 0))
		end
	else
		direction = CFrame.new(camera_direction, target_position + Vector3.new(0, 60, 0))

		ball_properties.parry_remote:FireServer(
			0,
			direction,
			{ [AutoParry.target.aim.Name] = target_position },
			{ target_position.X, target_position.Y },
			false
		)

		task.delay(1, function()
			if ball_properties.parries > 0 then
				ball_properties.parries -= 1
			end
		end)

		return
	end

	ball_properties.parry_remote:FireServer(
		0.5,
		direction,
		{ [AutoParry.target.aim.Name] = target_position },
		{ target_position.X, target_position.Y },
		false
	)

	task.delay(0.5, function()
		if ball_properties.parries > 0 then
			ball_properties.parries -= 1
		end
	end)
end
    
function AutoParry.reset()
        nowprediction = true
        AutoParry.ball.properties.is_curved = false
        AutoParry.ball.properties.auto_spam = false
        AutoParry.ball.properties.cooldown = false
        AutoParry.ball.properties.maximum_speed = 0
        AutoParry.ball.properties.parries = 0
        AutoParry.entity_properties.server_position = Vector3.zero
        AutoParry.target.current = nil
        AutoParry.target.from = nil
end

ReplicatedStorage.Remotes.PlrHellHooked.OnClientEvent:Connect(function(hooker: Model)
        if hooker.Name == LocalPlayer.Name then
            AutoParry.ball.properties.hell_hook_completed = true
    
            return
        end
    
        AutoParry.ball.properties.hell_hook_completed = false
    end)
    
    ReplicatedStorage.Remotes.PlrHellHookCompleted.OnClientEvent:Connect(function()
        AutoParry.ball.properties.hell_hook_completed = true
    end)
    
    function AutoParry.is_curved()
    if anticurveskibi then
        local target = AutoParry.target.current
    
        if not target then
            return false
        end
    
        local ball_properties = AutoParry.ball.properties
        local current_target = AutoParry.target.current.Name
    
        if target.PrimaryPart:FindFirstChild('MaxShield') and current_target ~= LocalPlayer.Name and ball_properties.distance < 50 then
            return false
        end
    
        if AutoParry.ball.ball_entity:FindFirstChild('TimeHole1') and current_target ~= LocalPlayer.Name and ball_properties.distance < 100 then
            ball_properties.auto_spam = false
    
            return false
        end
    
        if AutoParry.ball.ball_entity:FindFirstChild('WEMAZOOKIEGO') and current_target ~= LocalPlayer.Name and ball_properties.distance < 100 then
            return false
        end
    
        if AutoParry.ball.ball_entity:FindFirstChild('At2') and ball_properties.speed <= 0 then
            return true
        end
        if AutoParry.ball.ball_entity:FindFirstChild('AeroDynamicSlashVFX') then
            Debris:AddItem(AutoParry.ball.ball_entity.AeroDynamicSlashVFX, 0)
    
            ball_properties.auto_spam = false
            ball_properties.aero_dynamic_time = tick()
        end
    
        if RunTime:FindFirstChild('Tornado') then
            if ball_properties.distance > 5 and (tick() - ball_properties.aero_dynamic_time) < (RunTime.Tornado:GetAttribute("TornadoTime") or 1) + 0.314159 then
                return true
            end
        end
    
        if not ball_properties.hell_hook_completed and target.Name == LocalPlayer.Name and ball_properties.distance > 5 - math.random() then
            return true
        end
    
        local ball_direction = ball_properties.velocity.Unit
        local ball_speed = ball_properties.speed
    
        local speed_threshold = math.min(ball_speed / 100, 40)
        local angle_threshold = 40 * math.max(ball_properties.dot, 0)
    
        local player_ping = Player.Entity.properties.ping
    
        local accurate_direction = ball_properties.velocity.Unit
        accurate_direction *= ball_direction
    
        local direction_difference = (accurate_direction - ball_properties.velocity).Unit
        local accurate_dot = ball_properties.direction:Dot(direction_difference)
        local dot_difference = ball_properties.dot - accurate_dot
        local dot_threshold = 0.5 - player_ping / 1000
    
        local reach_time = ball_properties.distance / ball_properties.maximum_speed - (player_ping / 1000)
        local enough_speed = ball_properties.maximum_speed > 100
    
        local ball_distance_threshold = 15 - math.min(ball_properties.distance / 1000, 15) + angle_threshold + speed_threshold
    
        if enough_speed and reach_time > player_ping / 10 then
            ball_distance_threshold = math.max(ball_distance_threshold - 15, 15)
        end
    
        if ball_properties.distance < ball_distance_threshold then
            return false
        end
    
        if dot_difference < dot_threshold then
            return true
        end
    
        if ball_properties.lerp_radians < 0.018 then
            ball_properties.last_curve_position = ball_properties.position
            ball_properties.last_warping = tick() 
        end
    
        if (tick() - ball_properties.last_warping) < (reach_time / 1.5) then
            return true
        end
    
        return ball_properties.dot < dot_threshold
        else
        return false
        end
    end
    
    local old_from_target = nil :: Model
    
    function AutoParry:is_spam()
    if skibidispam then
        local target = AutoParry.target.current
    
        if not target then
            return false
        end
    
        if AutoParry.target.from ~= LocalPlayer.Character then
            old_from_target = AutoParry.target.from
        end
    
        if self.parries < 3 and AutoParry.target.from == old_from_target then
            return false
        end
    
        local player_ping = Player.Entity.properties.ping
        local distance_threshold = (self.spam_accuracy / 2.5) + (player_ping / 80)
    
        local ball_properties = AutoParry.ball.properties
        local reach_time = ball_properties.distance / ball_properties.maximum_speed - (player_ping / 1000)
    
        if (tick() - self.last_hit) > 0.8 and self.entity_distance > distance_threshold and self.parries < 3 then
            self.parries = 1
    
            return false
        end
    
        if ball_properties.lerp_radians > 0.028 then
            if self.parries > 2 then
                self.parries = 1
            end
    
            return false
        end
    
        if (tick() - ball_properties.last_warping) < (reach_time / 1.3) and self.entity_distance > distance_threshold and self.parries < 4 then
            if self.parries > 3 then
                self.parries = 1
            end
    
            return false
        end
    
        if math.abs(self.speed - self.old_speed) < 5.2 and self.entity_distance > distance_threshold and self.speed < 60 and self.parries < 3 then
            if self.parries > 3 then
                self.parries = 0
            end
    
            return false
        end
    
        if self.speed < 10 then
            self.parries = 1
    
            return false
        end
    
        if self.maximum_speed < self.speed and self.entity_distance > distance_threshold then
            self.parries = 1
    
            return false
        end
    
        if self.entity_distance > self.range and self.entity_distance > distance_threshold then
            if self.parries > 2 then
                self.parries = 1
            end
    
            return false
        end
    
        if self.ball_distance > self.range and self.entity_distance > distance_threshold then
            if self.parries > 2 then
                self.parries = 2
            end
    
            return false
        end
    
        if self.last_position_distance > self.spam_accuracy and self.entity_distance > distance_threshold then
            if self.parries > 4 then
                self.parries = 2
            end
    
            return false
        end
    
        if self.ball_distance > self.spam_accuracy and self.ball_distance > distance_threshold then
            if self.parries > 3 then
                self.parries = 2
            end
    
            return false
        end
    
        if self.entity_distance > self.spam_accuracy and self.entity_distance > (distance_threshold - math.pi) then
            if self.parries > 3 then
                self.parries = 2
            end
    
            return false
        end
    
        return true	
        else
        return false
    end
    end

RunService:BindToRenderStep('server position simulation', 1, function()
        local ping = Stats.Network.ServerStatsItem['Data Ping']:GetValue()
    
        if not LocalPlayer.Character then
            return
        end
    
        if not LocalPlayer.Character.PrimaryPart then
            return
        end
    
        local PrimaryPart = LocalPlayer.Character.PrimaryPart
        local old_position = PrimaryPart.Position
    
        task.delay(ping / 1000, function()
            Player.Entity.properties.server_position = old_position
        end)
    end)
    
    RunService.PreSimulation:Connect(function()
        NetworkClient:SetOutgoingKBPSLimit(math.huge)
    
        local character = LocalPlayer.Character
    
        if not character then
            return
        end
    
        if not character.PrimaryPart then
            return
        end
    
        local player_properties = Player.Entity.properties
    
        player_properties.sword = character:GetAttribute('CurrentlyEquippedSword')
        player_properties.ping = Stats.Network.ServerStatsItem['Data Ping']:GetValue()
        player_properties.velocity = character.PrimaryPart.AssemblyLinearVelocity
        player_properties.speed = Player.Entity.properties.velocity.Magnitude
        player_properties.is_moving = Player.Entity.properties.speed > 30
    end)
    
    AutoParry.ball.ball_entity = AutoParry.get_ball()
    AutoParry.ball.client_ball_entity = AutoParry.get_client_ball()
    
    RunService.PreSimulation:Connect(function()
        local ball = AutoParry.ball.ball_entity
    
        if not ball then
            return
        end
    
        local zoomies = ball:FindFirstChild('zoomies')
    
        local ball_properties = AutoParry.ball.properties
    
        ball_properties.position = ball.Position
        ball_properties.velocity = ball.AssemblyLinearVelocity
    
        if zoomies then
            ball_properties.velocity = ball.zoomies.VectorVelocity
        end
    
        ball_properties.distance = (Player.Entity.properties.server_position - ball_properties.position).Magnitude
        ball_properties.speed = ball_properties.velocity.Magnitude
        ball_properties.direction = (Player.Entity.properties.server_position - ball_properties.position).Unit
        ball_properties.dot = ball_properties.direction:Dot(ball_properties.velocity.Unit)
        ball_properties.radians = math.rad(math.asin(ball_properties.dot))
        ball_properties.lerp_radians = linear_predict(ball_properties.lerp_radians, ball_properties.radians, 0.8)
    
        if not (ball_properties.lerp_radians < 0) and not (ball_properties.lerp_radians > 0) then
            ball_properties.lerp_radians = 0.027
        end
    
        ball_properties.maximum_speed = math.max(ball_properties.speed, ball_properties.maximum_speed)
    
        AutoParry.target.aim = (not uis.TouchEnabled and Player.get_closest_player_to_cursor() or Player.get_aim_entity())
    
        if ball:GetAttribute('from') ~= nil then
            AutoParry.target.from = Alive:FindFirstChild(ball:GetAttribute('from'))
        end
    
        AutoParry.target.current = Alive:FindFirstChild(ball:GetAttribute('target'))
    
        if AutoParry.target == nil then
            return
        end
    
        ball_properties.rotation = ball_properties.position
    
        if AutoParry.target.current and AutoParry.target.current.Name == LocalPlayer.Name then
            ball_properties.rotation = AutoParry.target.aim.PrimaryPart.Position
    
            return
        end
    
        if not AutoParry.target.current then
            return
        end
    
        local target_server_position = AutoParry.target.current.PrimaryPart.Position
        local target_velocity = AutoParry.target.current.PrimaryPart.AssemblyLinearVelocity
    
        AutoParry.entity_properties.server_position = target_server_position
        AutoParry.entity_properties.velocity = target_velocity
        AutoParry.entity_properties.distance = LocalPlayer:DistanceFromCharacter(target_server_position)
        AutoParry.entity_properties.direction = (Player.Entity.properties.server_position - target_server_position).Unit
        AutoParry.entity_properties.speed = target_velocity.Magnitude
        AutoParry.entity_properties.is_moving = target_velocity.Magnitude > 0.1
        AutoParry.entity_properties.dot = AutoParry.entity_properties.is_moving and math.max(AutoParry.entity_properties.direction:Dot(target_velocity.Unit), 0)
    end)
    local function optimizer()
    Lighting.GlobalShadows = false
            Lighting.Brightness = 0
            workspace.LevelOfDetail = Enum.LevelOfDetailSetting.Low
            for _, v in pairs(workspace:GetDescendants()) do
                if v:IsA("Part") or v:IsA("MeshPart") then
                    v.Material = Enum.Material.SmoothPlastic
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") then
                    v.Enabled = false
                end
            end
            Lighting.FogEnd = 9e9
    local function optimizePerformance()
        -- Boost FPS by disabling unnecessary features and reducing settings
        game:GetService("Workspace").StreamingEnabled = true
        game:GetService("Lighting").GlobalShadows = false -- Disable shadows
        game:GetService("Lighting").Brightness = 2 -- Adjust lighting for smoothness
        game:GetService("UserInputService").MouseDeltaSensitivity = 0.5 -- Reduce mouse lag
        setfpscap(256) -- Increase FPS cap to 120 for smoother performance
    
        -- Remove unnecessary debris
        game:GetService("Debris").MaxItems = 50 -- Limits the number of debris to prevent overload
    
        -- Disable unused services
    
        -- Optimize memory usage
        local function optimizeMemoryUsage()
            local serviceMemoryLimits = {
                ['Players'] = 2048,
                ['Workspace'] = 2048,
                ['ReplicatedStorage'] = 2048,
                -- Add more services as needed
            }
    
            for serviceName, limit in pairs(serviceMemoryLimits) do
                local service = game:GetService(serviceName)
                if service then
                    -- Assuming there is a method to set memory limit
                    -- Uncomment if such a method exists
                    -- service:SetMemoryLimit(limit)
                end
            end
        end
        optimizeMemoryUsage()
    
        -- Reduce network lag by setting replication and packet limits
        local function optimizeNetwork()
            local networkSettings = settings().Network
            networkSettings.IncomingReplicationLag = 0 -- Minimize network delay
        end
        optimizeNetwork()
    
        -- Manually trigger garbage collection to free up memory
        local function manageGarbageCollection()
            gcinfo("collect")
            gcinfo("setpause", 100) -- Controls GC cycle pause duration
            gcinfo("setstepmul", 5000) -- Controls how much work is done in each GC step
        end
        manageGarbageCollection()
    end
    optimizePerformance()
    end

local LocalPlayer = Players.LocalPlayer

local Window = interface:CreateWindow({
	Title = "Xyris Hub -Blade Ball",
	SubTitle = "By: Xyris Hub Team",
	TabWidth = 180,
	Size = UDim2.fromOffset(600, 480),
	Acrylic = false,
	Theme = "Acrylic",
	MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
	Main = Window:AddTab({ Title = "Main", Icon = "sword" }),
	Visual = Window:AddTab({ Title = "Visual", Icon = "eye" }),
	Setting = Window:AddTab({ Title = "Settings", Icon = "cog" }),
	Debug = Window:AddTab({ Title = "Debug", Icon = "bug" }),
}

do
	local auto_parry = Tabs.Main:AddToggle("ap",{
		Title = "Auto Parry", 
		Description = "Toggle Auto Parry",
		Default = false,
	})

	auto_parry:OnChanged(function(v)
		auto_parry_enabled = v
	end)
	local auto_spam = Tabs.Main:AddToggle("am",{
            Title = "Auto Spam",
            Description = "Toggle Auto Spam",
            Default = false,
        })
    
        auto_spam:OnChanged(function(v)
            skibidispam = v
        end)

	local parry_mode = Tabs.Main:AddDropdown("pm",{
		Title = "Parry Mode",
		Description = "Choose a parry mode",
		Values = {"Legit", "Rage"},
		Multi = false,
		Default = 2,
	})

	parry_mode:OnChanged(function(v)
		parry_mode = tostring(v)
		print(v)
	end)


	local curve_method2 = Tabs.Main:AddDropdown("cm",{
		Title = "Curve Medthod",
		Description = "Curve Medthod that all",
		Values = {"Stright", "Backwards", "Randomizer", "Boost",},
		Multi = false,
		Default = 4,
	})

	curve_method2:OnChanged(function(v)
		current_curve = v
	end)

	local personnel_detector2 = Tabs.Main:AddToggle("pd",{
		Title = "Personnel detector", 
		Description = "Leave when mod contect creator etc joins",
		Default = false,
	})

	personnel_detector2:OnChanged(function(v)
		personnel_detector_enabled = v
	end)

	local anti_lag = Tabs.Main:AddToggle("al",{
		Title = "Anti lag", 
		Description = "Removes Lag",
		Default = false,
	})

	anti_lag:OnChanged(function(v)
		anti_lag_enabled = v

		if anti_lag_enabled then
			local lighting = game:GetService("Lighting")
			lighting.GlobalShadows = false
			lighting.Brightness = 0
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") or v:IsA("MeshPart") then


				elseif v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") then
					v.Enabled = false
				end
			end
			lighting.FogEnd = 9e9


		else
			local lighting = game:GetService("Lighting")
			lighting.GlobalShadows = true
			lighting.Brightness = 2
			for _, v in pairs(workspace:GetDescendants()) do
				if v:IsA("Part") or v:IsA("MeshPart") then


				elseif v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Fire") then
					v.Enabled = true
				end
			end
		end
	end)
end

Tabs.Main:AddButton({
            Title = "Optimize",
            Description = "Smoothen Ur Game Performance",
            Callback = function()
             optimizer()
            end
           })
          
do
	local ball_trail = Tabs.Visual:AddToggle("bt",{
		Title = "Ball Trail", 
		Description = "Trail but for ball (old version may have bug)",
		Default = false,
	})

	local visualize = Tabs.Debug:AddToggle("vl",{
		Title = "Visualize", 
		Description = "Visualize a Parry range",
		Default = false,
	})

	visualize:OnChanged(function(v)
		visualize_Enabled = v
	end)

	ball_trail:OnChanged(function(v)
		ball_trial_Enabled = v
	end)

end


do
	local dymanic_curve_check = Tabs.Setting:AddToggle("dcc",{
		Title = "Dymanic Adjust Curve Detection", 
		Description = "Work only for spam",
		Default = true,
	})
	dymanic_curve_check:OnChanged(function(v)
		dymanic_curve_check_enabled = v
	end)

	local adjust_spam_speed = Tabs.Setting:AddDropdown("Asps",{
		Title = "Spam Speed",
		Description = "Adjust the Spam Speed",
		Values = {1, 2, 3, 4,5,6,7,8,9,10,},
		Multi = false,
		Default = 3,
	})

	adjust_spam_speed:OnChanged(function(v)
		spam_speed = v
	end)
end

local dropdown_emotes_table = {}
    local emote_instances = {}
    
    for _, emote in ReplicatedStorage.Misc.Emotes:GetChildren() do
        local emote_name = emote:GetAttribute('EmoteName')
    
        if not emote_name then
            return
        end
    
        table.insert(dropdown_emotes_table, emote_name)
        emote_instances[emote_name] = emote
    end
    
    LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.zero)
    end)
    
    local current_animation = nil
    local current_animation_name = nil
    
    local looped_emotes = {
        "Emote108",
        "Emote225",
        "Emote300",
        "Emote301"
    }
    
    
    local spamming_done = true :: boolean
    
    
    
    RunService.PostSimulation:Connect(function()
        if not workspace.CurrentCamera then
            return
        end
    
        local character = LocalPlayer.Character
    
        if not character then
            return
        end
    
    
    
        if not gravity_enabled then
            workspace.Gravity = 196.2
    
            return
        end
    
    
    
        workspace.Gravity = 196.2 / (strength / 10)
    end)
    
    local function clear_skyboxes()
        for _, child in Lighting:GetChildren() do
            if not child:IsA('Sky') then
                continue
            end
    
            Debris:AddItem(child, 0)
        end
    end
    
    
    
    
    local staff_roles = {
        'content creator',
        'contributor',
        'trial qa',
        'tester',
        'mod'
    }
    
    Players.PlayerAdded:Connect(function(player)
        local is_friend = LocalPlayer:IsFriendsWith(player.UserId)
    
    
    
        if not personnel_detector_enabled then
            return
        end
    
    
    
        local player_role = tostring(player:GetRoleInGroup(12836673)):lower()
        local player_is_staff = table.find(staff_roles, player_role)
    
        if player_is_staff then
            game:Shutdown()
    
            return
        end
    end)
    
    
    local is_respawned = false :: boolean
    
    workspace.Balls.ChildRemoved:Connect(function(child)
        is_respawned = false
    
        if child == AutoParry.ball.ball_entity then
            AutoParry.ball.ball_entity = nil
            AutoParry.ball.client_ball_entity = nil
            AutoParry.reset()
        end
    end)
    
    workspace.Balls.ChildAdded:Connect(function()
        if is_respawned then
            return
        end
    
        is_respawned = true
    
        local ball_properties = AutoParry.ball.properties
    
        ball_properties.respawn_time = tick()
    
        AutoParry.ball.ball_entity = AutoParry.get_ball()
        AutoParry.ball.client_ball_entity = AutoParry.get_client_ball()
    
        local target = AutoParry.ball.ball_entity:GetAttribute('target')
    
        AutoParry.ball.ball_entity:GetAttributeChangedSignal('target'):Connect(function()
            if target == LocalPlayer.Name then
                ball_properties.cooldown = false
    
                return
            end
    
            ball_properties.cooldown = false
            ball_properties.old_speed = ball_properties.speed
            ball_properties.last_position = ball_properties.position
    
            ball_properties.parries += 1
    
            task.delay(1, function()
                if ball_properties.parries > 0 then
                    ball_properties.parries -= 1
                end
            end)	
        end)
    end)
    RunService.PreSimulation:Connect(function()
        if not AutoParry.ball.properties.auto_spam then
            return
        end
        for v = 1,speeddo do
            AutoParry.perform_parry()
        end
    end)
    
    local custom_win_audio = Instance.new('Sound', sounds_folder)
    
    
    
    ReplicatedStorage.Remotes.ParrySuccessAll.OnClientEvent:Connect(function(slash: any, root: any)
        task.spawn(function()
            if root.Parent and root.Parent ~= LocalPlayer.Character then
                if root.Parent.Parent ~= Alive then
                    return
                end
    
                AutoParry.ball.properties.cooldown = false
            end
        end)
    
        if AutoParry.ball.properties.auto_spam then
            for v = 1,speeddo do
                AutoParry.perform_parry()
            end
        end
    
        if AutoParry.target.current ~= LocalPlayer.Name then
            nowprediction = true
        end
    end)
    
    local custom_audio = Instance.new('Sound', sounds_folder)
    
    ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
        if LocalPlayer.Character.Parent ~= Alive then
            return
        end
    
        if not Player.properties.grab_animation then
            return
        end
    
    
    
        Player.properties.grab_animation:Stop()
    
        local ball = AutoParry.get_client_ball()
    
        if not ball then
            return
        end
    
    
        if AutoParry.ball.properties.auto_spam then
            for v = 1,speeddo do
                AutoParry.perform_parry()
            end
        end
    
    
        ball = nil
    end)

RunService.PostSimulation:Connect(function()
    
        if not auto_parry_enabled then
            AutoParry.reset()
    
            return
        end
    
        local Character = LocalPlayer.Character
    
        if not Character then
            return
        end
    
        if Character.Parent == Dead then
            AutoParry.reset()
    
            return
        end
    
        if not AutoParry.ball.ball_entity then
            return
        end
    
        local ball_properties = AutoParry.ball.properties
    
        ball_properties.is_curved = AutoParry.is_curved()
    
        local baseMoveAmount = 0.48
        local moveAmount = baseMoveAmount * (1 / (AutoParry.entity_properties.distance + 0.01)) * 1000
    
        local ping_threshold = math.clamp(Player.Entity.properties.ping / 10, 10, 16)
    
        local spam_accuracity = (math.min(moveAmount + (ball_properties.speed / 8.4), (150 + moveAmount)) + ping_threshold)
        local parry_accuracity = ball_properties.maximum_speed / 10.8 + ping_threshold
        local player_properties = Player.Entity.properties
    
    
        if player_properties.is_moving then
            parry_accuracity *= 1.1
        end
    
        if Player.Entity.properties.ping >= 190 then
            parry_accuracity = parry_accuracity * (1 + (Player.Entity.properties.ping / 500))
    
        end
    
        ball_properties.spam_range = ping_threshold + ball_properties.speed / 2.38
        ball_properties.parry_range = (ping_threshold + ball_properties.speed) * 1.53 / math.pi
    
        if Player.Entity.properties.sword == 'Titan Blade' then
            ball_properties.parry_range += 11
            ball_properties.spam_range += 2
        end	
    
        local distance_to_last_position = LocalPlayer:DistanceFromCharacter(ball_properties.last_position)
    
        if ball_properties.auto_spam and AutoParry.target.current then
            ball_properties.auto_spam = AutoParry.is_spam({
                speed = ball_properties.speed,
                spam_accuracy = spam_accuracity,
                parries = ball_properties.parries,
                ball_speed = ball_properties.speed,
                range = ball_properties.spam_range / (3.15 - ping_threshold / 10),
                last_hit = ball_properties.last_hit,
                ball_distance = ball_properties.distance,
                maximum_speed = ball_properties.maximum_speed,
                old_speed = AutoParry.ball.properties.old_speed,
                entity_distance = AutoParry.entity_properties.distance,
                last_position_distance = distance_to_last_position,
            })
        end
    
        if ball_properties.auto_spam then
            return
        end
    
    
    
    
    
        if AutoParry.target.current and AutoParry.target.current.Name == LocalPlayer.Name then
            ball_properties.auto_spam = AutoParry.is_spam({
                speed = ball_properties.speed,
                spam_accuracy = spam_accuracity,
                parries = ball_properties.parries,
                ball_speed = ball_properties.speed,
                range = ball_properties.spam_range,
                last_hit = ball_properties.last_hit,
                ball_distance = ball_properties.distance,
                maximum_speed = ball_properties.maximum_speed,
                old_speed = AutoParry.ball.properties.old_speed,
                entity_distance = AutoParry.entity_properties.distance,
                last_position_distance = distance_to_last_position,
            })
        end
    
    
    
        if ball_properties.auto_spam then
            return
        end
    
        if ball_properties.is_curved then
            return
        end
    
        if ball_properties.distance > ball_properties.parry_range and ball_properties.distance > parry_accuracity then
            return
        end
    
        if AutoParry.target.current and AutoParry.target.current ~= LocalPlayer.Character then
            return
        end
    
        local lastPosition = LocalPlayer.Character.PrimaryPart.Position 
        local target_Ball_Distance = (ball_properties.position - AutoParry.entity_properties.server_position).Magnitude
    
        if parry_mode == "Legit" then
            if target_Ball_Distance <= 10 and AutoParry.entity_properties.distance <= 50 then
                if math.random(1,2) == 1 then
                    AutoParry.perform_parry()
                end
            end
        end
    
        if parry_mode == "Legit" then
            if ball_properties.maximum_speed >= 250 then
                parry_accuracity *= 1.2
            end
        end
    
        lastPosition = LocalPlayer.Character.PrimaryPart.Position 
    
    
    
        ball_properties.last_ball_pos = ball_properties.position
    
        AutoParry.perform_parry()
    
        task.spawn(function()
            repeat
                RunService.PreSimulation:Wait(0)
            until 
            (tick() - ball_properties.last_hit) > 1 - (ping_threshold / 100)
    
            ball_properties.cooldown = false
        end)
    end)
local ScreenGui = Instance.new("ScreenGui")
    local ImageButton = Instance.new("ImageButton")
    local UICorner = Instance.new("UICorner")
     
    -- Configure the ScreenGui
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
     
    -- Configure the ImageButton
    ImageButton.Parent = ScreenGui
    ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.BorderSizePixel = 0
    ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    ImageButton.Size = UDim2.new(0, 50, 0, 50)
    ImageButton.Image = "rbxassetid://73588754900171" -- Set the image using the decal ID
    ImageButton.Draggable = true
     
    -- Add UICorner for rounded corners
    UICorner.Parent = ImageButton
     
    -- Function to handle click event
    ImageButton.MouseButton1Click:Connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    end)
    local Noti1fy = FlurioreLib:MakeNotify({
        ["Title"] = "Xyris Hub",
        ["Description"] = "",
        ["Color"] = Color3.fromRGB(0, 0, 128),
        ["Content"] = "Loaded Succesfully",
        ["Time"] = 1,
        ["Delay"] = 5
    })
    local getedping = 0
    local pingSpikeNotified = false
    local autoSpamNotified = false
    local notificationCooldown = 5 -- Cooldown time in seconds
    
    local lastNotificationTime = 0
    local lastAutoSpamNotificationTime = 0
    
    task.delay(1, function()
        local player_ping = Player.Entity.properties.ping
        if player_ping > 100 and player_ping < 200 then
        FlurioreLib:MakeNotify({
        ["Title"] = "[Warning]:",
        ["Description"] = "Connection Problem",
        ["Color"] = Color3.fromRGB(255, 255, 0),
        ["Content"] = "Low connection speed, delays may occur",
        ["Time"] = 1,
        ["Delay"] = 5
    })
        end
        if player_ping >= 200 then
        FlurioreLib:MakeNotify({
        ["Title"] = "[Critical]:",
        ["Description"] = "Connection Problem",
        ["Color"] = Color3.fromRGB(255, 0, 0),
        ["Content"] = "Critically slow connection speed, delays ensured.",
        ["Time"] = 1,
        ["Delay"] = 5
    })
        end
    end)
    local getedping = 0
    local pingSpikeNotified = false
    local autoSpamNotified = false
    local notificationCooldown = 7.5 -- Cooldown time in seconds
    
    local lastNotificationTime = 0
    local lastAutoSpamNotificationTime = 0
    RunService.PreSimulation:Connect(function()
        -- Check for auto-spam, add a cooldown for auto-spam detection
        if AutoParry.ball.properties.auto_spam and not autoSpamNotified then
            local currentAutoSpamTime = tick()
            if currentAutoSpamTime - lastAutoSpamNotificationTime >= notificationCooldown then
                FlurioreLib:MakeNotify({
                    ["Title"] = "[Information]:",
                    ["Description"] = "Auto Parry Behavior",
                    ["Color"] = Color3.fromRGB(255, 0, 0),
                    ["Content"] = "Auto Spam Activated",
                    ["Time"] = 1,
                    ["Delay"] = 5
                })
                -- Set auto-spam flag and time
                autoSpamNotified = true
                lastAutoSpamNotificationTime = currentAutoSpamTime
            end
        else
            autoSpamNotified = false -- Reset if auto-spam condition is no longer true
        end
    end)

        -- Return true when the loading is complete
        return true
    end
    -- Wait for the loader function to return true before proceeding
    repeat wait() until loader()
    
    -- Proceed to fade out the background and status
    task.wait(.66)
    
    tween(background, TweenInfo.new(.55), {BackgroundTransparency = 1})
    tween(status, TweenInfo.new(.55), {TextTransparency = 1, TextStrokeTransparency = 1})
    task.wait(.55)
    loading:Destroy()
    end
    local validKeys = { "xyrisbladeball123" }
    local keySubmitted = false
    
    --// Create UI Elements
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui -- Ensures the UI is visible to the player
    
    local backgroundGradient = Instance.new("UIGradient")
    backgroundGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(72, 118, 255)), -- Light Blue
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 182, 193)) -- Light Pink
    }
    
    -- Create a blur frame to act as a background
    local blur = Instance.new("Frame")
    blur.Size = UDim2.new(0, 320, 0, 170) -- 10 studs bigger than the key system Frame
    blur.Position = UDim2.new(0.5, -160, 0.5, -85) -- Center the blur frame
    blur.BackgroundTransparency = 0.2 -- Adds a slight blur background
    blur.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- Lighter background
    blur.Parent = screenGui
    backgroundGradient.Parent = blur
    local blurCorner = Instance.new("UICorner")
    blurCorner.CornerRadius = UDim.new(0.15, 0) -- Makes the blur frame curved
    blurCorner.Parent = blur
    
    -- Create a main frame with a blue-purple gradient
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 150)
    frame.Position = UDim2.new(0.5, -150, 0.5, -75) -- Center the frame on the screen
    frame.BackgroundTransparency = 0.1 -- Set transparency to 0.1 for a vibrant background
    frame.Parent = blur
    
    local frameGradient = Instance.new("UIGradient")
    frameGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(102, 51, 153)), -- Dark Purple
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(72, 118, 255))  -- Blue
    }
    frameGradient.Parent = frame -- Apply gradient to the main frame
    
    local frameCorner = Instance.new("UICorner")
    frameCorner.CornerRadius = UDim.new(0.15, 0) -- Rounded edges for the main frame
    frameCorner.Parent = frame
    
    -- Create a textbox for key entry
    local textbox = Instance.new("TextBox")
    textbox.Size = UDim2.new(0.9, 0, 0.3, 0)
    textbox.Position = UDim2.new(0.05, 0, 0.2, 0)
    textbox.PlaceholderText = "Enter Key"
    textbox.TextScaled = true
    textbox.TextColor3 = Color3.new(1, 1, 1) -- White text for contrast
    textbox.BackgroundColor3 = Color3.fromRGB(200, 182, 193) -- Light blue background
    textbox.Parent = frame
    
    local textboxCorner = Instance.new("UICorner")
    textboxCorner.CornerRadius = UDim.new(0.1, 0) -- Rounded edges for the textbox
    textboxCorner.Parent = textbox
    
    -- Gradient for Submit Button
    local submitButton = Instance.new("TextButton")
    submitButton.Size = UDim2.new(0.4, 0, 0.2, 0)
    submitButton.Position = UDim2.new(0.05, 0, 0.65, 0)
    submitButton.Text = "Submit Key"
    submitButton.TextScaled = true
    submitButton.TextColor3 = Color3.new(1, 1, 1) -- White text
    
    local submitGradient = Instance.new("UIGradient")
    submitGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(102, 51, 153)), -- Dark Purple
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(72, 118, 255))  -- Blue
    }
    submitGradient.Parent = submitButton
    submitButton.Parent = frame
    
    local submitCorner = Instance.new("UICorner")
    submitCorner.CornerRadius = UDim.new(0.2, 0) -- Rounded edges for the submit button
    submitCorner.Parent = submitButton
    
    -- Gradient for Get Key Button
    local getKeyButton = Instance.new("TextButton")
    getKeyButton.Size = UDim2.new(0.4, 0, 0.2, 0)
    getKeyButton.Position = UDim2.new(0.55, 0, 0.65, 0)
    getKeyButton.Text = "Get Key"
    getKeyButton.TextScaled = true
    getKeyButton.TextColor3 = Color3.new(1, 1, 1) -- White text
    
    local getKeyGradient = Instance.new("UIGradient")
    getKeyGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(102, 51, 153)), -- Dark Purple
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(72, 118, 255))  -- Blue
    }
    getKeyGradient.Parent = getKeyButton
    getKeyButton.Parent = frame
    
    local getKeyCorner = Instance.new("UICorner")
    getKeyCorner.CornerRadius = UDim.new(0.2, 0) -- Rounded edges for the get key button
    getKeyCorner.Parent = getKeyButton
    
    -- Add subtle hover effects for buttons
    local function hoverEffect(button)
        button.MouseEnter:Connect(function()
            button:TweenSize(UDim2.new(0.42, 0, 0.22, 0), "Out", "Quad", 0.2, true)
        end)
        button.MouseLeave:Connect(function()
            button:TweenSize(UDim2.new(0.4, 0, 0.2, 0), "Out", "Quad", 0.2, true)
        end)
    end
    
    hoverEffect(submitButton)
    hoverEffect(getKeyButton)
    
    -- Add animations for the UI elements
    textbox:TweenPosition(UDim2.new(0.05, 0, 0.2, 0), "Out", "Quad", 0.5, true)
    submitButton:TweenPosition(UDim2.new(0.05, 0, 0.65, 0), "Out", "Quad", 0.5, true)
    getKeyButton:TweenPosition(UDim2.new(0.55, 0, 0.65, 0), "Out", "Quad", 0.5, true)
    
    --// Functions
    local function checkKey(key)
        for _, validKey in ipairs(validKeys) do
            if key == validKey then
                return true 
            end
        end
        return false
    end
    
    local function displayNotification(title, text, duration)
        game.StarterGui:SetCore("SendNotification", {
            Title = title;
            Text = text;
            Duration = duration;
        })
    end
    
    -- Save and load key functions
    local function saveKey(key)
        writefile("SavedDadHubKey.txt", key) -- Save key to a file
    end
    
    local function loadSavedKey()
        if isfile("SavedXyrisHubKey.txt") then
            return readfile("SavedXyrisHubKey.txt") -- Return the saved key if it exists
        end
        return nil
    end
    
    -- Load previously saved key and check if it is valid
    local savedKey = loadSavedKey()
    if savedKey and checkKey(savedKey) then
        keySubmitted = true
        displayNotification("Key System", "Saved key is valid! Access Granted!", 3)
        screenGui:Destroy()
        print("Access granted from saved key!")
        ScriptLoader()
    else
        displayNotification("Key System", "No valid saved key found.", 3)
    end
    
    -- Submit button functionality
    submitButton.MouseButton1Click:Connect(function()
        local inputKey = textbox.Text
        if checkKey(inputKey) then
            saveKey(inputKey) -- Save the valid key
            displayNotification("Key System", "Correct Key Entered! UI is closing...", 3)
            task.wait(2)
            keySubmitted = true
            screenGui:Destroy() 
            displayNotification("Key System", "Access Granted!", 3)
            print("Access granted!")
            ScriptLoader()
        else
            displayNotification("Key System", "Invalid key entered!", 3)
            print("Invalid key")
            textbox.Text = "" -- Clear the textbox if the key is invalid
        end
    end)
    
    -- When the Get Key button is clicked
    getKeyButton.MouseButton1Click:Connect(function()
        setclipboard("https://discord.gg/3WtS2F7CaX") -- Copies Discord invite to the clipboard
        displayNotification("Key System", "Discord link has been successfully copied to your clipboard! Get The Key From There", 3)
        print("Discord link copied to clipboard.")
    end)
