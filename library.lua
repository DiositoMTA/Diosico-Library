
local DiosicoLibrary = {}

function DiosicoLibrary:CreateWindow(title)
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local TabHolder = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Frame.Position = UDim2.new(0.3, 0, 0.2, 0)
    Frame.Size = UDim2.new(0, 500, 0, 300)

    UICorner.Parent = Frame

    Title.Parent = Frame
    Title.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Title.Size = UDim2.new(0, 500, 0, 30)
    Title.Font = Enum.Font.SourceSans
    Title.Text = title or "Diosico UI"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 24

    TabHolder.Parent = Frame
    TabHolder.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
    TabHolder.Position = UDim2.new(0, 0, 0.1, 0)
    TabHolder.Size = UDim2.new(0, 120, 0, 270)

    UIListLayout.Parent = TabHolder
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    local Tabs = {}

    function DiosicoLibrary:CreateTab(tabName)
        local TabButton = Instance.new("TextButton")
        local TabFrame = Instance.new("Frame")
        local UICorner2 = Instance.new("UICorner")

        TabButton.Parent = TabHolder
        TabButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
        TabButton.Size = UDim2.new(0, 120, 0, 40)
        TabButton.Font = Enum.Font.SourceSans
        TabButton.Text = tabName
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TabButton.TextSize = 20

        TabFrame.Name = tabName .. "Tab"
        TabFrame.Parent = Frame
        TabFrame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
        TabFrame.Position = UDim2.new(0.25, 0, 0.1, 0)
        TabFrame.Size = UDim2.new(0, 370, 0, 270)
        TabFrame.Visible = false

        UICorner2.Parent = TabFrame

        TabButton.MouseButton1Click:Connect(function()
            for _, v in pairs(Tabs) do
                v.Visible = false
            end
            TabFrame.Visible = true
        end)

        table.insert(Tabs, TabFrame)

        return TabFrame
    end

    return DiosicoLibrary
end

local MyUI = DiosicoLibrary:CreateWindow("Baseplate")

local AimingTab = MyUI:CreateTab("Aiming")
local VisualTab = MyUI:CreateTab("Visual")
local VisualTab2 = MyUI:CreateTab("Visual2")
local VisualTab3 = MyUI:CreateTab("Visual3")

function AddButton(tabFrame, buttonText, callback)
    local Button = Instance.new("TextButton")
    Button.Parent = tabFrame
    Button.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
    Button.Size = UDim2.new(0, 150, 0, 40)
    Button.Font = Enum.Font.SourceSans
    Button.Text = buttonText
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 20
    Button.MouseButton1Click:Connect(callback)
end

AddButton(AimingTab, "Kill All", function()
    print("Kill All activado")
end)
