local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "日月星辰工作室 | 脚本中心",
    Text = "状态检测:反挂机……ON",
    Duration = 5, 
})
print("反挂机开启")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
		
local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/rL0HpvH9'))()
local Window = OrionLib:MakeWindow({Name = "脚本中心 | 日月星辰工作室", HidePremium = false, SaveConfig = false, IntroText = "脚本中心 | 日月星辰工作室", ConfigFolder = "脚本中心"})

OrionLib:MakeNotification({
	Name = "日月星辰工作室",
	Content = "本脚本永久免费!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "日月星辰工作室",
	Content = "请勿拿去圈钱!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "日月星辰工作室",
	Content = "本脚本将持续更新…",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://7908417389​"
sound.Parent = game.Workspace
sound:Play()

local Tab = Window:MakeTab({
	Name = "状态",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("您的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

local announcement = Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

announcement:AddParagraph("欢迎您","亲爱的"..game.Players.LocalPlayer.Name.. "")
announcement:AddParagraph("您目前使用的注入器:"..identifyexecutor(), "Wow！^V^")
announcement:AddParagraph("脚本永久免费","真的永远免费")
announcement:AddParagraph("当前脚本版本:V1_beta","以后会继续更新的")
announcement:AddParagraph("更新公告:","增加了大量功能，功能较多的进行了简化")
announcement:AddParagraph("制作者:三岁高材生","帮助者:None")
announcement:AddParagraph("by 日月星辰工作室","")

local Player = Window:MakeTab({
	Name = "玩家",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Player:AddSlider({
	Name = "速度",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Player:AddSlider({
	Name = "跳跃高度",
	Min = 50,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "数值",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

Player:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

Player:AddTextbox({
	Name = "移动速度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

Player:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Player:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Player:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Player:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Player:AddButton({
	Name = "飞行V3（隐藏）",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/U27yQRxS'))()
  	end    
})

Player:AddButton({
	Name = "变成蛇",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})

Player:AddButton({
	Name = "让别让别人控制自己",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
	end
})

Player:AddButton({
	Name = "加速能量条",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
	end
})

Player:AddButton({
	Name = "无敌",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})

Player:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

Player:AddButton({
	Name = "吸全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})

Player:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

local Tab = Window:MakeTab({
	Name = "通用功能",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "飞行装备（可控制物体）",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/zaochuan2"))()		
  	end
})

Tab:AddButton({
	Name = "Acrylix（通用）",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/3dsonsuce/acrylix/main/Acrylix'))()
end
})

Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "无限跳",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
    end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
	Name = "光影V4",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})

Tab:AddButton({	
Name = "工具包",	
Callback = function()
	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	
     end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
    Tool = Instance.new("Tool")
    Tool.Name = "点击传送"
    Tool.RequiresHandle = false
    Tool.Parent = game.Players.LocalPlayer.Backpack
    Tool.Activated:Connect(function()
        Mouse = game.Players.LocalPlayer:GetMouse().Hit+Vector3.new(0, 2.5, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.X, Mouse.Y, Mouse.Z)
    end)
    end
})

Tab:AddButton({
	Name = "飞车(E)",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/G3GnBCyC", true))()
  	end    
})

Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})

Tab:AddButton({
	Name = "建筑工具",
	Callback = function()
Copy = Instance.new("HopperBin")
    Copy.Name = "Copy"
    Copy.BinType = 3
    Copy.Parent = game.Players.LocalPlayer.Backpack
    Delete = Instance.new("HopperBin")
    Delete.Name = "Delete"
    Delete.BinType = 4
    Delete.Parent = game.Players.LocalPlayer.Backpack
	end
})

local Tab = Window:MakeTab({
	Name = "监狱人生脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "功能类"
})

Tab:AddToggle({
	Name = "范围杀戮",
	Default = false,
	Callback = function(Value)
Aura = Value
    game.RunService.Stepped:Connect(function()
        for i, e in pairs(game.Players:GetChildren()) do
            if Aura and e ~= game.Players.LocalPlayer then
                game.ReplicatedStorage.meleeEvent:FireServer(e)
            end
        end
    end)
	end
})

local Section = Tab:AddSection({
	Name = "传送位置"
})

Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Section = Tab:AddSection({
	Name = "脚本类"
})

Tab:AddButton({
	Name = "Tigher",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
	end
})

Tab:AddButton({
	Name = "Moon Hub",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/Gae7YC84"))()
	end
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
	end
})

Tab:AddButton({
	Name = "脚本2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})

Tab:AddButton({
	Name = "脚本3",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/LiverMods/xRawnder/main/HubMoblie'))()
	end
})

local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "脚本类"
})

Tab:AddButton({
	Name = "开启卡宠",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/uR6azdQQ"))()
  	end
})

Tab:AddButton({
	Name = "自动重生和自动刷等级",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/SiWNXXeC"))()    
  	end    
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/cwCdNqds"))()
	end
})

local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "返还出生岛",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
	end    
})

Tab:AddButton({
	Name = "白雪城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   end    
})

Tab:AddButton({
	Name = "熔岩城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
  	end    
})

Tab:AddButton({
	Name = "传奇公路",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    end    
})  

local Tab = Window:MakeTab({
	Name = "blox fruits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/koonpeatch/PeatEX/master/BKHAX/BloxFruits"),true))()
	end
})

Tab:AddButton({
	Name = "脚本2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Error-IDK/Blox-Fruits-Script/main/blox%20fruit%20script.txt"))()
	end
})

local Tab = Window:MakeTab({
	Name = "忍者传奇 | 脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet("http://narwhalhacks.xyz/NarwhalHub/Main.lua", true))()
	end
})

Tab:AddButton({
	Name = "脚本2",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/scriptpastebin/raw/main/1"))()
	end
})

Tab:AddButton({
	Name = "脚本3",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/pyahwhh/pyahwhh/main/HUA%20RENZHE%20CHUANQI",true))()
	end
})

Tab:AddButton({
	Name = "脚本4",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/2UjrXwTV"))
	end
})

Tab:AddButton({
	Name = "脚本5",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "鲨口求生2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddDropdown({
	Name = "免费船只",
	Default = "1",
	Options = {"DuckyBoatBeta", "DuckyBoat", "BlueCanopyMotorboat", "BlueWoodenMotorboat", "UnicornBoat", "Jetski", "RedMarlin", "Sloop", "TugBoat", "SmallDinghyMotorboat", "JetskiDonut", "Marlin", "TubeBoat", "FishingBoat", "VikingShip", "SmallWoodenSailboat", "RedCanopyMotorboat", "Catamaran", "CombatBoat", "TourBoat", "Duckmarine", "PartyBoat", "MilitarySubmarine",  "GingerbreadSteamBoat", "Sleigh2022", "Snowmobile", "CruiseShip"},
	Callback = function(Value)
local ohString1 = (Value)

game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(ohString1)
	end    
})

Tab:AddButton({
	Name = "自动杀鲨鱼🦈",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  	end    
})

local Tab = Window:MakeTab({
    Name = "力量传奇",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name="修改力量",
    Callback=function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/jynzl/main/main/Musclas%20Legenos.lua'))()
    end
})

Tab:AddButton({
	Name = "力量传奇Muscle Legend",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend"))()
  	end    
})

Tab:AddButton({
    Name="力量传奇",
    Callback=function()
        loadstring(game:GetObjects("rbxassetid://10048914323")[1].Source)()
    end
})

local Tab = Window:MakeTab({
    Name = "彩虹朋友",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name="彩虹朋友",
    Callback=function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Sempiller/RainbowTool/main/Turkish.lua'))();
    end
})

Tab:AddButton({
	Name = "彩虹朋友2",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends"))()
  	end    
})

local Tab = Window:MakeTab({
    Name = "DOORS",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "明月清风DOORS",
	Callback = function()
local DarkraiX =loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Kavo-Ui/main/Darkrai%20Ui", true))()
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
local CoreGui = loadstring(game:HttpGet("https://raw.githubusercontent.com/pyawhh/UI-GUI/main/%E6%B6%88%E6%81%AF%E6%8F%90%E9%86%92%E5%8A%A0%E5%AF%86.txt"))() 
local sound = Instance.new("Sound")
sound.Parent = game.SoundService
sound.SoundId = "rbxassetid://4590657391"
sound.Volume = 5
sound.PlayOnRemove = true
sound:Destroy()
Achievements.Get({
    Title = "正在加载…",
    Desc = "Loading…",
    Reason = "请耐心等待",
    Image = "rbxassetid://15426655759",
})
wait(1999 - (1805 + 193))
Achievements.Get({
    Title = "加载成功",
    Desc = "Loaded！",
    Reason = "欢迎您！",
    Image = "rbxassetid://15426655759",
})
local v10 = { "RushMoving", "AmbushMoving", "Snare", "A60", "A120", "SeekMoving", "JeffTheKiller", "Eyes" }
local v11 = { "蜡烛", "十字架", "骷髅钥匙", "维他命", "开锁器", "打火机", "手电筒" }
local v12 = game.Players.LocalPlayer
local v13 = v12.Character or v12.CharacterAdded:Wait()
local v14 = v13:FindFirstChildOfClass("Humanoid") or v13:WaitForChild("Humanoid")
function esp(v63, v64, v65, v66)
	local v67 = 0 - 0
	local v68
	local v69
	local v70
	local v71
	while true do
		if v67 == (1 + 2) then
			if v65 and v66 then
				local v431 = 1690 - (1121 + 569)
				local v432
				local v433
				while true do
					if v431 == 2 then
						v432.Size = UDim2.new(214 - (22 + 192), 691 - (483 + 200), 0, 8)
						v432.Position = UDim2.new(1463.5 - (1404 + 59), 0 - 0, 0.5, 0 - 0)
						Instance.new("UICorner", v432).CornerRadius = UDim.new(1, 765 - (468 + 297))
						Instance.new("UIStroke", v432)
						v431 = 565 - (334 + 228)
					end
					if v431 == 3 then
						v433 = Instance.new("TextLabel", v69)
						v433.AnchorPoint = Vector2.new(0.5 - 0, 0.5 - 0)
						v433.BackgroundTransparency = 1 - 0
						v433.BackgroundColor3 = v64
						v431 = 2 + 2
					end
					if 5 == v431 then
						v433.FontSize = Enum.FontSize.Size10
						v433.Text = v66
						Instance.new("UIStroke", v433)
						task.spawn(function()
							while v69 do
								if (v69.Adornee == nil) or not v69.Adornee:IsDescendantOf(workspace) then
									local v882 = 236 - (141 + 95)
									while true do
										if v882 == (0 + 0) then
											v69.Enabled = false
											v69.Adornee = nil
											v882 = 1
										end
										if v882 == 1 then
											v69:Destroy()
											break
										end
									end
								end
								task.wait()
							end
						end)
						break
					end
					if v431 == 4 then
						v433.TextColor3 = v64
						v433.Size = UDim2.new(2 - 1, 0 - 0, 0 + 0, 136 - 86)
						v433.Position = UDim2.new(0.5, 0, 0.6, 0)
						v433.Font = Enum.Font.Gotham
						v431 = 4 + 1
					end
					if 1 == v431 then
						v69.MaxDistance = 1042 + 958
						v432 = Instance.new("Frame", v69)
						v432.AnchorPoint = Vector2.new(0.5 - 0, 0.5)
						v432.BackgroundColor3 = v64
						v431 = 2 + 0
					end
					if (163 - (92 + 71)) == v431 then
						v69 = Instance.new("BillboardGui", game.CoreGui)
						v69.AlwaysOnTop = true
						v69.Size = UDim2.new(0, 400, 0 + 0, 168 - 68)
						v69.Adornee = v65
						v431 = 766 - (574 + 191)
					end
				end
			end
			v71 = {}
			v67 = 4 + 0
		end
		if (9 - 5) == v67 then
			v71.delete = function()
				for v434, v435 in pairs(v70) do
					local v436 = 0 + 0
					while true do
						if v436 == (849 - (254 + 595)) then
							v435.Adornee = nil
							v435.Visible = false
							v436 = 127 - (55 + 71)
						end
						if v436 == 1 then
							v435:Destroy()
							break
						end
					end
				end
				if v69 then
					local v505 = 0 - 0
					while true do
						if v505 == (1791 - (573 + 1217)) then
							v69:Destroy()
							break
						end
						if v505 == 0 then
							v69.Enabled = false
							v69.Adornee = nil
							v505 = 2 - 1
						end
					end
				end
			end
			return v71
		end
		if v67 == (1 + 1) then
			for v363, v364 in pairs(v68) do
				if v364:IsA("BasePart") then
					table.insert(v70, box)
					task.spawn(function()
						while box do
							local v704 = 0 - 0
							while true do
								if v704 == (939 - (714 + 225)) then
									if (box.Adornee == nil) or not box.Adornee:IsDescendantOf(workspace) then
										box.Adornee = nil
										box.Visible = false
										box:Destroy()
									end
									task.wait()
									break
								end
							end
						end
					end)
				end
			end
			function hightlightoutboi(v365, v366)
				local v367
				if v366:FindFirstChildOfClass("Highlight") then
					v367 = v366:FindFirstChildOfClass("Highlight")
					v367.OutlineColor = v365
					v367.OutlineTransparency = 0 - 0
					v367.FillColor = v365
					v367.FillTransparency = 0.5 - 0
				else
					local v510 = 0 + 0
					while true do
						if v510 == (2 - 0) then
							v367.FillTransparency = 806.5 - (118 + 688)
							v367.OutlineColor = v365
							v510 = 51 - (25 + 23)
						end
						if v510 == (0 + 0) then
							v367 = Instance.new("Highlight", v366)
							v367.Enabled = true
							v510 = 1887 - (927 + 959)
						end
						if v510 == (3 - 2) then
							v367.Name = "Esphihihi"
							v367.FillColor = v365
							v510 = 734 - (16 + 716)
						end
						if v510 == (5 - 2) then
							v367.OutlineTransparency = 0
							break
						end
					end
				end
				local v368 = {}
				v368.delete = function()
					v367:Destroy()
				end
				return v368
			end
			v67 = 100 - (11 + 86)
		end
		if v67 == (2 - 1) then
			v69 = nil
			v70 = {}
			v67 = 287 - (175 + 110)
		end
		if v67 == (0 - 0) then
			v68 = nil
			if typeof(v63) == "Instance" then
				if v63:IsA("Model") then
					v68 = v63:GetChildren()
				elseif v63:IsA("BasePart") then
					v68 = { v63, table.unpack(v63:GetChildren()) }
				end
			elseif typeof(v63) == "table" then
				v68 = v63
			end
			v67 = 1797 - (503 + 1293)
		end
	end
end
local v15 = game.ReplicatedStorage:WaitForChild("EntityInfo")
function message(v72)
	local v73 = 0 - 0
	local v74
	while true do
		if v73 == 1 then
			task.wait(4 + 1)
			v74:Destroy()
			break
		end
		if v73 == 0 then
			v74 = Instance.new("Message", workspace)
			v74.Text = tostring(v72)
			v73 = 1
		end
	end
end
local v16 = {
	espdoors = false,
	espkeys = false,
	espitems = false,
	espbooks = false,
	esprush = false,
	espchest = false,
	esplocker = false,
	esphumans = false,
	espgold = false,
	goldespvalue = 1061 - (810 + 251),
	hintrush = false,
	hintrushhee = false,
	light = false,
	instapp = false,
	noseek = false,
	nogates = false,
	nopuzzle = false,
	noa90 = false,
	noskeledoors = false,
	noseekarmsfire = false,
	noscreech = false,
	nodupe = false,
	getcode = false,
	getcodet = false,
	roomsnolock = false,
	draweraura = false,
	autorooms = false,
	itemsaura = false,
	autopulllever = false,
	bookcollecter = false,
	breakercollecter = false,
}
local v17 = { table.unpack(v16) }
local v18 =
	{ doors = {}, keys = {}, items = {}, books = {}, entity = {}, chests = {}, lockers = {}, people = {}, gold = {} }
local v19 = CFrame.new
local v20 = game:GetService("ReplicatedStorage").GameData.LatestRoom
local v21 = game:GetService("ReplicatedStorage").GameData.ChaseStart
local v22
v22 = hookmetamethod(game, "__namecall", function(v75, ...)
	local v76 = 0 + 0
	local v77
	local v78
	while true do
		if v76 == (0 + 0) then
			v77 = { ... }
			v78 = getnamecallmethod()
			v76 = 534 - (43 + 490)
		end
		if v76 == (734 - (711 + 22)) then
			if (tostring(v75) == "Screech") and (v78 == "FireServer") and getgenv().avoidsc then
				local v437 = 0
				while true do
					if v437 == (0 - 0) then
						v77[860 - (240 + 619)] = true
						return v22(v75, unpack(v77))
					end
				end
			end
			if (tostring(v75) == "ClutchHeartbeat") and (v78 == "FireServer") and getgenv().winhb then
				v77[2] = true
				return v22(v75, unpack(v77))
			end
			v76 = 1 + 1
		end
		if v76 == (2 - 0) then
			return v22(v75, ...)
		end
	end
end)
workspace.ChildAdded:Connect(function(v79)
	task.wait()
	if (v79.Name == "RushMoving") or (v79.Name == "AmbushMoving") then
		while workspace:FindFirstChild(v79.Name) and getgenv().hxde do
			task.wait()
			part = v79:WaitForChild("RushNew")
			game.Players.LocalPlayer.Character.Collision.CFrame =
				CFrame.new(part.Position + Vector3.new(0 + 0, 1819 - (1344 + 400), 0))
		end
	end
end)
local v23 = Instance.new("ScreenGui")
local v24 = Instance.new("Frame")
local v25 = Instance.new("TextButton")
v23.Name = "GodmodeMobile"
v23.Parent = game:WaitForChild("CoreGui")
v23.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game:GetService("CoreGui").GodmodeMobile.Enabled = false
v24.Parent = v23
v24.BackgroundColor3 = Color3.fromRGB(405 - (255 + 150), 255, 0 + 0)
v24.Position = UDim2.new(0.412993044, 0, 0.0562249012 + 0, 0)
v24.Size = UDim2.new(0 - 0, 645 - 445, 0, 1785 - (404 + 1335))
v25.Parent = v24
v25.BackgroundColor3 = Color3.fromRGB(661 - (183 + 223), 0 - 0, 0 + 0)
v25.Position = UDim2.new(0.0350000001 + 0, 0, 0.0652173907, 0)
v25.Size = UDim2.new(337 - (10 + 327), 187, 0, 40)
v25.Font = Enum.Font.SourceSans
v25.Text = "God Mode : off"
v25.TextColor3 = Color3.fromRGB(0 + 0, 0, 0)
v25.TextSize = 374 - (118 + 220)
v25.MouseButton1Down:connect(function()
	if _G.godkuy == true then
		local v238 = 0
		local v239
		local v240
		local v241
		while true do
			if v238 == (1 + 1) then
				v239 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v239.Position = v239.Position + Vector3.new(449 - (108 + 341), 5, 0)
				v240 = nil
				v238 = 2 + 1
			end
			if v238 == (21 - 16) then
				v241.Volume = 1498 - (711 + 782)
				v241.PlayOnRemove = true
				v241:Destroy()
				break
			end
			if v238 == (5 - 2) then
				function v240(v511)
					firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, v511)
				end
				v240("上帝模式关闭")
				v25.Text = "上帝模式 : 关闭"
				v238 = 4
			end
			if v238 == (473 - (270 + 199)) then
				v241 = Instance.new("Sound")
				v241.Parent = game.SoundService
				v241.SoundId = "rbxassetid://4590657391"
				v238 = 2 + 3
			end
			if v238 == 0 then
				_G.godkuy = false
				getgenv().colgod = false
				for v512, v513 in next, game.Players.LocalPlayer.Character:GetDescendants() do
					if v513.IsA(v513, "BasePart") and (getgenv().colgod == false) then
						v513.CanCollide = true
					end
				end
				v238 = 1820 - (580 + 1239)
			end
			if v238 == 1 then
				v239 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v239.Position = v239.Position + Vector3.new(0 - 0, 5 + 0, 0 + 0)
				wait(0.5 + 0)
				v238 = 4 - 2
			end
		end
	elseif _G.godkuy == false then
		local v370 = 0
		local v371
		local v372
		local v373
		while true do
			if v370 == 2 then
				function v372(v707)
					firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, v707)
				end
				v372("上帝模式启用")
				v25.Text = "上帝模式 : 启用"
				v373 = Instance.new("Sound")
				v370 = 2 + 1
			end
			if v370 == (1170 - (645 + 522)) then
				v373.Parent = game.SoundService
				v373.SoundId = "rbxassetid://4590657391"
				v373.Volume = 1795 - (1010 + 780)
				v373.PlayOnRemove = true
				v370 = 4 + 0
			end
			if v370 == (19 - 15) then
				v373:Destroy()
				break
			end
			if v370 == (0 - 0) then
				_G.godkuy = true
				v371 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v371.Position = v371.Position - Vector3.new(0, 1841 - (1045 + 791), 0 - 0)
				wait(0.5 - 0)
				v370 = 506 - (351 + 154)
			end
			if v370 == (1575 - (1281 + 293)) then
				getgenv().colgod = true
				v371 = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
				v371.Position = v371.Position - Vector3.new(266 - (28 + 238), 10 - 5, 1559 - (1381 + 178))
				v372 = nil
				v370 = 2
			end
		end
	end
end)
notify("明月清风","欢迎您的使用!",5)
local sound = Instance.new("Sound")
sound.Parent = game.SoundService
sound.SoundId = "rbxassetid://4590657391"
sound.Volume = 5 + 0
sound.PlayOnRemove = true
sound:Destroy()
local Library = DarkraiX:Window("明月清风","D O O R S","",Enum.KeyCode.RightControl);
Tab1 = Library:Tab("玩家")
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.speedkuys then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.SelectBootst
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SpeedHack and (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == (10 + 12)) then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 96 - 68
		elseif _G.SpeedHack and (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == (9 + 8)) then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 28
		elseif _G.SpeedHack and (game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == (486.5 - (381 + 89))) then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19.5 + 2
		elseif _G.SpeedHack then
			local v796 = 11 + 4 + game.Players.LocalPlayer.Character.Humanoid:GetAttribute("SpeedBoost")
			if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed <= v796 then
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed += _G.SelectBoots
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.FieldOfView then
			game:GetService("Workspace").Camera.FieldOfView = _G.FieldOfViewe
		end
	end)
end)
Tab1:Slider("速度",1,7,1,function(v80)
		_G.SelectBoots = v80
end)
Tab1:Slider("视野",70,120,70,function(v81)
		_G.FieldOfViewe = v81
	end)
_G.SelectBoots = 1790.5 - (214 + 1570)
_G.FieldOfViewe = 120
Tab1:Toggle("使用极速状态",false,function(v82)
		_G.SpeedHack = v82
		if _G.SpeedHack == false then
			game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.SpeedBoost.Visible =
				false
		elseif _G.SpeedHack == true then
			game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.Healthbar.Effects.SpeedBoost.Visible =
				true
		end
	end)
Tab1:Toggle("使用大视野状态",false,function(v83)
		local v84 = 1455 - (990 + 465)
		while true do
			if 0 == v84 then
				if v83 == true then
					local v449 = 0 + 0
					local v450
					while true do
						if 0 == v449 then
							v450 = game:GetService("TweenService")
							v450
								:Create(
									game.Workspace.CurrentCamera,
									TweenInfo.new(0.9),
									{ FieldOfView = _G.FieldOfViewe }
								)
								:Play()
							break
						end
					end
				elseif v83 == false then
					local v621 = game:GetService("TweenService")
					v621:Create(game.Workspace.CurrentCamera, TweenInfo.new(0.9), { FieldOfView = 31 + 39 }):Play()
				end
				wait(0.8 + 0)
				v84 = 3 - 2
			end
			if v84 == 1 then
				_G.FieldOfView = v83
				break
			end
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		for v243, v244 in next, game.Players.LocalPlayer.Character:GetDescendants() do
			if v244.IsA(v244, "BasePart") and getgenv().col then
				v244.CanCollide = false
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SlowDownnnonononoo then
			if game.Players.LocalPlayer.Character.Head.Massless == true then
				local v451 = 1726 - (1668 + 58)
				local v452
				while true do
					if v451 == (626 - (512 + 114)) then
						v452 = false
						game.Players.LocalPlayer.Character.Head.Massless = v452
						game.Players.LocalPlayer.Character.LeftFoot.Massless = v452
						game.Players.LocalPlayer.Character.LeftHand.Massless = v452
						v451 = 2 - 1
					end
					if (1 - 0) == v451 then
						game.Players.LocalPlayer.Character.LeftLowerArm.Massless = v452
						game.Players.LocalPlayer.Character.LeftLowerLeg.Massless = v452
						game.Players.LocalPlayer.Character.LeftUpperArm.Massless = v452
						game.Players.LocalPlayer.Character.LeftUpperLeg.Massless = v452
						v451 = 6 - 4
					end
					if v451 == (2 + 1) then
						game.Players.LocalPlayer.Character.RightLowerLeg.Massless = v452
						game.Players.LocalPlayer.Character.RightUpperArm.Massless = v452
						game.Players.LocalPlayer.Character.RightUpperLeg.Massless = v452
						game.Players.LocalPlayer.Character.UpperTorso.Massless = v452
						break
					end
					if v451 == 2 then
						game.Players.LocalPlayer.Character.LowerTorso.Massless = v452
						game.Players.LocalPlayer.Character.RightFoot.Massless = v452
						game.Players.LocalPlayer.Character.RightHand.Massless = v452
						game.Players.LocalPlayer.Character.RightLowerArm.Massless = v452
						v451 = 3
					end
				end
			end
		end
	end)
end)
Tab1:Toggle("慢下来",false,function(v85)
		_G.SlowDownnnonononoo = v85
		if _G.SlowDownnnonononoo == false then
			local v245 = true
			game.Players.LocalPlayer.Character.Head.Massless = v245
			game.Players.LocalPlayer.Character.LeftFoot.Massless = v245
			game.Players.LocalPlayer.Character.LeftHand.Massless = v245
			game.Players.LocalPlayer.Character.LeftLowerArm.Massless = v245
			game.Players.LocalPlayer.Character.LeftLowerLeg.Massless = v245
			game.Players.LocalPlayer.Character.LeftUpperArm.Massless = v245
			game.Players.LocalPlayer.Character.LeftUpperLeg.Massless = v245
			game.Players.LocalPlayer.Character.LowerTorso.Massless = v245
			game.Players.LocalPlayer.Character.RightFoot.Massless = v245
			game.Players.LocalPlayer.Character.RightHand.Massless = v245
			game.Players.LocalPlayer.Character.RightLowerArm.Massless = v245
			game.Players.LocalPlayer.Character.RightLowerLeg.Massless = v245
			game.Players.LocalPlayer.Character.RightUpperArm.Massless = v245
			game.Players.LocalPlayer.Character.RightUpperLeg.Massless = v245
			game.Players.LocalPlayer.Character.UpperTorso.Massless = v245
		end
	end)
Tab1:Toggle("无拉回",false,function(v86)
		local v87 = 0 + 0
		while true do
			if v87 == 0 then
				getgenv().col = v86
				if getgenv().col == false then
					v.IsA(v, "BasePart")
					v.CanCollide = true
				end
				break
			end
		end
	end)
Tab2 = Library:Tab("主要功能")
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.FullBright then
			local v315 = 0 + 0
			while true do
				if v315 == 1 then
					game:GetService("Lighting").ClockTime = 47 - 33
					game:GetService("Lighting").GlobalShadows = false
					v315 = 2
				end
				if v315 == 0 then
					game:GetService("Lighting").FogEnd = 100000
					game:GetService("Lighting").Brightness = 2
					v315 = 1
				end
				if v315 == (1996 - (109 + 1885)) then
					game:GetService("Lighting").OutdoorAmbient =
						Color3.fromRGB(1597 - (1269 + 200), 244 - 116, 943 - (98 + 717))
					break
				end
			end
		end
	end)
end)
Tab2:Toggle("亮度拉满",false,function(v88)
		if v88 then
			_G.FullBright = true
		else
			_G.FullBright = false
			game:GetService("Lighting").FogEnd = 11111111533265722 - (802 + 24)
			game:GetService("Lighting").Brightness = 5 - 2
			game:GetService("Lighting").ClockTime = 20
			game:GetService("Lighting").GlobalShadows = true
			game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(0.5, 0.5, 0.5)
		end
	end)
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v89)
	local v90 = 0 - 0
	while true do
		if v90 == (0 + 0) then
			if not _G.InstantInteract then
				return
			end
			if v89.IsA(v89, "ProximityPrompt") then
				if _G.InstantInteract then
					local v622 = 0 + 0
					while true do
						if v622 == (0 + 0) then
							v89.HoldDuration = 0 + 0
							v89.Enabled = true
							break
						end
					end
				end
			end
			break
		end
	end
end)
Tab2:Toggle("即时互动",false,function(v91)
		local v92 = 0 - 0
		while true do
			if v92 == (0 - 0) then
				_G.InstantInteract = v91
				if _G.InstantInteract == true then
					for v519, v520 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
						if v520:IsA("ProximityPrompt") then
							v520.HoldDuration = 0 + 0
							v520.Enabled = true
						end
					end
				end
				break
			end
		end
	end)
Tab2:Toggle("最大互动距离",false,function(v93)
		_G.IncreasedDistance = v93
		for v228, v229 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
			if v229:IsA("ProximityPrompt") then
				v229.MaxActivationDistance = 7 + 8
			end
		end
	end)
game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v94)
	if not _G.InteractNoclip then
		return
	end
	if v94.IsA(v94, "ProximityPrompt") then
		if _G.InteractNoclip then
			v94.RequiresLineOfSight = false
		end
	end
end)
Tab2:Toggle("通过对象进行交互",false,function(v95)
		local v96 = 0 + 0
		while true do
			if v96 == (0 + 0) then
				_G.InteractNoclip = v95
				if _G.InteractNoclip == false then
					for v521, v522 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
						if v522:IsA("ProximityPrompt") then
							v522.RequiresLineOfSight = true
						end
					end
				elseif _G.InteractNoclip == true then
					for v726, v727 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
						if v727:IsA("ProximityPrompt") then
							v727.RequiresLineOfSight = false
						end
					end
				end
				break
			end
		end
	end)
Tab2:Toggle("自动赢得心脏小游戏",false,function(v97)
		getgenv().winhb = v97
	end)
Tab2:Toggle("自动捡金币",false,function(v99)
		v16.draweraura = v99
		if v99 then
			local function v266(v317)
				local function v318(v377)
					if v377:IsA("Model") then
						if v377.Name == "DrawerContainer" then
							local v728 = 0 + 0
							local v729
							while true do
								if v728 == (1433 - (797 + 636)) then
									v729 = v377:WaitForChild("Knobs")
									if v729 then
										local v935 = v729:WaitForChild("ActivateEventPrompt")
										local v936 = v935:GetAttribute("Interactions")
										if not v936 then
											task.spawn(function()
												repeat
													task.wait(0.1 - 0)
													if v12:DistanceFromCharacter(v729.Position) <= 12 then
														fireproximityprompt(v935)
													end
												until v935:GetAttribute("Interactions") or not v16.draweraura
											end)
										end
									end
									break
								end
							end
						elseif v377.Name == "GoldPile" then
							local v824 = v377:WaitForChild("LootPrompt")
							local v825 = v824:GetAttribute("Interactions")
							if not v825 then
								task.spawn(function()
									repeat
										task.wait(0.1)
										if
											v12:DistanceFromCharacter(v377.PrimaryPart.Position) <= (
												1631 - (1427 + 192)
											)
										then
											fireproximityprompt(v824)
										end
									until v824:GetAttribute("Interactions") or not v16.draweraura
								end)
							end
						elseif v377.Name:sub(1, 3 + 5) == "ChestBox" then
							local v883 = v377:WaitForChild("ActivateEventPrompt")
							local v884 = v883:GetAttribute("Interactions")
							if not v884 then
								task.spawn(function()
									repeat
										local v1011 = 0 - 0
										while true do
											if v1011 == (0 + 0) then
												task.wait(0.1 + 0)
												if
													v12:DistanceFromCharacter(v377.PrimaryPart.Position)
													<= (338 - (192 + 134))
												then
													fireproximityprompt(v883)
												end
												break
											end
										end
									until v883:GetAttribute("Interactions") or not v16.draweraura
								end)
							end
						elseif v377.Name == "RolltopContainer" then
							local v954 = 1276 - (316 + 960)
							local v955
							local v956
							while true do
								if v954 == (0 + 0) then
									v955 = v377:WaitForChild("ActivateEventPrompt")
									v956 = v955:GetAttribute("Interactions")
									v954 = 1
								end
								if v954 == (1 + 0) then
									if not v956 then
										task.spawn(function()
											repeat
												local v1062 = 0 + 0
												while true do
													if v1062 == (0 - 0) then
														task.wait(0.1)
														if
															v12:DistanceFromCharacter(v377.PrimaryPart.Position)
															<= (563 - (83 + 468))
														then
															fireproximityprompt(v955)
														end
														break
													end
												end
											until v955:GetAttribute("Interactions") or not v16.draweraura
										end)
									end
									break
								end
							end
						end
					end
				end
				local v319
				v319 = v317.DescendantAdded:Connect(function(v378)
					v318(v378)
				end)
				for v379, v380 in pairs(v317:GetDescendants()) do
					v318(v380)
				end
				task.spawn(function()
					local v381 = 1806 - (1202 + 604)
					while true do
						if v381 == (0 - 0) then
							repeat
								task.wait()
							until not v16.draweraura
							v319:Disconnect()
							break
						end
					end
				end)
			end
			local v267
			v267 = workspace.CurrentRooms.ChildAdded:Connect(function(v320)
				v266(v320)
			end)
			for v321, v322 in pairs(workspace.CurrentRooms:GetChildren()) do
				if v322:FindFirstChild("Assets") then
					v266(v322)
				end
			end
			repeat
				task.wait()
			until not v16.draweraura
			v267:Disconnect()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.NoluckNoob then
			if
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild(
					"RoomsDoor_Entrance"
				)
			then
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("RoomsDoor_Entrance").Chain1
					:Destroy()
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("RoomsDoor_Entrance").Chain2
					:Destroy()
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("RoomsDoor_Entrance").Model
					:Destroy()
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("RoomsDoor_Entrance").SkullLock
					:Destroy()
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild(
					"RoomsDoor_Entrance"
				).Door.EnterPrompt.Enabled =
					true
			end
		end
	end)
end)
Tab2:Toggle("A-000没有锁",false,function(v101)
		_G.NoluckNoob = v101
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.AutoBreaker then
			game:GetService("ReplicatedStorage").EntityInfo.EBF:FireServer()
		end
	end)
end)
Tab2:Toggle("自动完成断路器小游戏",false,function(v102)
		_G.AutoBreaker = v102
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.IncreasedDoors then
			game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
				:WaitForChild("Door").ClientOpen
				:FireServer()
		end
	end)
end)
Tab2:Toggle("增加开门距离",false,function(v103)
		_G.IncreasedDoors = v103
	end)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
	if _G.ClosetExitFix and (game.Players.LocalPlayer.Character:GetAttribute("Hiding") == true) then
		game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
	end
end)
Tab2:Toggle("出入柜子修复",false,function(v104)
		_G.ClosetExitFix = v104
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.Spamjackgameing then
			game.Players.LocalPlayer.Character.Collision.CFrame = game.Workspace.CurrentRooms[game:GetService(
				"ReplicatedStorage"
			).GameData.LatestRoom.Value].Assets["Wardrobe"].Wood.CFrame
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.autoskiol then
			local v325 = false
			local v326 =
				workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild(
					"Door"
				)
			for v382, v383 in ipairs(v326.Parent:GetDescendants()) do
				if v383.Name == "KeyObtain" then
					v325 = v383
				end
			end
			if v325 then
				if not game.Players.LocalPlayer.Character:FindFirstChild("Key") then
					local v623 = 0 - 0
					local v624
					while true do
						if v623 == (0 - 0) then
							v624 = 346 - (45 + 280)
							function toTargetWait(v865)
								local v866 = (
									v865.p - game.Players.LocalPlayer.Character:WaitForChild("Collision").Position
								).Magnitude
								tweenrach = game:GetService("TweenService"):Create(
									game.Players.LocalPlayer.Character:WaitForChild("Collision"),
									TweenInfo.new(v866 / v624, Enum.EasingStyle.Linear),
									{ CFrame = v865 }
								)
								tweenrach:Play()
							end
							v623 = 1 + 0
						end
						if v623 == 1 then
							toTargetWait(v325.Hitbox.CFrame * CFrame.new(0 + 0, -6, 0 + 0))
							fireproximityprompt(v325.ModulePrompt, 0)
							break
						end
					end
				elseif game.Players.LocalPlayer.Character:FindFirstChild("Key") then
					local v797 = 12 + 9
					function toTargetWait(v826)
						local v827 = 0
						local v828
						while true do
							if (0 + 0) == v827 then
								v828 = (v826.p - game.Players.LocalPlayer.Character:WaitForChild("Collision").Position).Magnitude
								tweenrach = game:GetService("TweenService"):Create(
									game.Players.LocalPlayer.Character:WaitForChild("Collision"),
									TweenInfo.new(v828 / v797, Enum.EasingStyle.Linear),
									{ CFrame = v826 }
								)
								v827 = 1 - 0
							end
							if (1912 - (340 + 1571)) == v827 then
								tweenrach:Play()
								break
							end
						end
					end
					toTargetWait(v326.Door.CFrame * CFrame.new(0 + 0, -(1778 - (1733 + 39)), 0 - 0))
					fireproximityprompt(v326.Lock.UnlockPrompt, 0)
				end
			end
			if v20 == (1084 - (125 + 909)) then
				v326 = workspace.CurrentRooms[tostring(v20 + 1)]:WaitForChild("Door")
			end
			if not v326:FindFirstChild("Lock") then
				local v455 = 1969 - (1096 + 852)
				function toTargetWait(v523)
					local v524 = (v523.p - game.Players.LocalPlayer.Character:WaitForChild("Collision").Position).Magnitude
					tweenrach = game:GetService("TweenService"):Create(
						game.Players.LocalPlayer.Character:WaitForChild("Collision"),
						TweenInfo.new(v524 / v455, Enum.EasingStyle.Linear),
						{ CFrame = v523 }
					)
					tweenrach:Play()
				end
				toTargetWait(v326.Door.CFrame * CFrame.new(0 + 0, -(7 - 1), 0))
			end
		end
	end)
end)
Tab2:Toggle("自动通关宾馆(测试功能警告)",false,function(v105)
		_G.nokuyclip = v105
		wait(0.1 + 0)
		_G.autoskiol = v105
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.OpenDoorsijnsdg then
			if game.Players.LocalPlayer.Character:FindFirstChild("Key") then
				game.Players.LocalPlayer.Character.Key.Parent = game.Workspace
			end
		end
	end)
end)
Tab2:Toggle("使用所有东西开门",false,function(v106)
		_G.OpenDoorsijnsdg = v106
	end)
Tab2:Toggle("生成杰克(掉队)",false,function(v107)
		local v108 = 0
		while true do
			if v108 == (512 - (409 + 103)) then
				_G.Spamjackgameing = v107
				while _G.Spamjackgameing do
					wait()
					pcall(function()
						fireproximityprompt(
							game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets["Wardrobe"].HidePrompt,
							236 - (46 + 190)
						)
						fireproximityprompt(
							game.Workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value].Assets["Wardrobe"].HidePrompt,
							1
						)
						game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
					end)
				end
				break
			end
		end
	end)
_G.godkuy = false
Tab2:Toggle("上帝模式<移动端>",false,function(v109)
		local v110 = 0
		while true do
			if 0 == v110 then
				_G.gopdfs = v109
				if _G.gopdfs == true then
					game:GetService("CoreGui").GodmodeMobile.Enabled = true
				elseif _G.gopdfs == false then
					game:GetService("CoreGui").GodmodeMobile.Enabled = false
				end
				break
			end
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		for v268, v269 in next, game.Players.LocalPlayer.Character:GetDescendants() do
			if v269.IsA(v269, "BasePart") and getgenv().colgod then
				v269.CanCollide = false
			end
		end
	end)
end)
Tab3 = Library:Tab("去除功能")
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SeekESe then
			if
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("Assets")
					:FindFirstChild("Seek_Arm")
			then
				for v528, v529 in
					pairs(
						game.workspace.CurrentRooms[tostring(
							game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
						)]
							:WaitForChild("Assets")
							:GetChildren()
					)
				do
					if v529.Name == "Seek_Arm" then
						v529.AnimatorPart.CanTouch = false
					end
				end
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SeekESe then
			if
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("Assets")
					:FindFirstChild("ChandelierObstruction")
			then
				for v530, v531 in
					pairs(
						game.workspace.CurrentRooms[tostring(
							game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
						)]
							:WaitForChild("Assets")
							:GetChildren()
					)
				do
					if v531.Name == "ChandelierObstruction" then
						v531.HurtPart.CanTouch = false
					end
				end
			end
		end
	end)
end)
Tab3:Toggle("去除追逐战手的伤害",false,function(v111)
		_G.SeekESe = v111
	end)
Tab3:Toggle("去除追逐战火的伤害",false,function(v112)
		_G.SeekES = v112
	end)
Tab3:Toggle("去除骨架门",false,function(v113)
		v16.noskeledoors = v113
		if v113 then
			local v276 = 0 + 0
			local v277
			while true do
				if (0 - 0) == v276 then
					v277 = nil
					v277 = workspace.CurrentRooms.ChildAdded:Connect(function(v532)
						local v533 = v532:WaitForChild("Wax_Door", 2 + 0)
						if v533 then
							v533.Door.Transparency = 772 - (326 + 445)
							v533.SkullLock.Transparency = 1
							v533.Door.CanCollide = false
							v533.SkullLock.CanCollide = false
						end
					end)
					v276 = 4 - 3
				end
				if v276 == (4 - 2) then
					v277:Disconnect()
					break
				end
				if (2 - 1) == v276 then
					spawn(function()
						local v534 = workspace.CurrentRooms[tostring(
							game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
						)]:WaitForChild("Wax_Door", 2)
						if v534 then
							v534.Door.Transparency = 712 - (530 + 181)
							v534.SkullLock.Transparency = 1
							v534.Door.CanCollide = false
							v534.SkullLock.CanCollide = false
						end
					end)
					repeat
						task.wait()
					until not v16.noskeledoors
					v276 = 2
				end
			end
		end
	end)
Tab3:Toggle("拆下大门",false,function(v115)
		v16.nogates = v115
		if v115 then
			spawn(function()
				for v390, v391 in pairs(workspace.CurrentRooms:GetChildren()) do
					local v392 = 0
					local v393
					while true do
						if (881 - (614 + 267)) == v392 then
							v393 = v391:WaitForChild("Gate", 34 - (19 + 13))
							if v393 then
								local v798 = v393:WaitForChild("ThingToOpen", 2 - 0)
								if v798 then
									v798:Destroy()
								end
							end
							break
						end
					end
				end
			end)
			local v278
			v278 = workspace.CurrentRooms.ChildAdded:Connect(function(v327)
				local v328 = 0 - 0
				local v329
				while true do
					if v328 == (0 - 0) then
						v329 = v327:WaitForChild("Gate", 1 + 1)
						if v329 then
							local v742 = 0 - 0
							local v743
							while true do
								if v742 == (0 - 0) then
									v743 = v329:WaitForChild("ThingToOpen", 1814 - (1293 + 519))
									if v743 then
										v743:Destroy()
									end
									break
								end
							end
						end
						break
					end
				end
			end)
			spawn(function()
				local v330 = 0 - 0
				local v331
				while true do
					if (0 - 0) == v330 then
						v331 = workspace.CurrentRooms[tostring(
							game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
						)]:WaitForChild("Gate", 3 - 1)
						if v331 then
							local v744 = 0
							local v745
							while true do
								if v744 == (0 - 0) then
									v745 = v331:WaitForChild("ThingToOpen", 4 - 2)
									if v745 then
										v745:Destroy()
									end
									break
								end
							end
						end
						break
					end
				end
			end)
			repeat
				task.wait()
			until not v16.nogates
			v278:Disconnect()
		end
	end)
Tab3:Toggle("去除解密门",false,function(v117)
		local v118 = 0 + 0
		while true do
			if v118 == 0 then
				v16.nopuzzle = v117
				if v117 then
					spawn(function()
						for v634, v635 in pairs(workspace.CurrentRooms:GetChildren()) do
							local v636 = 0 + 0
							local v637
							local v638
							while true do
								if v636 == (0 - 0) then
									v637 = v635:WaitForChild("Assets")
									v638 = v637:WaitForChild("Paintings", 1 + 1)
									v636 = 1 + 0
								end
								if v636 == (1 + 0) then
									if v638 then
										local v885 = v638:WaitForChild("MovingDoor", 1098 - (709 + 387))
										if v885 then
											v885:Destroy()
										end
									end
									break
								end
							end
						end
					end)
					local v466
					v466 = workspace.CurrentRooms.ChildAdded:Connect(function(v535)
						local v536 = v535:WaitForChild("Assets")
						local v537 = v536:WaitForChild("Paintings", 1860 - (673 + 1185))
						if v537 then
							local v746 = 0 - 0
							local v747
							while true do
								if v746 == 0 then
									v747 = v537:WaitForChild("MovingDoor", 6 - 4)
									if v747 then
										v747:Destroy()
									end
									break
								end
							end
						end
					end)
					spawn(function()
						local v538 = 0
						local v539
						local v540
						while true do
							if v538 == 0 then
								v539 = workspace.CurrentRooms[tostring(
									game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
								)]:WaitForChild("Assets")
								v540 = v539:WaitForChild("Paintings", 2)
								v538 = 1 - 0
							end
							if v538 == (1 + 0) then
								if v540 then
									local v867 = v540:WaitForChild("MovingDoor", 2 + 0)
									if v867 then
										v867:Destroy()
									end
								end
								break
							end
						end
					end)
					repeat
						task.wait()
					until not v16.nopuzzle
					v466:Disconnect()
				end
				break
			end
		end
	end)
Tab3:Toggle("去除追逐战Seek",false,function(v119)
		v16.noseek = v119
		if v119 then
			local v279
			v279 = workspace.CurrentRooms.ChildAdded:Connect(function(v333)
				local v334 = 0 - 0
				local v335
				while true do
					if v334 == (0 + 0) then
						v335 = v333:WaitForChild("TriggerEventCollision", 2)
						if v335 then
							v335:Destroy()
						end
						break
					end
				end
			end)
			repeat
				task.wait()
			until not v16.noseek
			v279:Disconnect()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.lasf then
			if
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("Assets")
					:FindFirstChild("Chandelier")
			then
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("Assets").Chandelier
					:Destroy()
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.lasf then
			if
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("Assets")
					:FindFirstChild("Light_Fixtures")
			then
				game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
					:WaitForChild("Assets").Light_Fixtures
					:Destroy()
			end
		end
	end)
end)
Tab3:Toggle("去除光线[防延迟]",false,function(v121)
		_G.lasf = v121
	end)
Tab4 = Library:Tab("物品功能")
if fireproximityprompt then
Tab4:Toggle("自动捡钥匙",false,function(v280)
			local v281 = 0
			while true do
				if 0 == v281 then
					v16.itemsaura = v280
					if v280 then
						local function v639(v748)
							local v749 = 0 - 0
							local v750
							local v751
							while true do
								if (3 - 1) == v749 then
									for v886, v887 in pairs(v748:GetDescendants()) do
										task.spawn(function()
											v750(v887)
										end)
									end
									task.spawn(function()
										repeat
											task.wait()
										until not v16.itemsaura
										v751:Disconnect()
									end)
									break
								end
								if (1881 - (446 + 1434)) == v749 then
									v751 = nil
									v751 = v748.DescendantAdded:Connect(function(v888)
										v750(v888)
									end)
									v749 = 1285 - (1040 + 243)
								end
								if v749 == (0 - 0) then
									v750 = nil
									function v750(v889)
										task.wait()
										if v889:IsA("Model") then
											local v957 = 1847 - (559 + 1288)
											while true do
												if v957 == (1931 - (609 + 1322)) then
													task.wait()
													if v889.Name == "PickupItem" then
														local v1048 = 0
														local v1049
														local v1050
														while true do
															if 1 == v1048 then
																v1050 = 454 - (13 + 441)
																task.spawn(function()
																	repeat
																		local v1103 = 0 - 0
																		local v1104
																		while true do
																			if 1 == v1103 then
																				pcall(function()
																					local v1137 = 0
																					local v1138
																					local v1139
																					while true do
																						if 0 == v1137 then
																							v1138, v1139 = pcall(
																								function()
																									v1104 = v12:DistanceFromCharacter(
																										v889.PrimaryPart.Position
																									) <= (31 - 19)
																								end
																							)
																							if v1139 then
																								local v1154 = 0 - 0
																								local v1155
																								while true do
																									if
																										v1154 == (0 + 0)
																									then
																										v1155 = nil
																										for v1170, v1171 in
																											pairs(
																												v1171:GetChildren()
																											)
																										do
																											local v1172 = pcall(
																												function(
																												)
																													local v1178 =
																														v1171["Position"]
																												end
																											)
																											if
																												v1172
																											then
																												v1155 =
																													v1171
																												break
																											end
																										end
																										v1154 = 3 - 2
																									end
																									if v1154 == 1 then
																										v1104 = v12:DistanceFromCharacter(
																											v1155.Position
																										) <= (5 + 7)
																										break
																									end
																								end
																							end
																							break
																						end
																					end
																				end)
																				if v1104 then
																					fireproximityprompt(v1049)
																					v1050 += 1
																				end
																				break
																			end
																			if v1103 == 0 then
																				task.wait(0.1)
																				v1104 = false
																				v1103 = 1
																			end
																		end
																	until not v889:IsDescendantOf(workspace)
																		or not v1049:IsDescendantOf(workspace)
																		or not v16.itemsaura
																		or (v1050 > (9 + 11))
																end)
																break
															end
															if v1048 == 0 then
																if
																	(
																		game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
																		== (151 - 100)
																	)
																	or (
																		game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
																		== (29 + 23)
																	)
																then
																	return
																end
																v1049 = v889:WaitForChild("ModulePrompt")
																v1048 = 1 - 0
															end
														end
													elseif
														v889:GetAttribute("Pickup") or v889:GetAttribute("PropType")
													then
														if
															(
																game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
																== 51
															)
															or (
																game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
																== (35 + 17)
															)
														then
															return
														end
														local v1063 = v889:WaitForChild("ModulePrompt", 2 + 0)
														if v1063 == nil then
															local v1085 = 0
															while true do
																if v1085 == (0 + 0) then
																	v1063 =
																		v889:FindFirstChildWhichIsA("ProximityPrompt")
																	if v1063 == nil then
																		for v1143, v1144 in pairs(v889:GetDescendants()) do
																			if v1144:IsA("ProximityPrompt") then
																				v1063 = v1144
																				break
																			end
																		end
																	end
																	break
																end
															end
														end
														task.spawn(function()
															repeat
																local v1086 = 0
																local v1087
																while true do
																	if v1086 == (0 + 0) then
																		task.wait(0.1 + 0)
																		v1087 = false
																		v1086 = 1
																	end
																	if v1086 == 1 then
																		pcall(function()
																			local v1127 = 0
																			local v1128
																			local v1129
																			while true do
																				if v1127 == (433 - (153 + 280)) then
																					v1128, v1129 = pcall(function()
																						v1087 = v12:DistanceFromCharacter(
																							v889.PrimaryPart.Position
																						) <= 12
																					end)
																					if v1129 then
																						local v1153
																						for v1156, v1157 in
																							pairs(v1157:GetChildren())
																						do
																							local v1158 = pcall(
																								function()
																									local v1163 =
																										v1157["Position"]
																								end
																							)
																							if v1158 then
																								v1153 = v1157
																								break
																							end
																						end
																						v1087 = v12:DistanceFromCharacter(
																							v1153.Position
																						) <= (34 - 22)
																					end
																					break
																				end
																			end
																		end)
																		if v1087 then
																			fireproximityprompt(v1063)
																		end
																		break
																	end
																end
															until not v889:IsDescendantOf(workspace)
																or not v1063:IsDescendantOf(workspace)
																or not v16.itemsaura
														end)
													elseif v889.Name == "Green_Herb" then
														local v1088 = 0
														local v1089
														while true do
															if v1088 == (0 + 0) then
																v1089 = v889:WaitForChild("Plant")
																if v1089 then
																	local v1140 = 0 + 0
																	local v1141
																	local v1142
																	while true do
																		if v1140 == (1 + 0) then
																			task.spawn(function()
																				repeat
																					local v1159 = 0 + 0
																					local v1160
																					while true do
																						if v1159 == (1 + 0) then
																							pcall(function()
																								local v1173 = 0 - 0
																								local v1174
																								local v1175
																								while true do
																									if
																										v1173 == (0 + 0)
																									then
																										v1174, v1175 = pcall(
																											function()
																												v1160 = v12:DistanceFromCharacter(
																													v889.PrimaryPart.Position
																												) <= (679 - (89 + 578))
																											end
																										)
																										if v1175 then
																											local v1183
																											for
																												v1184,
																												v1185
																											in
																												pairs(
																													v1185:GetChildren()
																												)
																											do
																												local v1186 = pcall(
																													function(
																													)
																														local v1187 =
																															v1185["Position"]
																													end
																												)
																												if
																													v1186
																												then
																													v1183 =
																														v1185
																													break
																												end
																											end
																											v1160 = v12:DistanceFromCharacter(
																												v1183.Position
																											) <= (9 + 3)
																										end
																										break
																									end
																								end
																							end)
																							if v1160 then
																								fireproximityprompt(
																									v1141
																								)
																								v1142 += (1 - 0)
																							end
																							break
																						end
																						if
																							v1159 == (
																								1049 - (572 + 477)
																							)
																						then
																							task.wait(0.1 + 0)
																							v1160 = false
																							v1159 = 1
																						end
																					end
																				until v1141:GetAttribute(
																						"Interactions"
																					)
																					or not v16.draweraura
																					or (v1142 > (22 + 13))
																			end)
																			break
																		end
																		if v1140 == (0 + 0) then
																			v1141 = v1089:WaitForChild("HerbPrompt")
																			v1142 = 0
																			v1140 = 87 - (84 + 2)
																		end
																	end
																end
																break
															end
														end
													elseif
														(v889.Name == "KeyObtain") or (
															v889.Name == "ElectricalKeyObtain"
														)
													then
														local v1108 = v889:WaitForChild("ModulePrompt")
														local v1109 = v1108:GetAttribute("Interactions")
														if not v1109 then
															task.spawn(function()
																repeat
																	local v1145 = 0
																	local v1146
																	while true do
																		if v1145 == (0 - 0) then
																			task.wait(0.1 + 0)
																			v1146 = false
																			v1145 = 843 - (497 + 345)
																		end
																		if v1145 == (1 + 0) then
																			pcall(function()
																				local v1161, v1162 = pcall(function()
																					v1146 = v12:DistanceFromCharacter(
																						v889.PrimaryPart.Position
																					) <= 14
																				end)
																				if v1162 then
																					local v1164
																					for v1167, v1168 in
																						pairs(v1168:GetChildren())
																					do
																						local v1169 = pcall(function()
																							local v1176 =
																								v1168["Position"]
																						end)
																						if v1169 then
																							v1164 = v1168
																							break
																						end
																					end
																					v1146 = v12:DistanceFromCharacter(
																						v1164.Position
																					) <= (3 + 11)
																				end
																			end)
																			if v1146 then
																				fireproximityprompt(v1108)
																			end
																			break
																		end
																	end
																until v1108:GetAttribute("Interactions")
																	or not v16.draweraura
															end)
														end
													elseif v889.Name == "RolltopContainer" then
														local v1130 = v889:WaitForChild("ActivateEventPrompt")
														local v1131 = v1130:GetAttribute("Interactions")
														if not v1131 then
															task.spawn(function()
																repeat
																	local v1151 = 1333 - (605 + 728)
																	local v1152
																	while true do
																		if (0 + 0) == v1151 then
																			task.wait(0.1 - 0)
																			v1152 = false
																			v1151 = 1 + 0
																		end
																		if v1151 == (3 - 2) then
																			pcall(function()
																				local v1165, v1166 = pcall(function()
																					v1152 = v12:DistanceFromCharacter(
																						v889.PrimaryPart.Position
																					) <= 12
																				end)
																				if v1166 then
																					local v1177
																					for v1179, v1180 in
																						pairs(v1180:GetChildren())
																					do
																						local v1181 = pcall(function()
																							local v1182 =
																								v1180["Position"]
																						end)
																						if v1181 then
																							v1177 = v1180
																							break
																						end
																					end
																					v1152 = v12:DistanceFromCharacter(
																						v1177.Position
																					) <= (11 + 1)
																				end
																			end)
																			if v1152 then
																				fireproximityprompt(v1130)
																			end
																			break
																		end
																	end
																until v1130:GetAttribute("Interactions")
																	or not v16.itemsaura
															end)
														end
													end
													break
												end
											end
										end
									end
									v749 = 2 - 1
								end
							end
						end
						local v640
						v640 = workspace.CurrentRooms.ChildAdded:Connect(function(v752)
							v639(v752)
						end)
						for v753, v754 in pairs(workspace.CurrentRooms:GetChildren()) do
							if v754:FindFirstChild("Assets") then
								v639(v754)
							end
						end
						v639(
							workspace.CurrentRooms[tostring(
								game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
							)]
						)
						repeat
							task.wait()
						until not v16.itemsaura
						v640:Disconnect()
					end
					break
				end
			end
		end)
else
	notify("明月清风","你需要更好的执行器",2)
end
if fireproximityprompt then
Tab4:Toggle("拉杆光环",false,function(v282)
			local v283 = 0 + 0
			while true do
				if v283 == 0 then
					v16.autopulllever = v282
					if v282 then
						local function v641(v755)
							local v756 = 0
							local v757
							local v758
							while true do
								if v756 == (491 - (457 + 32)) then
									for v890, v891 in pairs(v755:GetDescendants()) do
										v757(v891)
									end
									task.spawn(function()
										local v892 = 0 + 0
										while true do
											if v892 == (1402 - (832 + 570)) then
												repeat
													task.wait()
												until not v16.autopulllever
												v758:Disconnect()
												break
											end
										end
									end)
									break
								end
								if v756 == (0 + 0) then
									v757 = nil
									function v757(v893)
										if v893.Name == "LeverForGate" then
											local v958 = v893:WaitForChild("ActivateEventPrompt")
											local v959 = 0 + 0
											pcall(function()
												v893.PrimaryPart:WaitForChild("SoundToPlay").Played:Connect(function()
													v959 = 353 - 253
												end)
											end)
											task.spawn(function()
												repeat
													local v1012 = 0 + 0
													local v1013
													while true do
														if v1012 == (797 - (588 + 208)) then
															pcall(function()
																local v1053 = 0
																local v1054
																local v1055
																while true do
																	if v1053 == (0 - 0) then
																		v1054, v1055 = pcall(function()
																			v1013 = v12:DistanceFromCharacter(
																				v893.PrimaryPart.Position
																			) <= 16
																		end)
																		if v1055 then
																			local v1110 = 1800 - (884 + 916)
																			local v1111
																			while true do
																				if v1110 == (1 - 0) then
																					v1013 = v12:DistanceFromCharacter(
																						v1111.Position
																					) <= (10 + 6)
																					break
																				end
																				if v1110 == (653 - (232 + 421)) then
																					v1111 = nil
																					for v1147, v1148 in
																						pairs(v1148:GetChildren())
																					do
																						local v1149 = pcall(function()
																							local v1150 =
																								v1148["Position"]
																						end)
																						if v1149 then
																							v1111 = v1148
																							break
																						end
																					end
																					v1110 = 1890 - (1569 + 320)
																				end
																			end
																		end
																		break
																	end
																end
															end)
															if v1013 then
																fireproximityprompt(v958)
																v959 += (1 + 0)
															end
															break
														end
														if v1012 == (0 + 0) then
															task.wait(0.1)
															v1013 = false
															v1012 = 3 - 2
														end
													end
												until not v893:IsDescendantOf(workspace)
													or not v958:IsDescendantOf(workspace)
													or not v16.autopulllever
													or (v959 > (655 - (316 + 289)))
											end)
										end
									end
									v756 = 2 - 1
								end
								if v756 == (1 + 0) then
									v758 = nil
									v758 = v755.DescendantAdded:Connect(function(v894)
										v757(v894)
									end)
									v756 = 1455 - (666 + 787)
								end
							end
						end
						if v16.autopulllever == true then
							local v799
							v799 = workspace.CurrentRooms.ChildAdded:Connect(function(v829)
								v641(v829)
							end)
							for v830, v831 in pairs(workspace.CurrentRooms:GetChildren()) do
								if v831:FindFirstChild("Assets") then
									v641(v831)
								end
							end
							v641(
								workspace.CurrentRooms[tostring(
									game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
								)]
							)
							repeat
								task.wait()
							until not v16.autopulllever
							v799:Disconnect()
						end
					end
					break
				end
			end
		end)
else
	notify("明月清风","你需要更好的执行器.",2)
end
if fireproximityprompt then
Tab4:Toggle("自动捡书",false,function(v284)
			v16.bookcollecter = v284
			if v284 then
				local v394 = 425 - (360 + 65)
				local v395
				while true do
					if (0 + 0) == v394 then
						v395 = nil
						function v395(v759)
							local v760 = 254 - (79 + 175)
							local v761
							local v762
							while true do
								if (2 - 0) == v760 then
									for v895, v896 in pairs(v759:GetDescendants()) do
										v761(v896)
									end
									task.spawn(function()
										local v897 = 0 + 0
										while true do
											if v897 == 0 then
												repeat
													task.wait()
												until not v16.bookcollecter
												v762:Disconnect()
												break
											end
										end
									end)
									break
								end
								if v760 == (2 - 1) then
									v762 = nil
									v762 = v759.DescendantAdded:Connect(function(v898)
										v761(v898)
									end)
									v760 = 3 - 1
								end
								if v760 == (899 - (503 + 396)) then
									v761 = nil
									function v761(v899)
										if v899:IsA("Model") then
											if v899.Name == "LiveHintBook" then
												local v1014 = v899:WaitForChild("ActivateEventPrompt")
												local v1015 = 0
												task.spawn(function()
													repeat
														local v1040 = 181 - (92 + 89)
														local v1041
														while true do
															if v1040 == 0 then
																task.wait(0.1)
																v1041 = false
																v1040 = 1 - 0
															end
															if (1 + 0) == v1040 then
																pcall(function()
																	local v1070, v1071 = pcall(function()
																		v1041 = v12:DistanceFromCharacter(
																			v899.PrimaryPart.Position
																		) <= (9 + 5)
																	end)
																	if v1071 then
																		local v1105
																		for v1112, v1113 in pairs(v1113:GetChildren()) do
																			local v1114 = pcall(function()
																				local v1126 = v1113["Position"]
																			end)
																			if v1114 then
																				v1105 = v1113
																				break
																			end
																		end
																		v1041 = v12:DistanceFromCharacter(
																			v1105.Position
																		) <= (54 - 40)
																	end
																end)
																if v1041 then
																	local v1090 = 0 + 0
																	while true do
																		if (0 - 0) == v1090 then
																			fireproximityprompt(v1014)
																			v1015 += (1 + 0)
																			break
																		end
																	end
																end
																break
															end
														end
													until not v899:IsDescendantOf(workspace)
														or not v1014:IsDescendantOf(workspace)
														or not v16.bookcollecter
														or (v1015 > (24 + 26))
												end)
											end
										end
									end
									v760 = 2 - 1
								end
							end
						end
						v394 = 1 + 0
					end
					if v394 == (1 - 0) then
						repeat
							task.wait()
							if v16.bookcollecter == false then
								break
							end
						until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == (1294 - (485 + 759))
						if v16.bookcollecter == true then
							local v800
							v800 = workspace.CurrentRooms.ChildAdded:Connect(function(v832)
								v395(v832)
							end)
							for v833, v834 in pairs(workspace.CurrentRooms:GetChildren()) do
								if v834:FindFirstChild("Assets") then
									v395(v834)
								end
							end
							v395(
								workspace.CurrentRooms[tostring(
									game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
								)]
							)
							repeat
								task.wait()
							until not v16.bookcollecter
							v800:Disconnect()
						end
						break
					end
				end
			end
		end)
else
	notify("明月清风","你需要更好的执行器.",2)
end
if fireproximityprompt then
Tab4:Toggle("自动捡断路器",false,function(v286)
			v16.breakercollecter = v286
			if v286 then
				local function v396(v469)
					local function v470(v541)
						if v541:IsA("Model") then
							if v541.Name == "LiveBreakerPolePickup" then
								local v835 = v541:WaitForChild("ActivateEventPrompt")
								local v836 = 0
								task.spawn(function()
									repeat
										local v900 = 0 - 0
										local v901
										while true do
											if (1190 - (442 + 747)) == v900 then
												pcall(function()
													local v1016 = 1135 - (832 + 303)
													local v1017
													local v1018
													while true do
														if v1016 == 0 then
															v1017, v1018 = pcall(function()
																v901 = v12:DistanceFromCharacter(
																	v541.PrimaryPart.Position
																) <= (960 - (88 + 858))
															end)
															if v1018 then
																local v1064
																for v1072, v1073 in pairs(v1073:GetChildren()) do
																	local v1074 = pcall(function()
																		local v1091 = v1073["Position"]
																	end)
																	if v1074 then
																		v1064 = v1073
																		break
																	end
																end
																v901 = v12:DistanceFromCharacter(v1064.Position)
																	<= (5 + 9)
															end
															break
														end
													end
												end)
												if v901 then
													local v1033 = 0 + 0
													while true do
														if v1033 == (0 + 0) then
															fireproximityprompt(v835)
															v836 += (790 - (766 + 23))
															break
														end
													end
												end
												break
											end
											if v900 == 0 then
												task.wait(0.1)
												v901 = false
												v900 = 4 - 3
											end
										end
									until not v541:IsDescendantOf(workspace)
										or not v835:IsDescendantOf(workspace)
										or not v16.breakercollecter
										or (v836 > (68 - 18))
								end)
							end
						end
					end
					local v471
					v471 = v469.DescendantAdded:Connect(function(v542)
						v470(v542)
					end)
					for v543, v544 in pairs(v469:GetDescendants()) do
						v470(v544)
					end
					task.spawn(function()
						local v545 = 0 - 0
						while true do
							if v545 == (0 - 0) then
								repeat
									task.wait()
								until not v16.breakercollecter
								v471:Disconnect()
								break
							end
						end
					end)
				end
				repeat
					task.wait()
					if v16.breakercollecter == false then
						break
					end
				until game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 100
				if v16.breakercollecter == true then
					local v546 = 1073 - (1036 + 37)
					local v547
					while true do
						if v546 == (1 + 0) then
							for v837, v838 in pairs(workspace.CurrentRooms:GetChildren()) do
								if v838:FindFirstChild("Assets") then
									v396(v838)
								end
							end
							v396(
								workspace.CurrentRooms[tostring(
									game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
								)]
							)
							v546 = 2
						end
						if v546 == (0 - 0) then
							v547 = nil
							v547 = workspace.CurrentRooms.ChildAdded:Connect(function(v839)
								v396(v839)
							end)
							v546 = 1 + 0
						end
						if v546 == 2 then
							repeat
								task.wait()
							until not v16.breakercollecter
							v547:Disconnect()
							break
						end
					end
				end
			end
		end)
else
	notify("明月清风","你需要更好的执行器.",2)
end
Tab5 = Library:Tab("绕开功能")
Tab5:Toggle("绕开Halt",false,function(v122)
		local v123 = 0
		while true do
			if v123 == (1480 - (641 + 839)) then
				_G.BypassHalte = v122
				if _G.BypassHalte == true then
					local v472 = 913 - (910 + 3)
					local v473
					while true do
						if v472 == (0 - 0) then
							v473 = game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade
							v473.Parent = game.Workspace
							break
						end
					end
				elseif _G.BypassHalte == false then
					local v642 = 1684 - (1466 + 218)
					local v643
					while true do
						if v642 == (0 + 0) then
							v643 = game.Workspace.Shade
							v643.Parent = game:GetService("ReplicatedStorage").ClientModules.EntityModules
							break
						end
					end
				end
				break
			end
		end
	end)
Tab5:Toggle("绕开Glitch和Void[没有跳杀]",false,function(v124)
		local v125 = 1148 - (556 + 592)
		while true do
			if v125 == (0 + 0) then
				_G.GV = v124
				if _G.GV == true then
					local v474 = 808 - (329 + 479)
					local v475
					local v476
					while true do
						if v474 == 1 then
							v475.Parent = game.Workspace
							v476.Parent = game.Workspace
							break
						end
						if v474 == (854 - (174 + 680)) then
							v475 = game:GetService("ReplicatedStorage").ClientModules.EntityModules.Glitch
							v476 = game:GetService("ReplicatedStorage").ClientModules.EntityModules.Void
							v474 = 3 - 2
						end
					end
				elseif _G.GV == false then
					local v644 = 0 - 0
					local v645
					local v646
					while true do
						if v644 == 0 then
							v645 = game.Workspace.Glitch
							v646 = game.Workspace.Void
							v644 = 1 + 0
						end
						if (740 - (396 + 343)) == v644 then
							v645.Parent = game:GetService("ReplicatedStorage").ClientModules.EntityModules
							v646.Parent = game:GetService("ReplicatedStorage").ClientModules.EntityModules
							break
						end
					end
				end
				break
			end
		end
	end)
Tab5:Toggle("绕开Screech伤害",false,function(v126)
		getgenv().avoidsc = v126
	end)
Tab5:Toggle("绕开Dupe",false,function(v128)
		v16.nodupe = v128
		if v128 then
			local v288
			v288 = game:GetService("ReplicatedStorage").GameData.LatestRoom
				:GetPropertyChangedSignal("Value")
				:Connect(function()
					task.wait()
					for v397, v398 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
						if v398.Name == "DoorFake" then
							v398.Hidden.CanTouch = false
						end
					end
					repeat
						task.wait()
					until not v16.nodupe
					v288:Disconnect()
				end)
		end
	end)
local v48 = game.ReplicatedStorage:WaitForChild("EntityInfo"):WaitForChild("A90")
Tab5:Toggle("绕开A-90",false,function(v130)
		v16.noa90 = v130
		if v130 then
			local v289 = 0 + 0
			local v290
			while true do
				if v289 == (1477 - (29 + 1448)) then
					v290 =
						v12.PlayerGui:WaitForChild("MainUI"):WaitForChild("Jumpscare"):FindFirstChild("Jumpscare_A90")
					if v290 then
						v290.Parent = nil
						v48.Parent = nil
						repeat
							task.wait()
							game.SoundService.Main.Volume = 1390 - (135 + 1254)
						until not v16.noa90
						v290.Parent = v12.PlayerGui.MainUI.Jumpscare
						v48.Parent = v15
					end
					break
				end
			end
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.bypassSnare then
			for v399, v400 in
				pairs(
					game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]
						:WaitForChild("Assets")
						:GetChildren()
				)
			do
				if v400.Name == "Snare" then
					v400.Hitbox["TouchInterest"]:Destroy()
				end
			end
		end
	end)
end)
Tab5:Toggle("绕开地刺",false,function(v132)
		_G.bypassSnare = v132
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.Eyhasd then
			if workspace:FindFirstChild("Eyes") then
				game:GetService("ReplicatedStorage").EntityInfo.MotorReplication
					:FireServer(0, (_G.Eyhasd and -(452 - 332)) or (0 - 0), 0, false)
			end
		end
	end)
end)
Tab5:Toggle("绕开Eyes伤害",false,function(v133)
		_G.Eyhasd = v133
	end)
local v49 = getrawmetatable(game)
local v50 = v49.__namecall
setreadonly(v49, false)
v49.__namecall = newcclosure(function(v134, ...)
	args = { ... }
	if DisableEyes and EyesOnMap then
		if tostring(v134) == "MotorReplication" then
			args[2 + 0] = -(1647 - (389 + 1138))
		end
	end
	return v50(v134, table.unpack(args))
end)
Tab6 = Library:Tab("透视功能")
Tab6:Toggle("透视门",false,function(v135)
		local v136 = 0
		while true do
			if v136 == (574 - (102 + 472)) then
				v16.espdoors = v135
				if v135 then
					local function v477(v549)
						local v550 = 0 + 0
						local v551
						local v552
						local v553
						while true do
							if v550 == 3 then
								if _G.Highlights == true then
									local v868 = 0
									local v869
									while true do
										if v868 == 0 then
											v869 = hightlightoutboi(_G.DoorsC, v551)
											table.insert(v18.doors, v869)
											break
										end
									end
								end
								v551:WaitForChild("Open").Played:Connect(function()
									if _G.EspEnable == true then
										h.delete()
									end
									if _G.Highlights == true then
										o.delete()
									end
								end)
								v550 = 3 + 1
							end
							if v550 == (2 + 0) then
								if v551.Parent:FindFirstChild("Lock") then
									v553 = "[上锁的]"
								else
									v553 = ""
								end
								if _G.EspEnable == true then
									local v870 = esp(
										v551,
										_G.DoorsC,
										v551,
										"门 " .. v552.Sign.Stinker.Text .. " " .. v553 .. ""
									)
									table.insert(v18.doors, v870)
								end
								v550 = 1548 - (320 + 1225)
							end
							if v550 == (0 - 0) then
								v551 = v549:WaitForChild("Door"):WaitForChild("Door")
								v552 = v549:WaitForChild("Door")
								v550 = 1 + 0
							end
							if v550 == (1468 - (157 + 1307)) then
								v551.AncestryChanged:Connect(function()
									local v848 = 1859 - (821 + 1038)
									while true do
										if v848 == (0 - 0) then
											if _G.EspEnable == true then
												h.delete()
											end
											if _G.Highlights == true then
												o.delete()
											end
											break
										end
									end
								end)
								break
							end
							if v550 == (1 + 0) then
								v553 = nil
								task.wait(0.1 - 0)
								v550 = 1 + 1
							end
						end
					end
					local v478
					v478 = v12:GetAttributeChangedSignal("CurrentRoom"):Connect(function()
						local v554 = 0 - 0
						while true do
							if v554 == 0 then
								for v849, v850 in pairs(v18.doors) do
									v850.delete()
								end
								v477(workspace.CurrentRooms[v12:GetAttribute("CurrentRoom")])
								break
							end
						end
					end)
					if workspace.CurrentRooms[v12:GetAttribute("CurrentRoom")]:FindFirstChild("Assets") then
						v477(workspace.CurrentRooms[v12:GetAttribute("CurrentRoom")])
					end
					repeat
						task.wait()
					until not v16.espdoors
					v478:Disconnect()
					for v555, v556 in pairs(v18.doors) do
						v556.delete()
					end
				end
				break
			end
		end
	end)
Tab6:Toggle("透视钥匙和拉杆",false,function(v137)
		v16.espkeys = v137
		if v137 then
			local v291 = 1026 - (834 + 192)
			local v292
			local v293
			local v294
			while true do
				if v291 == 0 then
					v292 = nil
					function v292(v557)
						if v557:IsA("Model") and ((v557.Name == "LeverForGate") or (v557.Name == "KeyObtain")) then
							task.wait(0.1 + 0)
							if v557.Name == "KeyObtain" then
								local v851 = 0 + 0
								local v852
								local v853
								while true do
									if v851 == 2 then
										if _G.Highlights == true then
											local v985 = 0
											local v986
											while true do
												if v985 == 0 then
													v986 = hightlightoutboi(_G.KeyandLevers, v557)
													table.insert(v18.keys, v986)
													break
												end
											end
										end
										break
									end
									if v851 == 0 then
										v852 = v557:WaitForChild("Hitbox")
										v853 = v852:GetChildren()
										v851 = 1 + 0
									end
									if v851 == (1 - 0) then
										table.remove(v853, table.find(v853, v852:WaitForChild("PromptHitbox")))
										if _G.EspEnable == true then
											local v987 = esp(v853, _G.KeyandLevers, v852, "钥匙")
											table.insert(v18.keys, v987)
										end
										v851 = 2
									end
								end
							elseif v557.Name == "LeverForGate" then
								local v902 = 304 - (300 + 4)
								while true do
									if v902 == 0 then
										if _G.EspEnable == true then
											local v1034 = 0 + 0
											local v1035
											while true do
												if v1034 == 0 then
													v1035 = esp(v557, _G.KeyandLevers, v557.PrimaryPart, "拉杆")
													table.insert(v18.keys, v1035)
													break
												end
											end
										end
										if _G.Highlights == true then
											local v1036 = 0 - 0
											local v1037
											while true do
												if v1036 == (362 - (112 + 250)) then
													v1037 = hightlightoutboi(_G.KeyandLevers, v557)
													table.insert(v18.keys, v1037)
													break
												end
											end
										end
										v902 = 1 + 0
									end
									if v902 == (2 - 1) then
										v557.PrimaryPart:WaitForChild("SoundToPlay").Played:Connect(function()
											local v1019 = 0 + 0
											while true do
												if v1019 == 0 then
													if _G.EspEnable == true then
														h.delete()
													end
													if _G.Highlights == true then
														o.delete()
													end
													break
												end
											end
										end)
										break
									end
								end
							end
						end
					end
					v291 = 1 + 0
				end
				if v291 == (3 + 1) then
					v294:Disconnect()
					for v558, v559 in pairs(v18.keys) do
						v559.delete()
					end
					break
				end
				if v291 == (2 + 1) then
					for v560, v561 in pairs(workspace.CurrentRooms:GetChildren()) do
						if v561:FindFirstChild("Assets") then
							v293(v561)
						end
					end
					repeat
						task.wait()
					until not v16.espkeys
					v291 = 3 + 1
				end
				if v291 == (1416 - (1001 + 413)) then
					v294 = nil
					v294 = workspace.CurrentRooms.ChildAdded:Connect(function(v562)
						v293(v562)
					end)
					v291 = 3
				end
				if v291 == 1 then
					v293 = nil
					function v293(v563)
						local v564 = v563:WaitForChild("Assets")
						v564.DescendantAdded:Connect(function(v650)
							v292(v650)
						end)
						for v651, v652 in pairs(v564:GetDescendants()) do
							v292(v652)
						end
					end
					v291 = 2
				end
			end
		end
	end)
Tab6:Toggle("透视物品",false,function(v139)
		local v140 = 0 - 0
		while true do
			if (882 - (244 + 638)) == v140 then
				v16.espitems = v139
				if v139 then
					local v479 = 693 - (627 + 66)
					local v480
					local v481
					local v482
					while true do
						if v479 == (0 - 0) then
							v480 = nil
							function v480(v801)
								if
									v801:IsA("Model") and (v801:GetAttribute("Pickup") or v801:GetAttribute("PropType"))
								then
									task.wait(0.1)
									local v871 = v801:FindFirstChild("Handle") or v801:FindFirstChild("Prop")
									if _G.EspEnable == true then
										local v938 = esp(v871, _G.itemC, v871, v801.Name)
										table.insert(v18.items, v938)
									end
									if _G.Highlights == true then
										local v939 = hightlightoutboi(_G.itemC, v801)
										table.insert(v18.items, v939)
									end
								end
							end
							v479 = 603 - (512 + 90)
						end
						if v479 == (1908 - (1665 + 241)) then
							v482 = nil
							v482 = workspace.CurrentRooms.ChildAdded:Connect(function(v802)
								v481(v802)
							end)
							v479 = 720 - (373 + 344)
						end
						if v479 == (2 + 1) then
							for v803, v804 in pairs(workspace.CurrentRooms:GetChildren()) do
								if v804:FindFirstChild("Assets") then
									v481(v804)
								end
							end
							repeat
								task.wait()
							until not v16.espitems
							v479 = 2 + 2
						end
						if v479 == (10 - 6) then
							v482:Disconnect()
							for v805, v806 in pairs(v18.items) do
								v806.delete()
							end
							break
						end
						if v479 == (1 - 0) then
							v481 = nil
							function v481(v807)
								local v808 = v807:WaitForChild("Assets")
								if v808 then
									local v872 = 0
									local v873
									while true do
										if (1100 - (35 + 1064)) == v872 then
											for v988, v989 in pairs(v808:GetDescendants()) do
												v480(v989)
											end
											task.spawn(function()
												repeat
													task.wait()
												until not v16.espitems
												v873:Disconnect()
											end)
											break
										end
										if v872 == (0 + 0) then
											v873 = nil
											v873 = v808.DescendantAdded:Connect(function(v990)
												v480(v990)
											end)
											v872 = 2 - 1
										end
									end
								end
							end
							v479 = 2
						end
					end
				end
				break
			end
		end
	end)
Tab6:Toggle("透视书和断路器",false,function(v141)
		local v142 = 0 + 0
		while true do
			if v142 == (1236 - (298 + 938)) then
				v16.espbooks = v141
				if v141 then
					local function v483(v565)
						if v565:IsA("Model") and (v565.Name == "LiveHintBook") then
							local v772 = 1259 - (233 + 1026)
							while true do
								if v772 == 0 then
									task.wait(0.1)
									if _G.EspEnable == true then
										local v940 = 1666 - (636 + 1030)
										local v941
										while true do
											if v940 == 0 then
												v941 = esp(v565, _G.bookandbreakers, v565.PrimaryPart, "书")
												table.insert(v18.books, v941)
												break
											end
										end
									end
									v772 = 1
								end
								if v772 == (1 + 0) then
									if _G.Highlights == true then
										local v942 = 0
										local v943
										while true do
											if v942 == (0 + 0) then
												v943 = hightlightoutboi(_G.bookandbreakers, v565)
												table.insert(v18.books, v943)
												break
											end
										end
									end
									v565.AncestryChanged:Connect(function()
										if not v565:IsDescendantOf(room) then
											local v960 = 0 + 0
											while true do
												if v960 == (0 + 0) then
													if _G.EspEnable == true then
														h.delete()
													end
													if _G.Highlights == true then
														o.delete()
													end
													break
												end
											end
										end
									end)
									break
								end
							end
						elseif v565:IsA("Model") and (v565.Name == "LiveBreakerPolePickup") then
							local v854 = 221 - (55 + 166)
							while true do
								if 0 == v854 then
									task.wait(0.1)
									if _G.EspEnable == true then
										local v991 = 0 + 0
										local v992
										while true do
											if v991 == (0 + 0) then
												v992 = esp(v565, _G.bookandbreakers, v565.PrimaryPart, "断路器")
												table.insert(v18.books, v992)
												break
											end
										end
									end
									v854 = 3 - 2
								end
								if v854 == (298 - (36 + 261)) then
									if _G.Highlights == true then
										local v993 = hightlightoutboi(_G.bookandbreakers, v565)
										table.insert(v18.books, v993)
									end
									v565.AncestryChanged:Connect(function()
										if not v565:IsDescendantOf(room) then
											if _G.EspEnable == true then
												h.delete()
											end
											if _G.Highlights == true then
												o.delete()
											end
										end
									end)
									break
								end
							end
						end
					end
					local function v484(v566)
						if (v566.Name == "50") or (v566.Name == "100") then
							local v773 = 0 - 0
							while true do
								if v773 == 0 then
									v566.DescendantAdded:Connect(function(v903)
										v483(v903)
									end)
									for v904, v905 in pairs(v566:GetDescendants()) do
										v483(v905)
									end
									break
								end
							end
						end
					end
					local v485
					v485 = workspace.CurrentRooms.ChildAdded:Connect(function(v567)
						v484(v567)
					end)
					for v568, v569 in pairs(workspace.CurrentRooms:GetChildren()) do
						v484(v569)
					end
					repeat
						task.wait()
					until not v16.espbooks
					v485:Disconnect()
					for v570, v571 in pairs(v18.books) do
						v571.delete()
					end
				end
				break
			end
		end
	end)
Tab6:Toggle("透视实体",false,function(v143)
		local v144 = 1368 - (34 + 1334)
		while true do
			if 0 == v144 then
				v16.esprush = v143
				if v143 then
					local v486
					v486 = workspace.ChildAdded:Connect(function(v572)
						if table.find(v10, v572.Name) then
							local v774 = 0 + 0
							while true do
								if v774 == (0 + 0) then
									task.wait(1283.1 - (1035 + 248))
									if _G.EspEnable == true then
										local v944 = 0
										local v945
										while true do
											if v944 == (21 - (20 + 1)) then
												v945 = esp(
													v572,
													_G.entitysc,
													v572.PrimaryPart,
													v572.Name:gsub("Moving", "")
												)
												table.insert(v18.entity, v945)
												break
											end
										end
									end
									v774 = 1 + 0
								end
								if (320 - (134 + 185)) == v774 then
									if v572:FindFirstChild("RushNew") then
										local v946 = Instance.new("Humanoid")
										v946.Parent = v572
										if _G.Highlights == true then
											local v994 = Instance.new("Highlight")
											v994.Name = "Esp"
											v994.FillColor = _G.entitysc
											v994.FillTransparency = 0.5
											v994.OutlineColor = _G.entitysc
											v994.OutlineTransparency = 1133 - (549 + 584)
											v994.Parent = v572
										end
										v572.RushNew.Transparency = 685.99 - (314 + 371)
									elseif v572:FindFirstChild("Core") then
										local v1001 = 0 - 0
										local v1002
										while true do
											if v1001 == (968 - (478 + 490)) then
												v1002 = Instance.new("Humanoid")
												v1002.Parent = v572
												v1001 = 1
											end
											if v1001 == (1 + 0) then
												if _G.Highlights == true then
													local v1056 = 1172 - (786 + 386)
													local v1057
													while true do
														if v1056 == (9 - 6) then
															v1057.Parent = v572
															break
														end
														if v1056 == (1381 - (1055 + 324)) then
															v1057.OutlineColor = _G.entitysc
															v1057.OutlineTransparency = 1340 - (1093 + 247)
															v1056 = 3 + 0
														end
														if v1056 == (0 + 0) then
															v1057 = Instance.new("Highlight")
															v1057.Name = "Esp"
															v1056 = 1
														end
														if v1056 == (3 - 2) then
															v1057.FillColor = _G.entitysc
															v1057.FillTransparency = 0.5
															v1056 = 2
														end
													end
												end
												v572.Core.Transparency = 0.99 - 0
												break
											end
										end
									elseif v572:FindFirstChild("Main") then
										local v1038 = 0 - 0
										local v1039
										while true do
											if v1038 == (2 - 1) then
												if _G.Highlights == true then
													local v1075 = 0 + 0
													local v1076
													while true do
														if (7 - 5) == v1075 then
															v1076.OutlineColor = _G.entitysc
															v1076.OutlineTransparency = 0 - 0
															v1075 = 3 + 0
														end
														if v1075 == (0 - 0) then
															v1076 = Instance.new("Highlight")
															v1076.Name = "Esp"
															v1075 = 689 - (364 + 324)
														end
														if v1075 == (7 - 4) then
															v1076.Parent = v572
															break
														end
														if (2 - 1) == v1075 then
															v1076.FillColor = _G.entitysc
															v1076.FillTransparency = 0.5 + 0
															v1075 = 8 - 6
														end
													end
												end
												v572.Main.Transparency = 0.99 - 0
												break
											end
											if v1038 == (0 - 0) then
												v1039 = Instance.new("Humanoid")
												v1039.Parent = v572
												v1038 = 1
											end
										end
									elseif _G.Highlights == true then
										local v1051 = 1268 - (1249 + 19)
										local v1052
										while true do
											if v1051 == 0 then
												v1052 = Instance.new("Highlight")
												v1052.Name = "Esp"
												v1051 = 1 + 0
											end
											if v1051 == 2 then
												v1052.OutlineColor = _G.entitysc
												v1052.OutlineTransparency = 0 - 0
												v1051 = 1089 - (686 + 400)
											end
											if v1051 == 3 then
												v1052.Parent = v572
												break
											end
											if v1051 == (1 + 0) then
												v1052.FillColor = _G.entitysc
												v1052.FillTransparency = 229.5 - (73 + 156)
												v1051 = 2
											end
										end
									end
									break
								end
							end
						end
					end)
					local function v487(v573)
						if (v573.Name == "50") or (v573.Name == "100") then
							local v775 = v573:WaitForChild("FigureSetup")
							if v775 then
								local v855 = 0 + 0
								local v856
								while true do
									if v855 == 0 then
										v856 = v775:WaitForChild("FigureRagdoll")
										task.wait(811.1 - (721 + 90))
										v855 = 1 + 0
									end
									if v855 == (3 - 2) then
										if _G.EspEnable == true then
											local v1003 = esp(v856, _G.entitysc, v856.PrimaryPart, "Figure")
											table.insert(v18.entity, v1003)
										end
										if _G.Highlights == true then
											local v1004 = hightlightoutboi(_G.entitysc, v856)
											table.insert(v18.entity, v1004)
										end
										break
									end
								end
							end
						else
							local v776 = v573:WaitForChild("Assets")
							local function v777(v809)
								if v809:IsA("Model") and table.find(v10, v809.Name) then
									local v874 = 470 - (224 + 246)
									while true do
										if v874 == (1 - 0) then
											if _G.Highlights == true then
												local v1020 = 0 - 0
												local v1021
												while true do
													if v1020 == (0 + 0) then
														v1021 = hightlightoutboi(_G.entitysc, v809)
														table.insert(v18.entity, v1021)
														break
													end
												end
											end
											break
										end
										if v874 == (0 + 0) then
											task.wait(0.1)
											if _G.EspEnable == true then
												local v1022 =
													esp(v809:WaitForChild("Base"), _G.entitysc, v809.Base, "地刺")
												table.insert(v18.entity, v1022)
											end
											v874 = 1 + 0
										end
									end
								end
							end
							v776.DescendantAdded:Connect(function(v810)
								v777(v810)
							end)
							for v811, v812 in pairs(v776:GetDescendants()) do
								v777(v812)
							end
						end
					end
					local v488
					v488 = workspace.CurrentRooms.ChildAdded:Connect(function(v574)
						v487(v574)
					end)
					for v575, v576 in pairs(workspace.CurrentRooms:GetChildren()) do
						v487(room)
					end
					repeat
						task.wait()
					until not v16.esprush
					v486:Disconnect()
					v488:Disconnect()
					for v577, v578 in pairs(v18.entity) do
						v578.delete()
					end
				end
				break
			end
		end
	end)
Tab6:Toggle("透视箱子",false,function(v145)
		v16.espchest = v145
		if v145 then
			local v295 = 0
			local v296
			local v297
			local v298
			while true do
				if v295 == (1 - 0) then
					v297 = nil
					function v297(v579)
						local v580
						v580 = v579.DescendantAdded:Connect(function(v653)
							v296(v653)
						end)
						for v654, v655 in pairs(v579:GetDescendants()) do
							v296(v655)
						end
						task.spawn(function()
							repeat
								task.wait()
							until not v16.espchest
							v580:Disconnect()
						end)
					end
					v295 = 6 - 4
				end
				if v295 == 3 then
					for v581, v582 in pairs(workspace.CurrentRooms:GetChildren()) do
						if v582:FindFirstChild("Assets") then
							v297(v582)
						end
					end
					repeat
						task.wait()
					until not v16.espchest
					v295 = 4
				end
				if v295 == (517 - (203 + 310)) then
					v298:Disconnect()
					for v583, v584 in pairs(v18.chests) do
						v584.delete()
					end
					break
				end
				if v295 == (1995 - (1238 + 755)) then
					v298 = nil
					v298 = workspace.CurrentRooms.ChildAdded:Connect(function(v585)
						v297(v585)
					end)
					v295 = 1 + 2
				end
				if v295 == (1534 - (709 + 825)) then
					v296 = nil
					function v296(v586)
						if v586:IsA("Model") then
							task.wait(0.1)
							if v586.Name == "ChestBox" then
								local v857 = 0
								while true do
									if v857 == (1 - 0) then
										if _G.Highlights == true then
											local v1005 = hightlightoutboi(_G.ChestCC, v586)
											table.insert(v18.chests, v1005)
										end
										break
									end
									if v857 == (0 - 0) then
										warn(v586.Name)
										if _G.EspEnable == true then
											local v1006 = esp(v586, _G.ChestCC, v586.PrimaryPart, "宝箱")
											table.insert(v18.chests, v1006)
										end
										v857 = 1
									end
								end
							elseif v586.Name == "ChestBoxLocked" then
								if _G.EspEnable == true then
									local v961 = 864 - (196 + 668)
									local v962
									while true do
										if v961 == 0 then
											v962 = esp(v586, _G.ChestCC, v586.PrimaryPart, "宝箱 [上锁的]")
											table.insert(v18.chests, v962)
											break
										end
									end
								end
								if _G.Highlights == true then
									local v963 = hightlightoutboi(_G.ChestCC, v586)
									table.insert(v18.chests, v963)
								end
							end
						end
					end
					v295 = 3 - 2
				end
			end
		end
	end)
Tab6:Toggle("透视金币",false,function(v147)
		local v148 = 0 - 0
		while true do
			if v148 == (833 - (171 + 662)) then
				v16.espgold = v147
				if v147 then
					local function v489(v587)
						if v587:IsA("Model") then
							local v778 = 0
							local v779
							while true do
								if v778 == (93 - (4 + 89)) then
									task.wait(0.1)
									v779 = v587:GetAttribute("GoldValue")
									v778 = 3 - 2
								end
								if 1 == v778 then
									if v779 and v779 then
										local v949 = v587:WaitForChild("Hitbox")
										if _G.EspEnable == true then
											local v1007 = 0
											local v1008
											while true do
												if v1007 == 0 then
													v1008 = esp(
														v949:GetChildren(),
														_G.goldsCC,
														v949,
														"金币 [" .. tostring(v779) .. "]"
													)
													table.insert(v18.gold, v1008)
													break
												end
											end
										end
										if _G.Highlights == true then
											local v1009 = 0 + 0
											local v1010
											while true do
												if 0 == v1009 then
													v1010 = hightlightoutboi(_G.goldsCC, v587)
													table.insert(v18.gold, v1010)
													break
												end
											end
										end
									end
									break
								end
							end
						end
					end
					local function v490(v588)
						local v589 = v588:WaitForChild("Assets")
						local v590
						v590 = v589.DescendantAdded:Connect(function(v656)
							v489(v656)
						end)
						for v657, v658 in pairs(v589:GetDescendants()) do
							v489(v658)
						end
						task.spawn(function()
							local v659 = 0 - 0
							while true do
								if v659 == (0 + 0) then
									repeat
										task.wait()
									until not v16.espchest
									v590:Disconnect()
									break
								end
							end
						end)
					end
					local v491
					v491 = workspace.CurrentRooms.ChildAdded:Connect(function(v591)
						v490(v591)
					end)
					for v592, v593 in pairs(workspace.CurrentRooms:GetChildren()) do
						if v593:FindFirstChild("Assets") then
							v490(v593)
						end
					end
					repeat
						task.wait()
					until not v16.espgold
					v491:Disconnect()
					for v594, v595 in pairs(v18.gold) do
						v595.delete()
					end
				end
				break
			end
		end
	end)
game:GetService("RunService").Heartbeat:Connect(function()
	pcall(function()
		if (_G.espplayersaf == true) and (_G.Highlights == true) then
			if not game.Players.LocalPlayer.Character:FindFirstChild("Esp") then
				local v492 = 0
				local v493
				while true do
					if v492 == (1486 - (35 + 1451)) then
						v493 = game.Players:GetPlayers()
						for v813, v814 in pairs(v493) do
							local v815 = 1453 - (28 + 1425)
							local v816
							while true do
								if v815 == (1996 - (941 + 1052)) then
									v816.Parent = v814.Character
									break
								end
								if (0 + 0) == v815 then
									v816 = Instance.new("Highlight")
									v816.Name = "Esp"
									v815 = 1515 - (822 + 692)
								end
								if v815 == 1 then
									v816.FillColor = _G.playasc
									v816.FillTransparency = 0.5 - 0
									v815 = 1 + 1
								end
								if v815 == (299 - (45 + 252)) then
									v816.OutlineColor = _G.playasc
									v816.OutlineTransparency = 0 + 0
									v815 = 2 + 1
								end
							end
						end
						break
					end
				end
			end
		elseif _G.espplayersaf == false then
			if game.Players.LocalPlayer.Character:FindFirstChild("Esp") then
				local v660 = game.Players:GetPlayers()
				for v780, v781 in pairs(v660) do
					v781.Character.Esp:Destroy()
				end
			end
		end
	end)
end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.espplayersaf then
		end
	end)
end)
Tab6:Toggle("透视玩家",false,function(v149)
		v16.esphumans = v149
		_G.espplayersaf = v149
		if v149 then
			local function v299(v341)
				v341.CharacterAdded:Connect(function(v402)
					local v403 = 0
					local v404
					local v405
					while true do
						if v403 == 0 then
							v404 = v402:WaitForChild("Humanoid")
							v405 = v402:WaitForChild("UpperTorso")
							v403 = 2 - 1
						end
						if v403 == (434 - (114 + 319)) then
							task.wait(0.1 - 0)
							if _G.EspEnable == true then
								local v817 = 0
								local v818
								while true do
									if v817 == (0 - 0) then
										v818 = esp(v402, _G.playasc, v405, "名字 : " .. v341.DisplayName)
										table.insert(v18.people, v818)
										break
									end
								end
							end
							break
						end
					end
				end)
				if v341.Character then
					local v494 = 0 + 0
					local v495
					local v496
					local v497
					while true do
						if v494 == (2 - 0) then
							if _G.EspEnable == true then
								local v858 = 0 - 0
								local v859
								while true do
									if v858 == 0 then
										v859 = esp(v495, _G.playasc, v497, "名字 : " .. v341.DisplayName)
										table.insert(v18.people, v859)
										break
									end
								end
							end
							break
						end
						if v494 == (1963 - (556 + 1407)) then
							v495 = v341.Character
							v496 = v495:WaitForChild("Humanoid")
							v494 = 1207 - (741 + 465)
						end
						if v494 == (466 - (170 + 295)) then
							v497 = v495:WaitForChild("UpperTorso")
							task.wait(0.1)
							v494 = 2 + 0
						end
					end
				end
			end
			local v300
			v300 = game.Players.PlayerAdded:Connect(function(v342)
				if v342 ~= v12 then
					v299(v342)
				end
			end)
			for v343, v344 in pairs(game.Players:GetPlayers()) do
				if v344 ~= v12 then
					v299(v344)
				end
			end
			repeat
				task.wait()
			until not v16.esphumans
			v300:Disconnect()
			for v345, v346 in pairs(v18.people) do
				v346.delete()
			end
		end
	end)
_G.DoorsC = Color3.fromRGB(165, 0, 255)
_G.KeyandLevers = Color3.fromRGB(0, 232, 255)
_G.itemC = Color3.fromRGB(0, 232, 255)
_G.bookandbreakers = Color3.fromRGB(234, 255, 0)
_G.entitysc = Color3.fromRGB(255, 0, 0)
_G.ChestCC = Color3.fromRGB(234, 255, 0)
_G.goldsCC = Color3.fromRGB(234, 255, 0)
_G.playasc = Color3.fromRGB(89, 255, 0)
Tab7 = Library:Tab("其他功能")
_G.EspEnable = true
_G.Highlights = true
Tab7:Toggle("文字透视",false,function(v159)
		_G.EspEnable = v159
	end)
Tab7:Toggle("高亮透视",false,function(v160)
		_G.Highlights = v160
	end)
workspace.CurrentRooms.DescendantAdded:Connect(function(v161)
	for v230, v231 in next, v11 do
		if v161:IsA("Model") and v161.Name:match(v231) then
			local v347 = 0 + 0
			while true do
				if v347 == (1 + 0) then
					if ItemNotifyboi == true then
						local v783 = 0
						local v784
						while true do
							if v783 == 1 then
								v784.Parent = game.SoundService
								v784.SoundId = "rbxassetid://4590657391"
								v783 = 1697 - (556 + 1139)
							end
							if v783 == 2 then
								v784.Volume = 20 - (6 + 9)
								v784.PlayOnRemove = true
								v783 = 1 + 2
							end
							if v783 == (2 + 1) then
								v784:Destroy()
								break
							end
							if v783 == (169 - (28 + 141)) then
								notify("明月清风","提示" .. v231 .. " 已经生成了!",3)
								v784 = Instance.new("Sound")
								v783 = 1 + 0
							end
						end
					end
					break
				end
				if v347 == 0 then
					if v161:GetAttribute("JeffShop") == true then
						return
					end
					if v161.Name == "CrucifixOnTheWall" then
						return
					end
					v347 = 1 - 0
				end
			end
		end
	end
end)
_G.chat = false
Tab7:Textbox("聊天通知文本","",true,function(v162)
		_G.kuychatez = v162
	end)
Tab7:Toggle("事件",false,function(v163)
		v16.hintrush = v163
		if v163 then
			local v301 = 0 + 0
			local v302
			while true do
				if v301 == (1317 - (486 + 831)) then
					v302 = nil
					v302 = workspace.ChildAdded:Connect(function(v596)
						if table.find(v10, v596.Name) then
							repeat
								task.wait()
							until (v12:DistanceFromCharacter(v596:GetPivot().Position) < 1000)
								or not v596:IsDescendantOf(workspace)
							if v596:IsDescendantOf(workspace) then
								if v596.Name == "RushMoving" then
									notify("[明月清风 ·事件通知程序] ","Rush来了，找到藏身之处！(上帝模式有效)",5)
									local v913 = Instance.new("Sound")
									v913.Parent = game.SoundService
									v913.SoundId = "rbxassetid://4590657391"
									v913.Volume = 5
									v913.PlayOnRemove = true
									v913:Destroy()
									if _G.chat == true then
										game:GetService("TextChatService").TextChannels.RBXGeneral
											:SendAsync("Rush " .. _G.kuychatez)
									end
								elseif v596.Name == "AmbushMoving" then
									notify("[明月清风 ·事件通知程序] ","Ambush来了，找到藏身之处！(上帝模式有效)",5)
									local v964 = Instance.new("Sound")
									v964.Parent = game.SoundService
									v964.SoundId = "rbxassetid://4590657391"
									v964.Volume = 12 - 7
									v964.PlayOnRemove = true
									v964:Destroy()
									if _G.chat == true then
										game:GetService("TextChatService").TextChannels.RBXGeneral
											:SendAsync("Ambush " .. _G.kuychatez)
									end
								elseif v596.Name == "SeekMoving" then
									notify("[明月清风 ·事件通知程序] ","追逐战来了，祝你好运!(上帝模式无效)",5)
									local v1023 = Instance.new("Sound")
									v1023.Parent = game.SoundService
									v1023.SoundId = "rbxassetid://4590657391"
									v1023.Volume = 17 - 12
									v1023.PlayOnRemove = true
									v1023:Destroy()
									if _G.chat == true then
										game:GetService("TextChatService").TextChannels.RBXGeneral
											:SendAsync("追逐战，祝好运！")
									end
								elseif v596.Name == "A60" then
									local v1044 = 0 + 0
									local v1045
									while true do
										if v1044 == 3 then
											v1045:Destroy()
											if _G.chat == true then
												game:GetService("TextChatService").TextChannels.RBXGeneral
													:SendAsync("A60 " .. _G.kuychatez)
											end
											break
										end
										if v1044 == (6 - 4) then
											v1045.Volume = 1268 - (668 + 595)
											v1045.PlayOnRemove = true
											v1044 = 3 + 0
										end
										if v1044 == (0 + 0) then
											notify("[明月清风 ·事件通知程序] ","A-60来了，找到藏身之处！(上帝模式无效)",5)
											v1045 = Instance.new("Sound")
											v1044 = 1
										end
										if v1044 == 1 then
											v1045.Parent = game.SoundService
											v1045.SoundId = "rbxassetid://4590657391"
											v1044 = 2
										end
									end
								elseif v596.Name == "A120" then
									local v1060 = 0 - 0
									local v1061
									while true do
										if v1060 == (293 - (23 + 267)) then
											v1061:Destroy()
											if _G.chat == true then
												game:GetService("TextChatService").TextChannels.RBXGeneral
													:SendAsync("A120 " .. _G.kuychatez)
											end
											break
										end
										if v1060 == 0 then
											notify("[明月清风 ·事件通知程序] ","A-120来了，找到藏身之处！(上帝模式有效)",5)
											v1061 = Instance.new("Sound")
											v1060 = 1945 - (1129 + 815)
										end
										if v1060 == (389 - (371 + 16)) then
											v1061.Volume = 1755 - (1326 + 424)
											v1061.PlayOnRemove = true
											v1060 = 3
										end
										if v1060 == (1 - 0) then
											v1061.Parent = game.SoundService
											v1061.SoundId = "rbxassetid://4590657391"
											v1060 = 2
										end
									end
								elseif v596.Name == "JeffTheKiller" then
									local v1083 = 0 - 0
									local v1084
									while true do
										if v1083 == 1 then
											v1084.Parent = game.SoundService
											v1084.SoundId = "rbxassetid://4590657391"
											v1083 = 120 - (88 + 30)
										end
										if v1083 == (773 - (720 + 51)) then
											v1084.Volume = 11 - 6
											v1084.PlayOnRemove = true
											v1083 = 1779 - (421 + 1355)
										end
										if v1083 == (4 - 1) then
											v1084:Destroy()
											if _G.chat == true then
												game:GetService("TextChatService").TextChannels.RBXGeneral
													:SendAsync("杰夫杀手将会在下一扇门生成，小心")
											end
											break
										end
										if v1083 == 0 then
											notify("[明月清风 ·事件通知程序] ","杰夫杀手!小心！(上帝模式无效)",5)
											v1084 = Instance.new("Sound")
											v1083 = 1 + 0
										end
									end
								elseif v596.Name == "Eyes" then
									local v1106 = 1083 - (286 + 797)
									local v1107
									while true do
										if v1106 == 3 then
											v1107:Destroy()
											if _G.chat == true then
												game:GetService("TextChatService").TextChannels.RBXGeneral
													:SendAsync("Eyes生成了，别看他")
											end
											break
										end
										if v1106 == 1 then
											v1107.Parent = game.SoundService
											v1107.SoundId = "rbxassetid://4590657391"
											v1106 = 2
										end
										if 2 == v1106 then
											v1107.Volume = 18 - 13
											v1107.PlayOnRemove = true
											v1106 = 4 - 1
										end
										if v1106 == (439 - (397 + 42)) then
											notify("[明月清风 ·事件通知程序] ","Eyes生成了，别看他！(上帝模式工作)",5)
											v1107 = Instance.new("Sound")
											v1106 = 1 + 0
										end
									end
								end
							end
						end
					end)
					v301 = 801 - (24 + 776)
				end
				if v301 == (1 - 0) then
					repeat
						task.wait()
					until not v16.hintrush
					v302:Disconnect()
					break
				end
			end
		end
	end)
Tab7:Toggle("项目事件",false,function(v165)
		ItemNotifyboi = v165
	end)
Tab7:Toggle("聊天提醒",false,function(v166)
		_G.chat = v166
	end)
if game:GetService("ReplicatedStorage").GameData.Floor.Value == "Hotel" then
	Tab7:Toggle("自动图书馆密码",false,function(v303)
			v16.getcode = v303
			if v303 then
				local function v406()
					local v498 = v13:FindFirstChild("LibraryHintPaper")
					local v499 = v12.PlayerGui:WaitForChild("PermUI"):WaitForChild("Hints")
					local v500 = {
						[786 - (222 + 563)] = "_",
						[3 - 1] = "_",
						[3 + 0] = "_",
						[194 - (23 + 167)] = "_",
						[1803 - (690 + 1108)] = "_",
					}
					if v498 then
						for v785, v786 in pairs(v498:WaitForChild("UI"):GetChildren()) do
							if v786:IsA("ImageLabel") and (v786.Name ~= "Image") then
								for v880, v881 in pairs(v499:GetChildren()) do
									if
										v881:IsA("ImageLabel")
										and v881.Visible
										and (v786.ImageRectOffset == v881.ImageRectOffset)
									then
										local v950 = 0 + 0
										local v951
										while true do
											if (0 + 0) == v950 then
												v951 = v881:FindFirstChild("TextLabel").Text
												v500[tonumber(v786.Name)] = v951
												break
											end
										end
									end
								end
							end
						end
					end
					return v500
				end
				local v407
				v407 = v13.ChildAdded:Connect(function(v501)
					if v501:IsA("Tool") and (v501.Name == "LibraryHintPaper") then
						local v661 = 848 - (40 + 808)
						local v662
						while true do
							if v661 == (0 + 0) then
								task.wait()
								v662 = table.concat(v406())
								v661 = 3 - 2
							end
							if v661 == (1 + 0) then
								if v662:find("_") then
									notify("明月清风","你必须收集所有的书",3)
									local v919 = Instance.new("Sound")
									v919.Parent = game.SoundService
									v919.SoundId = "rbxassetid://550209561"
									v919.Volume = 5
									v919.PlayOnRemove = true
									v919:Destroy()
								else
									notify("明月清风","密码 = " .. v662,3)
									local v925 = Instance.new("Sound")
									v925.Parent = game.SoundService
									v925.SoundId = "rbxassetid://4590657391"
									v925.Volume = 5
									v925.PlayOnRemove = true
									v925:Destroy()
									local v931 = { [1 + 0] = v662 }
									game:GetService("ReplicatedStorage")
										:WaitForChild("EntityInfo")
										:WaitForChild("PL")
										:FireServer(unpack(v931))
									notify("明月清风","门已经打开了.",4)
									if _G.chat == true then
										game:GetService("TextChatService").TextChannels.RBXGeneral
											:SendAsync("门已打开.")
									end
								end
								break
							end
						end
					end
				end)
				repeat
					task.wait()
				until not v16.getcode
				v407:Disconnect()
			end
		end)
elseif game:GetService("ReplicatedStorage").GameData.Floor.Value == "Fools" then
Tab7:Toggle("自动密码[困难]",false,function(v408)
			local v409 = 0 + 0
			while true do
				if v409 == (571 - (47 + 524)) then
					v16.getcodet = v408
					if v408 then
						local function v819()
							local v860 = v13:FindFirstChild("LibraryHintPaperHard")
							local v861 = v12.PlayerGui:WaitForChild("PermUI"):WaitForChild("Hints")
							local v862 = {
								[1] = "_",
								[2 + 0] = "_",
								[8 - 5] = "_",
								[5 - 1] = "_",
								[11 - 6] = "_",
								[1732 - (1165 + 561)] = "_",
								[1 + 6] = "_",
								[24 - 16] = "_",
								[9] = "_",
								[10] = "_",
							}
							if v860 then
								for v952, v953 in pairs(v860:WaitForChild("UI"):GetChildren()) do
									if v953:IsA("ImageLabel") and (v953.Name ~= "Image") then
										for v1031, v1032 in pairs(v861:GetChildren()) do
											if
												v1032:IsA("ImageLabel")
												and v1032.Visible
												and (v953.ImageRectOffset == v1032.ImageRectOffset)
											then
												local v1046 = v1032:FindFirstChild("TextLabel").Text
												v862[tonumber(v953.Name)] = v1046
											end
										end
									end
								end
							end
							return v862
						end
						local v820
						v820 = v13.ChildAdded:Connect(function(v863)
							if v863:IsA("Tool") and (v863.Name == "LibraryHintPaperHard") then
								task.wait()
								local v932 = table.concat(v819())
								if v932:find("_") then
									notify("明月清风","你必须收集所有的书",3)
									local v970 = Instance.new("Sound")
									v970.Parent = game.SoundService
									v970.SoundId = "rbxassetid://550209561"
									v970.Volume = 5
									v970.PlayOnRemove = true
									v970:Destroy()
								else
									notify("明月清风","密码 = " .. v932,3)
									local v976 = Instance.new("Sound")
									v976.Parent = game.SoundService
									v976.SoundId = "rbxassetid://4590657391"
									v976.Volume = 5
									v976.PlayOnRemove = true
									v976:Destroy()
									local v982 = { [1 + 0] = v932 }
									game:GetService("ReplicatedStorage")
										:WaitForChild("EntityInfo")
										:WaitForChild("PL")
										:FireServer(unpack(v982))
									notify("明月清风","门已经打开了.",4)
									if _G.chat == true then
										game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("门已打开.")
									end
								end
							end
						end)
						repeat
							task.wait()
						until not v16.getcodet
						v820:Disconnect()
					end
					break
				end
			end
		end)
end
Tab7:Seperator("十字架")
Tab7:Slider("使用:",1,100,1,function(v167)
		CruUseValue = v167
	end)
local v52 = 1
Tab7:Slider("Slider",1,50,50,function(v168)
		CruRange = v168
	end)
local v53 = 50
Tab7:Toggle("在任何物品上使用",false,function(v169)
		Cruanything = v169
	end)
Tab7:Toggle("失败",false,function(v170)
		CruFail = v170
	end)
Tab7:Button("获取十字架",function()
		local v171 = Instance.new("Sound")
		v171.Parent = game.SoundService
		v171.SoundId = "rbxassetid://4590657391"
		v171.Volume = 11 - 6
		v171.PlayOnRemove = true
		v171:Destroy()
		_G.Uses = v52
		_G.Range = v53
		_G.OnAnything = Cruanything
		_G.Fail = CruFail
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
	end)
Tab7:Dropdown("项目商店(店内)",{"开锁器","维他命","手电筒","打火机"},function(v177)
		itemguwbv = v177
	end)
Tab7:Slider("数量",0,10,0,function(v178)
		numberitem = v178
	end)
Tab7:Button("购买",function()
		local v179 = itemguwbv
		local v180 = numberitem
		local v181 = {}
		local v182 = 2 - 1
		repeat
			table.insert(v181, v182, v179)
			v182 += (1 - 0)
		until v182 > v180
		game:GetService("ReplicatedStorage").EntityInfo.PreRunShop:FireServer({ unpack(v181) })
	end)
Tab7:Seperator("生成杰克")
Tab7:Textbox("生成的房间号","",true,function(v183)
		NumberRoomJack = v183
	end)
Tab7:Button("杰克衣柜",function()
		if not game.Workspace.CurrentRooms[NumberRoomJack].Assets:FindFirstChild("Wardrobe") then
			notify("明月清风","错误 | 找不到衣柜",3)
		elseif game.Workspace.CurrentRooms[NumberRoomJack].Assets:FindFirstChild("Wardrobe") then
			Instance.new("Highlight", game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"])
		end
	end)
Tab7:Button("开始生成杰克",function()
		if not game.Workspace.CurrentRooms[NumberRoomJack].Assets:FindFirstChild("Wardrobe") then
			notify("明月清风","错误 | 找不到衣柜",3)
		elseif game.Workspace.CurrentRooms[NumberRoomJack].Assets:FindFirstChild("Wardrobe") then
			local v410 = 0
			while true do
				if v410 == 0 then
					fireproximityprompt(
						game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
						0 + 0
					)
					fireproximityprompt(
						game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
						1 + 0
					)
					v410 = 70 - (10 + 59)
				end
				if v410 == (1 + 2) then
					game:GetService("RunService").RenderStepped:Connect(function()
						pcall(function()
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								0 - 0
							)
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1
							)
							game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1163 - (671 + 492)
							)
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1 + 0
							)
							game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								0
							)
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1216 - (369 + 846)
							)
							game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								0 + 0
							)
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1 + 0
							)
							game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1945 - (1036 + 909)
							)
							fireproximityprompt(
								game.Workspace.CurrentRooms[NumberRoomJack].Assets["Wardrobe"].HidePrompt,
								1 + 0
							)
							game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
						end)
					end)
					break
				end
				if v410 == (2 - 0) then
					game.Players.LocalPlayer.Character.Humanoid.Health = 203 - (11 + 192)
					wait(0.9)
					v410 = 3
				end
				if v410 == (1 + 0) then
					wait(176.5 - (135 + 40))
					game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer()
					v410 = 4 - 2
				end
			end
		end
	end)
Tab8 = Library:Tab("超困难模式")
Tab8:Dropdown("选择玩家",{"玩家"},function(v184)
		SelectPlayer = v184
	end)
Tab8:Button("给他带来一个香蕉",function()
		for v232, v233 in pairs(workspace:GetChildren()) do
			if v233.Name == "BananaPeel" then
				v233.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame
			end
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SpamBringPlayer then
			for v411, v412 in pairs(workspace:GetChildren()) do
				if v412.Name == "BananaPeel" then
					v412.CFrame = game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame
				end
			end
		end
	end)
end)
Tab8:Toggle("在他脚下生成香蕉",false,function(v185)
		_G.SpamBringPlayer = v185
	end)
game:GetService("Workspace").DescendantAdded:Connect(function(v186)
	if not _G.antibanananana then
		return
	end
	if v186.IsA(v186, "Part") then
		if _G.antibanananana then
			if v186.Name == "BananaPeel" then
				v186.CanTouch = false
			end
		end
	end
end)
Tab8:Toggle("反香蕉",false,function(v187)
		local v188 = 0
		while true do
			if v188 == (0 + 0) then
				_G.antibanananana = v187
				if _G.antibanananana == true then
					for v600, v601 in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v601:IsA("Part") then
							if v601.Name == "BananaPeel" then
								v601.CanTouch = false
							end
						end
					end
				end
				break
			end
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.antije then
			for v413, v414 in pairs(game.workspace:GetChildren()) do
				if v414.Name == "JeffTheKiller" then
					v414.Knife.CanTouch = false
				end
			end
			for v415, v416 in pairs(game.workspace:GetChildren()) do
				if v416.Name == "JeffTheKiller" then
					v416.Head.CanTouch = false
				end
			end
			for v417, v418 in pairs(game.workspace:GetChildren()) do
				if v418.Name == "JeffTheKiller" then
					v418.HumanoidRootPart.CanTouch = false
				end
			end
			for v419, v420 in pairs(game.workspace:GetChildren()) do
				if v420.Name == "JeffTheKiller" then
					v420["Left Arm"].CanTouch = false
				end
			end
			for v421, v422 in pairs(game.workspace:GetChildren()) do
				if v422.Name == "JeffTheKiller" then
					v422["Left Leg"].CanTouch = false
				end
			end
			for v423, v424 in pairs(game.workspace:GetChildren()) do
				if v424.Name == "JeffTheKiller" then
					v424["Right Arm"].CanTouch = false
				end
			end
			for v425, v426 in pairs(game.workspace:GetChildren()) do
				if v426.Name == "JeffTheKiller" then
					v426["Right Leg"].CanTouch = false
				end
			end
			for v427, v428 in pairs(game.workspace:GetChildren()) do
				if v428.Name == "JeffTheKiller" then
					v428.Torso.CanTouch = false
				end
			end
		end
	end)
end)
Tab8:Toggle("反杰夫",false,function(v189)
		_G.antije = v189
	end)
Tab8:Button("使用他的手电筒",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("Flashlight") then
			game.Players[SelectPlayer].Backpack.Flashlight.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("Flashlight") then
			game.Players[SelectPlayer].Character.Flashlight.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.Spamflashlightee then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("Flashlight") then
				game.Players[SelectPlayer].Backpack.Flashlight.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("Flashlight") then
				game.Players[SelectPlayer].Character.Flashlight.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的手电筒",false,function(v159)
		_G.Spamflashlightee = v190
	end)
Tab8:Button("用他的打火机",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("Lighter") then
			game.Players[SelectPlayer].Backpack.Lighter.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("Lighter") then
			game.Players[SelectPlayer].Character.Lighter.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SpamLightersss then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("Lighter") then
				game.Players[SelectPlayer].Backpack.Lighter.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("Lighter") then
				game.Players[SelectPlayer].Character.Lighter.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的打火机",false,function(v191)
		_G.SpamLightersss = v191
	end)
Tab8:Button("用他的维他命",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("Vitamins") then
			game.Players[SelectPlayer].Backpack.Vitamins.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("Vitamins") then
			game.Players[SelectPlayer].Character.Vitamins.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.SpamVitaminee then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("Vitamins") then
				game.Players[SelectPlayer].Backpack.Vitamins.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("Vitamins") then
				game.Players[SelectPlayer].Character.Vitamins.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的维他命",false,function(v192)
		_G.SpamVitaminee = v192
	end)
Tab8:Button("使用他的小型护盾药水",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("ShieldMini") then
			game.Players[SelectPlayer].Backpack.ShieldMini.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("ShieldMini") then
			game.Players[SelectPlayer].Character.ShieldMini.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.ShieldMinitroll then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("ShieldMini") then
				game.Players[SelectPlayer].Backpack.ShieldMini.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("ShieldMini") then
				game.Players[SelectPlayer].Character.ShieldMini.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的小型护盾药水",false,function(v193)
		_G.ShieldMinitroll = v193
	end)
Tab8:Button("使用他的大型护盾药水",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("ShieldBig") then
			game.Players[SelectPlayer].Backpack.ShieldBig.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("ShieldBig") then
			game.Players[SelectPlayer].Character.ShieldBig.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.ShieldBigtroll then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("ShieldBig") then
				game.Players[SelectPlayer].Backpack.ShieldBig.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("ShieldBig") then
				game.Players[SelectPlayer].Character.ShieldBig.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的大型护盾药水",false,function(v194)
		_G.ShieldBigtroll = v194
	end)
Tab8:Button("使用他的圣光手雷",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("HolyGrenade") then
			game.Players[SelectPlayer].Backpack.HolyGrenade.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("HolyGrenade") then
			game.Players[SelectPlayer].Character.HolyGrenade.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.HolyGrenadetroll then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("HolyGrenade") then
				game.Players[SelectPlayer].Backpack.HolyGrenade.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("HolyGrenade") then
				game.Players[SelectPlayer].Character.HolyGrenade.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的圣光手雷",false,function(v195)
		_G.HolyGrenadetroll = v195
	end)
Tab8:Button("用他的手摇手电筒",function()
		if game.Players[SelectPlayer].Backpack:FindFirstChild("Shakelight") then
			game.Players[SelectPlayer].Backpack.Shakelight.Remote:FireServer()
		elseif game.Players[SelectPlayer].Character:FindFirstChild("Shakelight") then
			game.Players[SelectPlayer].Character.Shakelight.Remote:FireServer()
		end
	end)
game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
		if _G.Shakelighte then
			if game.Players[SelectPlayer].Backpack:FindFirstChild("Shakelight") then
				game.Players[SelectPlayer].Backpack.Shakelight.Remote:FireServer()
			elseif game.Players[SelectPlayer].Character:FindFirstChild("Shakelight") then
				game.Players[SelectPlayer].Character.Shakelight.Remote:FireServer()
			end
		end
	end)
end)
Tab8:Toggle("浪费他的手摇手电筒",false,function(v196)
		_G.Shakelighte = v196
	end)
Tab9 = Library:Tab("更多功能")
Tab9:Button("传送到大厅",function()
		notify("明月清风","传送到大厅",1)
		wait()
		notify("明月清风","3",1)
		wait(0.5 - 0)
		notify("明月清风","2",1)
		wait(0.5)
		notify("明月清风","1",1)
		wait(0.5)
		local v197 = Instance.new("Sound")
		v197.Parent = game.SoundService
		v197.SoundId = "rbxassetid://4590657391"
		v197.Volume = 7 - 2
		v197.PlayOnRemove = true
		v197:Destroy()
		game:GetService("ReplicatedStorage").EntityInfo.Lobby:FireServer()
	end)
Tab9:Button("再次游玩",function()
		local v203 = 176 - (50 + 126)
		local v204
		while true do
			if v203 == 1 then
				v204.Parent = game.SoundService
				v204.SoundId = "rbxassetid://4590657391"
				v203 = 5 - 3
			end
			if (0 + 0) == v203 then
				notify("明月清风","再次游玩",2)
				v204 = Instance.new("Sound")
				v203 = 1414 - (1233 + 180)
			end
			if v203 == 3 then
				v204:Destroy()
				game:GetService("ReplicatedStorage").EntityInfo.PlayAgain:FireServer()
				break
			end
			if v203 == (971 - (522 + 447)) then
				v204.Volume = 1426 - (107 + 1314)
				v204.PlayOnRemove = true
				v203 = 2 + 1
			end
		end
	end)
Tab9:Button("重置角色",function()
		game:GetService("ReplicatedStorage").EntityInfo.Statistics:FireServer()
		wait(1)
		notify("明月清风","正在让你的角色血量等于0",2)
		local v205 = Instance.new("Sound")
		v205.Parent = game.SoundService
		v205.SoundId = "rbxassetid://4590657391"
		v205.Volume = 15 - 10
		v205.PlayOnRemove = true
		v205:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.Health = -(1 + 0)
	end)
Tab9:Button("复活(不免费)",function()
		local v212 = 0 - 0
		local v213
		while true do
			if v212 == (0 - 0) then
				notify("明月清风","复活不免费",3)
				v213 = Instance.new("Sound")
				v212 = 1911 - (716 + 1194)
			end
			if v212 == (1 + 1) then
				v213.Volume = 1 + 4
				v213.PlayOnRemove = true
				v212 = 506 - (74 + 429)
			end
			if v212 == (5 - 2) then
				v213:Destroy()
				game:GetService("ReplicatedStorage").EntityInfo.Revive:FireServer()
				break
			end
			if v212 == (1 + 0) then
				v213.Parent = game.SoundService
				v213.SoundId = "rbxassetid://4590657391"
				v212 = 2
			end
		end
	end)
Tab9:Toggle("去除门",false,function(v214)
		_G.Removedoorsss = v214
		if _G.Removedoorsss == true then
			game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild(
				"Door"
			).Door.CFrame = game.workspace.CurrentRooms[tostring(
				game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
			)]:WaitForChild("Door").Door.CFrame * CFrame.new(0 - 0, -(7075 + 2925), 0)
		end
		task.spawn(function()
			game.workspace.CurrentRooms.ChildAdded:Connect(function(v306)
				if _G.Removedoorsss then
					if v306:IsA("Model") then
						game.workspace.CurrentRooms[tostring(
							game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
						)]:WaitForChild("Door").Door.CFrame = game.workspace.CurrentRooms[tostring(
							game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
						)]:WaitForChild("Door").Door.CFrame * CFrame.new(0 - 0, -10000, 0)
					end
				end
			end)
		end)
	end)
Tab9:Slider("速度设置",15,75,50,function(value)
		_G.SelectBootst = v215
	end)
_G.SelectBootst = 50
Tab9:Toggle("开启速度模式",false,function(v216)
		_G.speedkuys = v216
	end)
Tab9:Toggle("加速防拉回",false,function(v217)
		local v218 = 0 + 0
		while true do
			if v218 == 0 then
				_G.BypassSpeeds = v217
				while _G.BypassSpeeds do
					local v429 = 17 - (12 + 5)
					while true do
						if v429 == 0 then
							wait(0.2 + 0)
							pcall(function()
								game.Players.LocalPlayer.Character.Collision.Size =
									Vector3.new(4 - 2, 1 + 1, 1095 - (277 + 816))
								wait(0.2)
								game.Players.LocalPlayer.Character.Collision.Size =
									Vector3.new(12 - 9, 4.5, 1186 - (1058 + 125))
							end)
							break
						end
					end
				end
				break
			end
		end
	end)
Tab9:Button("删除追逐战触发［所有人］",function()
		for v234, v235 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
			if v235:IsA("Model") then
				if v235.Name == "TriggerEventCollision" then
					if v235:FindFirstChild("Collision") then
						v235.Collision.CanCollide = false
						v235.Collision.CFrame = game.Players.LocalPlayer.Character.Collision.CFrame
						v235.Collision.CanCollide = false
						v235.Collision.CFrame = game.Players.LocalPlayer.Character.Collision.CFrame
						notify("明月清风","成功 | 追逐战触发器已移除",3)
						local v668 = Instance.new("Sound")
						v668.Parent = game.SoundService
						v668.SoundId = "rbxassetid://4590657391"
						v668.Volume = 5
						v668.PlayOnRemove = true
						v668:Destroy()
					else
						notify("明月清风","错误 | 追逐战触发器没有找到",3)
						local v674 = Instance.new("Sound")
						v674.Parent = game.SoundService
						v674.SoundId = "rbxassetid://550209561"
						v674.Volume = 1 + 4
						v674.PlayOnRemove = true
						v674:Destroy()
					end
				end
			end
		end
	end)
Tab9:Button("给杰夫带来一个香蕉",function()
		for v236, v237 in pairs(workspace:GetChildren()) do
			if v237.Name == "BananaPeel" then
				v237.CFrame = game.Workspace.JeffTheKiller.HumanoidRootPart.CFrame
			end
		end
	end)
Tab9:Toggle("生成香蕉给杰夫",false,function(v219)
		_G.SpamBringjeffshe = v219
		while _G.SpamBringjeffshe do
			wait(0.1)
			pcall(function()
				if workspace:FindFirstChild("JeffTheKiller") then
					for v502, v503 in pairs(workspace:GetChildren()) do
						if v503.Name == "BananaPeel" then
							v503.CFrame = game.Workspace.JeffTheKiller.HumanoidRootPart.CFrame
						end
					end
				end
			end)
		end
	end)
Tab9:Button("生成Void",function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Void).stuff(
			require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
			workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		)
	end)
Tab9:Button("生成halt",function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(
			require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
			workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		)
	end)
Tab9:Button("生成Glitch",function()
		require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(
			require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
			workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		)
	end)
Tab9:Button("生成Timothy",function()
		local v220 = 975 - (815 + 160)
		local v221
		while true do
			if v220 == (0 - 0) then
				v221 = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
				require(v221.RemoteListener.Modules.SpiderJumpscare)(
					require(v221),
					workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")].Assets.Dresser.DrawerContainer,
					0.5 - 0
				)
				break
			end
		end
	end)
Tab9:Button("生成Seek的眼睛",function()
		local v222 = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game
		require(game.ReplicatedStorage.ClientModules.EntityModules.Seek).tease(
			nil,
			workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")],
			24 + 76
		)
	end)
Tab9:Button("生成Screech",function()
		require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(
			require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
			workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
		)
	end)
	end
})

Tab:AddButton({
	Name = "微山DOORS",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
  	end
})

Tab:AddButton({
	Name = "kingHub",
	Callback = function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
  	end
})

Tab:AddButton({
	Name = "Ohio doors",
	Callback = function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/rxn-xyz/Ohio./main/Ohio.lua",true))()
    end
})

Tab:AddButton({
	Name = "云doors",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/hsjakajaaa.lua"))()
    end
})

Tab:AddButton({
	Name = "脚本1",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DocYogurt/free/raw/main/long"))()
    end
})

Tab:AddButton({
	Name = "脚本2",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
    end
})

Tab:AddButton({
	Name = "脚本3",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/whXp1Ca2"))()
  	end    
})

Tab:AddButton({
	Name = "神圣炸弹",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
    end
})

Tab:AddButton({
	Name = "夜视仪",
	Callback = function()
     _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
    end
})    

Tab:AddButton({
	Name = "剪刀",
	Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
    end
})    

Tab:AddButton({
	Name = "激光枪",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
    end
})

Tab:AddButton({
	Name = "能量罐",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
    end
})   

Tab:AddButton({
	Name = "紫色手电筒（在电梯购买东西的时候使用）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight"))()
    end
})  

Tab:AddButton({
	Name = "手电筒（没电会有bug）",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
end
})      

Tab:AddButton({
  Name = "DOORS低回拉穿墙",
  Callback = function()
    loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
  end
})

Tab:AddButton({
  Name = "刷怪菜单",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shuaguai"))()
  end
})

Tab:AddButton({
	Name = "DOORS变身脚本",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
end
}) 

Tab:AddButton({
	Name = "不可能模式",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()
  	end
})

Tab:AddButton({
	Name = "Endless模式",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()
  	end
})

Tab:AddButton({
	Name = "物品复制枪",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/EverythingGunByNeRD.lua"))()
  	end
})

Tab:AddButton({
	Name = "控制物品大小枪",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/SizeChangerByNerd.lua"))()
  	end
})

Tab:AddButton({
	Name = "香蕉枪(可在困难模式发射香蕉)",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
  	end
})

Tab:AddButton({
	Name = "手持臭猫",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end
})

Tab:AddButton({
	Name = "磁铁",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "俄亥俄州",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end
})

local Tab = Window:MakeTab({
  Name = "国王遗产",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "trick",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Strikehubv2z/StormSKz/main/All_in_one"))()
end
})

Tab:AddButton({
	Name = "ipper hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/hajibeza/RIPPER-HUB/main/King%20Leagacy"))()
end
})

Tab:AddButton({
	Name = "Xenon Hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/master/legacy"))()
end
})

Tab:AddButton({
	Name = "lack",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sannin9000/scripts/main/kinglegacy.lua"))()
end
})

Tab:AddButton({
	Name = "yper hub",
	Callback = function()
repeat wait() until game:IsLoaded()loadstring(game:HttpGet("https://raw.githubusercontent.com/DookDekDEE/Hyper/main/script.lua"))() 
end
})

local Tab = Window:MakeTab({
	Name = "忍者传奇 | 功能",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break
                end
            end
        end
    )
end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break
                    end
                end
            end
        end
    )
end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end
                end
                if not autosellmax then
                    break
                end
            end
        end
    )
end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyswords then
                    break
                end
            end
        end
    )
end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuybelts then
                    break
                end
            end
        end
    )
end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break
                end
            end
        end
    )
end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyskill then
                    break
                end
            end
        end
    )
end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyshurikens then
                    break
                end
            end
        end
    )
end

Tab:AddToggle({
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    })

Tab:AddToggle({
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    })
    
Tab:AddToggle({
        Name = "存满了自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    })

local Section = Tab:AddSection({
	Name = "自动购买功能"
})

Tab:AddToggle({
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    })

Tab:AddToggle({
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    })

Tab:AddToggle({
        Name = "自动购买称号（等级）",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    })

Tab:AddToggle({
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    })

Tab:AddToggle({
        Name = "自动购买（全部打开就行）",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    })

Tab:AddButton({
        Name = "解锁所有岛",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    })

local Tab = Window:MakeTab({
	Name = "一路向西",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "防摔",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040712770")[1].Source)()
	end
})

Tab:AddButton({
	Name = "防套",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040719318")[1].Source)()
	end
})

Tab:AddButton({
	Name = "范围",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040722920")[1].Source)()
	end
})

Tab:AddButton({
	Name = "无后座，无限，超级",
	Callback = function()
	loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
	end
})

local steepTab = Window:MakeTab({
	Name = "STEEP STEPS",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})
 
local Section = steepTab:AddSection({
	Name = "传送"
})
 
steepTab:AddParagraph("如何传送成功教程","在FE中输入tptool，拿着物品即可点击传送，从一个地方一直传送很远的地方直到系统自动重生就可以")
 
local Section = steepTab:AddSection({
	Name = "第一维度"
})
 
steepTab:AddButton({
	Name = "100米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-64.00015258789062, 377.9997863769531, -495)
  	end    
})
 
steepTab:AddButton({
	Name = "200米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-449.999755859375, 716.005126953125, -317.0000305175781)
 
  	end    
})
 
steepTab:AddButton({
	Name = "300米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-523, 1071.004638671875, -125)
 
  	end    
})
 
steepTab:AddButton({
	Name = "400米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-485.36199951171875, 1428.4996337890625, -412.2453308105469)
 
  	end    
})
 
steepTab:AddButton({
	Name = "500米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-790.0836181640625, 1806.4996337890625, -721.1473388671875)
 
  	end    
})
 
steepTab:AddButton({
	Name = "600米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-706.7542724609375, 2147, -584.2627563476562)
 
  	end    
})
 
steepTab:AddButton({
	Name = "700米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1506.5, 2498.4716796875, -752)
 
  	end    
})
 
steepTab:AddButton({
	Name = "800米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1404.5, 2859.5693359375, -1326.5)
 
  	end    
})
 
steepTab:AddButton({
	Name = "900米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1111.5, 3215.467041015625, -1655.5)
 
  	end    
})
 
steepTab:AddButton({
	Name = "1000米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1007.5, 3552.466552734375, -999.5)
 
  	end    
})
 
local Section = steepTab:AddSection({
	Name = "第二维度"
})
steepTab:AddButton({
	Name = "100米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(446.9700012207031, 364.9999084472656, -496.38238525390625)
  	end    
})
 
steepTab:AddButton({
	Name = "200米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(429.0002746582031, 716.005126953125, -1182.0001220703125)
  	end    
})
 
steepTab:AddButton({
	Name = "300米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(308.000244140625, 1122.0048828125, -1624)
  	end    
})
 
steepTab:AddButton({
	Name = "400米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(815.0003051757812, 1429.0048828125, -2095)
  	end    
})
 
steepTab:AddButton({
	Name = "500米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(1026.000244140625, 1786.005126953125, -2831)
  	end    
})
 
steepTab:AddButton({
	Name = "600米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(894.2503051757812, 2143.5048828125, -3628)
  	end    
})
 
steepTab:AddButton({
	Name = "700米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-39.999820709228516, 2502.204833984375, -3415)
  	end    
})
 
steepTab:AddButton({
	Name = "800米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-941.499755859375, 2863.5048828125, -3219.50048828125)
  	end    
})
 
steepTab:AddButton({
	Name = "900米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-1512.5001220703125, 3214.5048828125, -2700.00048828125)
  	end    
})
 
steepTab:AddButton({
	Name = "1000米",
	Callback = function()
      		print("button pressed")
      game.Players.localPlayer.Character.HumanoidRootPart.CFrame  = CFrame.new(-2278.95556640625, 3574.524658203125, -2679.694091796875)
  	end    
})

local Tab = Window:MakeTab({
	Name = "FE",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "飞机V2",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/o45IJG3Z/raw'),true))()
	end
})

Tab:AddButton({
	Name = "蛇脚本",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})

Tab:AddButton({
	Name = "让别让别人控制自己",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
	end
})

Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})

Tab:AddButton({
	Name = "键盘",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
	end
})

Tab:AddButton({
	Name = "复仇者",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
	end
})

Tab:AddButton({
	Name = "鼠标",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})

Tab:AddButton({
	Name = "变怪物（可杀玩家）",
	Callback = function()
	loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
	end
})

local player = Window:MakeTab({
	Name = "杀手vs警长",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0murder", true))()
  	end
})
local player = Window:MakeTab({
	Name = "3008",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
  	end
})

local player = Window:MakeTab({
	Name = "打墙模拟器",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/JunBloxYTPlayz/SORIX-Hub/main/Punch%20Wall%20Simulator"))();
  	end
})

local player = Window:MakeTab({
	Name = "逃出建筑",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
  	end
})

local player = Window:MakeTab({
	Name = "在51区生存",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/ZONE100/ZoneHub/main/MultiGames"))()
  	end
})

local player = Window:MakeTab({
	Name = "能力大战",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "脚本1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/castycheat/abilitywars/main/Protected%20(29).lua"))()
  	end
})

local Tab = Window:MakeTab({
	Name = "其他脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "黑客脚本",
	Callback = function()
loadstring(game: HttpGet("https://raw.githubusercontent.com/BirthScripts/Scripts/main/c00l.lua"))()
    end
})

Tab:AddButton({
	Name = "管理员",
	Callback = function()
loadstring(game: HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()
    end
})

Tab:AddButton({
    Name="玩家动作",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})

Tab:AddButton({
	Name = "HUA Script",
	Callback = function()
_G["HUA Script 作者:1924467894"]="HUA Script Update the cloud"local SCC_CharPool={
[1]= tostring(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,101,110,116,114,121,46,99,111,47,104,101,110,101,120,116,105,115,109,111,111,110,115,101,99,112,108,101,97,115,101,115,116,111,112,97,110,100,105,116,105,115,97,102,114,101,101,115,99,114,105,112,116,111,107,98,121,104,117,105,115,104,97,110,103,103,111,110,103,122,104,117,111,115,104,105,105,106,117,115,116,97,115,99,114,105,112,116,47,114,97,119})end)()))}
loadstring(game:HttpGet(SCC_CharPool[1]))()
	end
})

Tab:AddButton({
	Name = "神光脚本",
	Callback = function()

  _G["神光脚本作者TA"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,109,119,48,112,102,69,70,77})end)())))()
    end
})

Tab:AddButton({
    Name="XC卡密:w",
    Callback=function()
loadstring(game:HttpGet("https://pastebin.com/raw/PAFzYx0F"))()
    end
})

Tab:AddButton({
    Name="USA",
    Callback=function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
    end
})

Tab:AddButton({
	Name = "青蛙",
	Callback = function()
getgenv().eom = "青蛙"
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\39\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\68\122\120\115\81\82\68\85\39\41\41\40\41")()
    end
})

Tab:AddButton({
	Name = "地岩",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
    end
})

Tab:AddButton({
	Name = "ato",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/atoyayaya/jiaoben/main/jiamilist"))()
end
})

Tab:AddButton({
	Name = "纳西妲的脚本中心",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/De4aYHDY"))()
  	end
})

Tab:AddButton({
	Name = "脚本中心1.5",
	Callback = function()		loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()'))()
	end
})

local Tab = Window:MakeTab({
	Name = "其他游戏脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "自动刷金条(造船寻宝)",	
Callback = function()	loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
  	end
})

Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end
})
Tab:AddButton({
	Name = "bf",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua'))()
	end
})

Tab:AddButton({
	Name = "破坏者迷团",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	end
})

Tab:AddButton({
	Name = "强壮传奇",
	Callback = function()
loadstring(game:HttpGet('https://ghostbin.co/paste/ctpa/raw'))()
	end
})

Tab:AddButton({
	Name = "进击的僵尸",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack", true))()
	end
})

Tab:AddButton({
	Name = "巴掌模拟器",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Unknownkellymc1/Unknownscripts/main/slap-battles')))()
    end
})

Tab:AddButton({
	Name = "动画星期五",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",true))()
  	end    
})

Tab:AddButton({
	Name = "宠物模拟器X",
	Callback = function()
     loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
  	end    
})

Tab:AddButton({
	Name = "蜂群模拟器",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/3A61hnGA", true))()
  	end    
})

Tab:AddButton({
	Name = "Evade",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Evade/main.lua"))()
  	end    
})

Tab:AddButton({
	Name = "The Mimic",
	Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/UPDATE-The-Mimic-Instant-Finish-Nightmare-Normal-TWT-And-Halloween-Trials-6497"))()
end
})

Tab:AddButton({
	Name = "The Mimic自动胜利",
	Callback = function()
loadstring(game:HttpGet("https://scriptblox.com/raw/NIGHTMARE-The-Mimic-Complete-Chapters-1687"))()
end
})

Tab:AddButton({
	Name = "自然灾害模拟器",
	Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg", true))() 
end
})

Tab:AddButton({
	Name = "后室",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/Gsqd40fL'))()
  	end    
})

Tab:AddButton({
	Name = "Synapse X",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/tWGxhNq0"))()
  	end    
})

Tab:AddButton({
	Name = "HoHo",
	Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
  	end    
})

Tab:AddButton({
	Name = "tds查看兵",
	Callback = function()
     local Towers = game:GetService("Players").LocalPlayer.PlayerGui.Interface.Root.Inventory.View.Frame.Frame.Frame
 
for _, v in pairs(Towers:GetDescendants()) do
	if v:IsA("ImageButton") then
        v.Visible = true
	end
end
  	end    
})

local Tab = Window:MakeTab({
	Name = "关于我们",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("感谢您的使用 ")
Tab:AddParagraph("我们将持续更新 ")
Tab:AddParagraph("我们的群号none ")

Tab:AddButton({
	Name = "点击复制",
	Callback = function()
setclipboard("别问问，就是还没有")
OrionLib:MakeNotification({
	Name = "日月星辰工作室",
	Content = "复制成功辣^V^！",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	end
})