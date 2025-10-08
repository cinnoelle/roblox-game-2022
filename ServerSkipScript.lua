local skipId = 1811281763

local mps = game:GetService("MarketplaceService")

mps.ProcessReceipt = function(info)
	local plrId = info.PlayerId
	local productId = info.ProductId
	
	local plr = game.Players:GetPlayerByUserId(plrId)
	
	if productId == skipId then
		plr.leaderstats.Stage.Value += 1
	end
	
	return Enum.ProductPurchaseDecision.PurchaseGranted
end