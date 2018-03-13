local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PlayerGui:SetTopbarTransparency(0)
 
local screen = Instance.new("ScreenGui")
screen.Parent = PlayerGui
 
local textLabel = Instance.new("TextLabel")
textLabel.Text = "Loading"
textLabel.Size = UDim2.new(1,0,1,0)
textLabel.FontSize = Enum.FontSize.Size14
textLabel.Parent = screen
 
script.Parent:RemoveDefaultLoadingScreen()
 
local count = 0
local start = tick()
while tick() - start < 6 do
	textLabel.Text = "Loading " .. string.rep(".",count)
	count = (count + 1) % 4
	wait(.3) 
end
 
screen.Parent = nil

-- Make sure to put this script in ReplicatedFirst
