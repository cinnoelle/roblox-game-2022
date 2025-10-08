local DataStoreService = game:GetService("DataStoreService")
local myDataStore = DataStoreService:GetDataStore("Rebirths")

game.Players.PlayerAdded:Connect(function(player)
	local data
	local success, errorMessage = pcall(function()
		data = myDataStore:GetAsync(player.UserId)
	end)

	if success then
		player.leaderstats.Rebirths.Value = data
	else
		warn(errorMessage)
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	local data
	local success, errorMessage = pcall(function()
		data = myDataStore:SetAsync(player.UserId, player.leaderstats.Rebirths.Value)
	end)

	if success then
		print("Data Saved")
	else
		warn(errorMessage)
	end
end)

game:BindToClose(function()
	for i, v in pairs(game.Players:GetChildren()) do
		v:Kick("Server Closed")
	end

	wait(2)
end)
