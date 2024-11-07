local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local corner = Instance.new("UICorner")
local text = Instance.new("TextLabel")
local gradient = Instance.new("UIGradient")

gui.Name = "Watermark"
gui.Parent = game.CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false

frame.Parent = gui
frame.BackgroundColor3 = Color3.fromRGB(42, 42, 46)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.5, -700, 0.5, -450)
frame.Size = UDim2.new(0, 283, 0, 25)
frame.ZIndex = 10

corner.Parent = frame

local textProperties = {
    Name = "WatermarkText",
    Parent = frame,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Position = UDim2.new(0, 0, 0, 0),
    Size = UDim2.new(1, 0, 1, 0),
    Font = Enum.Font.Montserrat,
    Text = "euphoria - dsc.gg/euphoria-rbx",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 20,
    ZIndex = 20
}

for prop, value in pairs(textProperties) do
    text[prop] = value
end

gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(118, 9, 227)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(45, 20, 80)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(118, 9, 227))
}
gradient.Parent = text
gradient.Rotation = 0

local function animateGradient()
    while true do

        for i = 0, 1, 0.02 do
            gradient.Offset = Vector2.new(i, 0)
            wait(0.03)
        end

        for i = 1, 0, -0.02 do
            gradient.Offset = Vector2.new(i, 0)
            wait(0.03)
        end
    end
end

animateGradient()
