local skipId = 1811281763

local mps = game:GetService("MarketplaceService")

local maxStage = #game.Workspace.Checkpoints:GetChildren()

script.Parent.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.leaderstats.Stage.Value < maxStage then
		mps:PromptProductPurchase(game.Players.LocalPlayer,1811281763)
	end
end)

