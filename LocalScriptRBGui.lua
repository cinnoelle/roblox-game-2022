local player = game.Players.LocalPlayer
local rebirthButton = script.Parent.RebirthButton
local replicatedStorage = game:WaitForChild("ReplicatedStorage")

rebirthButton.MouseButton1Up:Connect(function()
	replicatedStorage.Rebirth:InvokeServer()
end)
