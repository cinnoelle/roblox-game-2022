local DataStoreService = game:GetService("DataStoreService")
local myDataStore = DataStoreService:GetDataStore("Stage")

game.Players.PlayerAdded:Connect(function(player)
	local data
	local success, errorMessage = pcall(function()
		data = myDataStore:GetAsync(player.UserId)
	end)

	if success then
		player.leaderstats.Stage.Value = data
	else
		warn(errorMessage)
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	local data
	local success, errorMessage = pcall(function()
		data = myDataStore:SetAsync(player.UserId, player.leaderstats.Stage.Value)
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
