-- Load Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "Voting Menu",
    LoadingTitle = "Loading Voting Menu...",
    LoadingSubtitle = "Rayfield UI",
    ConfigurationSaving = {
        Enabled = false
    },
    Discord = { Enabled = false },
    KeySystem = false
})

-- Create Tab
local Tab = Window:CreateTab("Vote", 4483362458)

-- Remote reference
local VotedRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Voted")

-- Buttons
Tab:CreateButton({
    Name = "Eggman",
    Callback = function()
        VotedRemote:FireServer("Eggman")
    end
})

Tab:CreateButton({
    Name = "Sonic",
    Callback = function()
        VotedRemote:FireServer("Sonic")
    end
})

Tab:CreateButton({
    Name = "Tails",
    Callback = function()
        VotedRemote:FireServer("Tails")
    end
})

-- Custom Resize Handle
local screenGui = Instance.new("ScreenGui", game.CoreGui)
local resizeHandle = Instance.new("Frame", screenGui)
resizeHandle.Size = UDim2.new(0, 20, 0, 20)
resizeHandle.Position = UDim2.new(1, -25, 1, -25)
resizeHandle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
resizeHandle.Active = true
resizeHandle.Draggable = true

-- Resizing logic
local UIS = game:GetService("UserInputService")
local resizing = false

resizeHandle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        resizing = true
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        resizing = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if resizing and input.UserInputType == Enum.UserInputType.MouseMovement then
        -- Here you would hook into the Rayfield main frame and adjust size
        -- Example:
        -- Rayfield.MainFrame.Size = UDim2.new(0, input.Position.X, 0, input.Position.Y)
    end
end)
