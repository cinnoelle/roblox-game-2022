game.Players.PlayerAdded:Connect(function(player)
	
	local playerFolder = Instance.new("Folder")
	playerFolder.Name = player.UserId
end)

