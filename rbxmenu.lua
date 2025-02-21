local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:FindFirstChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.Parent = gui

local secretLabel = Instance.new("TextLabel")
secretLabel.Text = "Select a Roblox Secret:"
secretLabel.Size = UDim2.new(1, 0, 0, 30)
secretLabel.Parent = frame

local secretDropdown = Instance.new("TextButton")
secretDropdown.Text = "--Choose a Secret--"
secretDropdown.Size = UDim2.new(1, 0, 0, 30)
secretDropdown.Position = UDim2.new(0, 0, 0, 30)
secretDropdown.Parent = frame

local secrets = {"Unlimited Robux", "God Mode", "Fly Mode"}

local function activateSecret()
    if secretDropdown.Text ~= "--Choose a Secret--" then
        print("Activated: " .. secretDropdown.Text)
    end
end

local activateButton = Instance.new("TextButton")
activateButton.Text = "OK"
activateButton.Size = UDim2.new(1, 0, 0, 30)
activateButton.Position = UDim2.new(0, 0, 0, 60)
activateButton.Parent = frame
activateButton.MouseButton1Click:Connect(activateSecret)

local robuxLabel = Instance.new("TextLabel")
robuxLabel.Text = "Select Robux Amount:"
robuxLabel.Size = UDim2.new(1, 0, 0, 30)
robuxLabel.Position = UDim2.new(0, 0, 0, 90)
robuxLabel.Parent = frame

local robuxDropdown = Instance.new("TextButton")
robuxDropdown.Text = "--Choose Amount--"
robuxDropdown.Size = UDim2.new(1, 0, 0, 30)
robuxDropdown.Position = UDim2.new(0, 0, 0, 120)
robuxDropdown.Parent = frame

local robuxAmounts = {"1000", "5000", "10000"}

local function generateRobux()
    if robuxDropdown.Text ~= "--Choose Amount--" then
        local code = "RBX-" .. math.random(100000, 999999) .. "-" .. math.random(100000, 999999)
        print("Generated Code: " .. code)
    end
end

local generateButton = Instance.new("TextButton")
generateButton.Text = "Generate"
generateButton.Size = UDim2.new(1, 0, 0, 30)
generateButton.Position = UDim2.new(0, 0, 0, 150)
generateButton.Parent = frame
generateButton.MouseButton1Click:Connect(generateRobux)

local exitNoSaveButton = Instance.new("TextButton")
exitNoSaveButton.Text = "Exit Menu (No Save Mode)"
exitNoSaveButton.Size = UDim2.new(1, 0, 0, 30)
exitNoSaveButton.Position = UDim2.new(0, 0, 0, 180)
exitNoSaveButton.Parent = frame
exitNoSaveButton.MouseButton1Click:Connect(function()
    print("Ok I Will Be Here And All The Files Will Be Saved OK?")
    gui:Destroy()
end)

local exitSaveButton = Instance.new("TextButton")
exitSaveButton.Text = "Exit Menu (With Save Mode)"
exitSaveButton.Size = UDim2.new(1, 0, 0, 30)
exitSaveButton.Position = UDim2.new(0, 0, 0, 210)
exitSaveButton.Parent = frame
exitSaveButton.MouseButton1Click:Connect(function()
    print("Saved Files With Success!")
    gui:Destroy()
end)
