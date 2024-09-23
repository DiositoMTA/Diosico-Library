local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/DiositoMTA/Diosico-Library/refs/heads/main/library.lua'))()

local Window = Library:CreateWindow("Diosico UI", "v1.0.0")

local AimingTab = Window:CreateTab("Aiming")

local ButtonSection = AimingTab:CreateSection("Botones")

ButtonSection:CreateButton("Kill All", function()
    print("Kill All Triggered")
end)

ButtonSection:CreateButton("Kill", function()
    print("Kill Triggered")
end)

ButtonSection:CreateDropdown("Choose", {"Option 1", "Option 2", "Option 3"}, function(option)
    print("Option Selected: " .. option)
end)

ButtonSection:CreateSlider("Speed", 0, 100, 25, function(value)
    print("Speed set to: " .. value)
end)

ButtonSection:CreateToggle("Farm", false, function(state)
    print("Farm Toggled: " .. tostring(state))
end)

ButtonSection:CreateButton("Refresh Dropdown", function()
    print("Dropdown Refreshed")
end)

local VisualTab = Window:CreateTab("Visual")

local VisualSection = VisualTab:CreateSection("Visual Options")
VisualSection:CreateButton("ESP", function()
    print("ESP Activated")
end)

Window:Toggle(true)
