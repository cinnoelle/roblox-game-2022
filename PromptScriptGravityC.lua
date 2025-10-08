local mps = game:GetService("MarketplaceService")

local plr = game.Players.LocalPlayer

script.Parent.TextButton.MouseButton1Click:Connect(function()
	local owns = mps:UserOwnsGamePassAsync(plr.UserId,script.Parent.GamepassID.Value)
		mps:PromptGamePassPurchase(plr,script.Parent.GamepassID.Value)
	if owns then
		script.Parent.TextButton.Text = "Gravity Coil Owned"
	end
end)