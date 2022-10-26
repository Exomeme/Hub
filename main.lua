
local players = game:GetService("Players");
local workspace = game:GetService("Workspace");
local runService = game:GetService("RunService");
local inputService = game:GetService("UserInputService");
local networkClient = game:GetService("NetworkClient");
local virtualUser = game:GetService("VirtualUser");
local lighting = game:GetService("Lighting");
local teleportService = game:GetService("TeleportService");





local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()
espLib.options.enabled = false
espLib.options.teamCheck = false
espLib.options.teamColor = false
espLib.options.outOfViewArrows = false
espLib.options.names = false
espLib.options.boxes = false
espLib.options.boxFill = false
espLib.options.healthBars = false
espLib.options.healthText = false
espLib.options.distance = false
espLib.options.tracers = false
espLib.options.chams = false
espLib.options.outOfViewArrowsOutline = false






local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
Name = "      ",
LoadingTitle = "Universal tools",
LoadingSubtitle = "by Exo",
KeySystem = false, -- Set this to true to use our key system
KeySettings = {
	Title = "Universal Tools",
	Subtitle = "Key System",
	Note = "Message Exomeme#1002",
	Key = "UNIVERSAL"
}
})



Rayfield:Notify(":)","Welcome to the GUI Credits for making goes to Exomeme#1002",10010348543)
--------------------------------------------------------------------
local Player = Window:CreateTab("Player")
local Funny = Window:CreateTab("Funny")
local Visuals = Window:CreateTab("Visuals")
local Games = Window:CreateTab("Games")
--------------------------------------------------------------------


local SpeedSlider = Player:CreateSlider({
	Name = "Walkspeed",
	Range = {16, 1000},
	Increment = 1,
	Suffix = "",
	CurrentValue = 16,
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
            
    end,
})

local JumpSlider = Player:CreateSlider({
	Name = "JumpPower",
	Range = {50, 1000},
	Increment = 1,
	Suffix = "",
	CurrentValue = 50,
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
            
    end,
})

local FakeLag = Player:CreateToggle({
	Name = "FakeLag",
	CurrentValue = false,
	Callback = function(Value)
        networkClient:SetOutgoingKBPSLimit(Value and 1 or 0);

	end,
})


local AntiAFK = Player:CreateToggle({
	Name = "AntiAFK",
	CurrentValue = false,
	Callback = function(Value)
        virtualUser:ClickButton1(Vector2.zero, camera);

	end,
})







local Esp = Visuals:CreateToggle({
	Name = "ESP Toggle",
	CurrentValue = false,
	Callback = function(Value)
        if Value == true then
        espLib.options.enabled = true
        else 
        espLib.options.enabled = false
        end
	end,
})

local Names = Visuals:CreateToggle({
	Name = "Names",
	CurrentValue = false,
	Callback = function(Value)
        if Value == true then
        espLib.options.names = true
        else 
        espLib.options.names = false
        end
	end,
})

local Tracers = Visuals:CreateToggle({
	Name = "Tracers",
	CurrentValue = false,
	Callback = function(Value)
        if Value == true then
        espLib.options.tracers = true
        else 
        espLib.options.tracers = false
        end
	end,
})

local Tracerslocation = Visuals:CreateDropdown({
	Name = "Tracers Location",
	Options = {"Mouse","Top","Bottom"},
	CurrentOption = "Bottom",
	Callback = function(Option)
    espLib.options.tracerOrigin = Option
	end,
})

local Chams = Visuals:CreateToggle({
	Name = "Chams",
	CurrentValue = false,
	Callback = function(Value)
        if Value == true then
        espLib.options.chams = true
        else 
        espLib.options.chams = false
        end
	end,
})

local HealthText = Visuals:CreateToggle({
	Name = "Health Text",
	CurrentValue = false,
	Callback = function(Value)
        if Value == true then
        espLib.options.healthText = true
        else 
        espLib.options.healthText = false
        end
	end,
})

local Distance = Visuals:CreateToggle({
	Name = "Distance",
	CurrentValue = false,
	Callback = function(Value)
        if Value == true then
        espLib.options.distance = true
        else 
        espLib.options.distance = false
        end
	end,
})

local message = "Exomeme IS the best"
local waittime = 1
local ChatSpam = Funny:CreateToggle({
	Name = "Chat Spam",
	CurrentValue = false,
	Callback = function(Value)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message,"LocalPlayer")
        wait(waittime)
	end,
})

local WaitTime = Funny:CreateSlider({
	Name = "Wait time",
	Range = {0, 100},
	Increment = 1,
	Suffix = "Seconds",
	CurrentValue = 1,
	Callback = function(Value)
        local waittime = Value
        print(waittime)
	end,
})

local Input = Funny:CreateInput({
	Name = "Spam Text",
	PlaceholderText = "Put message here to spam",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
        local message = Text
        print(message..Text)
	end,
})

local ACSExploit = Games:CreateToggle({
	Name = "ACSExploit",
	CurrentValue = false,
	Callback = function(Value)
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fheahdythdr/legendary-train/main/acs%20gun%20mod%20no%20syn%20x%20compatability.lua"))()

	end,
})


local FrenchSCP = Games:CreateToggle({
	Name = "FrenchSCP Exploit GUI",
	CurrentValue = false,
	Callback = function(Value)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Exomeme/Hub/main/French.lua'))()

	end,
})








espLib:Load()
