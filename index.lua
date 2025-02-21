local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:FindFirstChild("PlayerGui")

local image = Instance.new("ImageLabel")
image.Image = "rbx.png" -- Replace with actual image ID
image.Size = UDim2.new(0, 100, 0, 100)
image.Position = UDim2.new(0.5, -50, 0.5, -50)
image.BackgroundTransparency = 1
image.Parent = gui

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    image.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

image.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = image.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

image.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

image.MouseButton1Click:Connect(function()
    print("Opening rbxmenu.lua...") -- This should be replaced with the actual menu-opening logic
end)
