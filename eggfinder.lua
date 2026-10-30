
-- SAE Egg Finder Demo
-- For your own Roblox Studio game

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local eggs = {
    {name = "Dragon Egg", value = 500},
    {name = "Secret Egg", value = 250},
    {name = "Mythic Egg", value = 100},
}

table.sort(eggs, function(a, b)
    return a.value > b.value
end)

local gui = Instance.new("ScreenGui")
gui.Name = "SAEEggFinder"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(260, 220)
frame.Position = UDim2.new(0.5, -130, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
frame.Parent = gui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "SAE EGG FINDER"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Parent = frame

local list = Instance.new("TextLabel")
list.Position = UDim2.fromOffset(10, 45)
list.Size = UDim2.new(1, -20, 1, -55)
list.BackgroundTransparency = 1
list.TextColor3 = Color3.new(1, 1, 1)
list.TextXAlignment = Enum.TextXAlignment.Left
list.TextYAlignment = Enum.TextYAlignment.Top
list.TextSize = 16

local output = ""

for _, egg in ipairs(eggs) do
    output ..= egg.name .. " - " .. egg.value .. "M\n"
end

list.Text = output
list.Parent = frame

gui.Parent = player:WaitForChild("PlayerGui")

