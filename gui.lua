-- Load Kavo UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Voting Menu", "DarkTheme")

-- Create Tab
local Tab = Window:NewTab("Vote")
local Section = Tab:NewSection("Choose Your Vote")

-- Remote reference
local VotedRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Voted")

-- Buttons
Section:NewButton("Eggman", "Vote for Eggman", function()
    VotedRemote:FireServer("Eggman")
end)

Section:NewButton("Sonic", "Vote for Sonic", function()
    VotedRemote:FireServer("Sonic")
end)

Section:NewButton("Tails", "Vote for Tails", function()
    VotedRemote:FireServer("Tails")
end)
