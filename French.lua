local me = game.Players.LocalPlayer.Character
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Shrine of rayzo destruction", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})



local function SuperClick()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
print("FIRED")
end
end
end    

local Main = Window:MakeTab({
    Name = "Main Options",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Troll = Window:MakeTab({
    Name = "Troll Options",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Troll:AddButton({
    Name = "Click all",
    Callback = SuperClick()
})

Troll:AddToggle({
    Name = "SpamClick",
    Default = false,
    Callback = function(Value)
    while Value == true do
    SuperClick()
    wait()
    end

    end    
})

Main:AddButton({
    Name = "Gun Room",
    Callback = function()
me.HumanoidRootPart.CFrame = CFrame.new(260.413, -148.124, -152.349)
end    
})
Main:AddButton({
    Name = "MTF",
    Callback = function()
me.HumanoidRootPart.CFrame = CFrame.new(263.906, - 158.264, -25.999)
end    
})
Main:AddButton({
    Name = "SCP BACKUP ARMOURY 2",
    Callback = function()
me.HumanoidRootPart.CFrame = CFrame.new(65.609, -158.273, -303.862)
end    
})
Main:AddButton({
    Name = "682",
    Callback = function()
me.HumanoidRootPart.CFrame = CFrame.new(89.651, -158.265, -243.430)
end    
})
