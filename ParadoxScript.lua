local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "💀Paradox Hub | Spin For Free💀",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Paradox Hub",
   LoadingSubtitle = "by XlesterX",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = PhantomXlesterX, -- Create a custom folder for your hub/game
      FileName = "Lester"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "vnrkCphem7", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "🔑Paradox| Key🔑",
      Subtitle = "Key System",
      Note = "Key is admin :)", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"admin"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠HOME🏠", Lester) -- Title, Image
local Section = MainTab:CreateSection("Main")

local SeconTab = Window:CreateTab("👾teleportation👾", Lester) -- Title, Image
local Section = SeconTab:CreateSection("Teleportation")

--local ScriptsTab = Window:CreateTab("©️Scripts©️", Lester) -- Title, Image
--local Section = ScriptsTab:CreateSection("Admin Commands")

--local Button = ScriptsTab:CreateButton({
   --Name = "Inf Yield",
   --Callback = function()
  --loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   --end,
--})

--local Button = ScriptsTab:CreateButton({
   --Name = "Fates Admin",
   --Callback = function()
  --loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
   --end,
--})

--local Button = ScriptsTab:CreateButton({
  -- Name = "DarkDex",
   --Callback = function()
 -- loadstring(game:HttpGet("https://gist.githubusercontent.com/DinosaurXxX/b757fe011e7e600c0873f967fe427dc2/raw/ee5324771f017073fc30e640323ac2a9b3bfc550/dark%2520dex%2520v4"))()
   --end,
--})

--local Button = ScriptsTab:CreateButton({
   --Name = "SimpleSpy",
  -- Callback = function()
  --loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
   --end,
--})

local CreditsTab = Window:CreateTab("📋Credits📋", Lester) -- Title, Image
local Section = CreditsTab:CreateSection("Credits")


Rayfield:Notify({
   Title = "✅Script executed✅",
   Content = "enjoy this Gui",
   Duration = 5,
   Image = 4483345998,
})

local Button = SeconTab:CreateButton({
   Name = "TP to 4 Spin",
   Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-199.355728, -0.0307379365, -58.4714127, -0.0450260863, -2.92046609e-09, 0.998985827, -5.34709921e-09, 1, 2.68242761e-09, -0.998985827, -5.22089705e-09, -0.0450260863)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Destroy code door",
   Callback = function()
  workspace.Obbies["Code Door"]["Code door"]:Destroy()
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Speed",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Walks Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Button = SeconTab:CreateButton({
   Name = "TP to 10 spins",
   Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-157.752136, -0.0307378173, -11.1672955, 0.0442677736, 9.63689644e-08, 0.999019682, -2.36729019e-08, 1, -9.54145563e-08, -0.999019682, -1.94259044e-08, 0.0442677736)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump",
   Range = {0, 300},
   Increment = 1,
   Suffix = "Walks Jump",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump",
   Callback = function()
  --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="Paradox Hub"; Text="Infinite Jump Enable!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Button = SeconTab:CreateButton({
   Name = "TP to glass bridge",
   Callback = function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.79323602, 2.86671948, -342.488647, 0.995574415, -5.12304155e-08, 0.0939766914, 4.90545489e-08, 1, 2.54633683e-08, -0.0939766914, -2.07406927e-08, 0.995574415)
   end,
})

--local Section = MainTab:CreateSection("♥️Health♥️")

--local Slider = MainTab:CreateSlider({
   --Name = "Max Health",
   --Range = {0, 999},
   --Increment = 1,
   --Suffix = "Max Health",
   --CurrentValue = 100,
   --Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   --Callback = function(Value)
   --game.Players.LocalPlayer.Character.Humanoid.MaxHealth = (Value)
   --end,
--})

--local Slider = MainTab:CreateSlider({
   --Name = "Health",
   --Range = {0, 999},
   --Increment = 1,
   --Suffix = "Health",
   --CurrentValue = 100,
   --Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
  -- Callback = function(Value)
   --game.Players.LocalPlayer.Character.Humanoid.Health = (Value)
   --end,
--})

--local Section = MainTab:CreateSection("🔫️Combat🔫️")

--local Button = MainTab:CreateButton({
   --Name = "Aimbot + ESP By Beanzzzz",
   --Callback = function()
  --loadstring(game:HttpGet('https://raw.githubusercontent.com/pid4k/scripts/main/universalaimbot.lua', true))()
   --end,
--})

local Button = CreditsTab:CreateButton({
   Name = "XlesterX Dev",
   Callback = function()
  game.StarterGui:SetCore("SendNotification", {Title="Paradox Hub"; Text="📋XlesterX Developer📋"; Duration=5;})
   end,
})

local Button = CreditsTab:CreateButton({
   Name = "Rayfield For Base",
   Callback = function()
  game.StarterGui:SetCore("SendNotification", {Title="Paradox Hub"; Text="thank Rayfield"; Duration=5;})
   end,
})

local SettingTab = Window:CreateTab("🔧Setting🔧", Lester) -- Title, Image
local Section = SettingTab:CreateSection("Themes")

local Button = SettingTab:CreateButton({
   Name = "Default Theme",
   Callback = function()
 Window.ModifyTheme('Default')
    end,
})

local Button = SettingTab:CreateButton({
   Name = "Amber Glow Theme",
   Callback = function()
 Window.ModifyTheme('AmberGlow')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Amethyst Theme",
   Callback = function()
 Window.ModifyTheme('Amethyst')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Bloom Theme",
   Callback = function()
 Window.ModifyTheme('Bloom')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Dark Blue Theme",
   Callback = function()
 Window.ModifyTheme('DarkBlue')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Green Theme",
   Callback = function()
 Window.ModifyTheme('Green')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Light Theme",
   Callback = function()
 Window.ModifyTheme('Light')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Ocean Theme",
   Callback = function()
 Window.ModifyTheme('Ocean')
   end,
})

local Button = SettingTab:CreateButton({
   Name = "Serenity Theme",
   Callback = function()
 Window.ModifyTheme('Serenity')
   end,
})