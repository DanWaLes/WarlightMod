function Server_StartGame(game,standing)
print("Test");
	local playerGameData = Mod.PlayerGameData;
	local publicGameData = Mod.PublicGameData;
	publicGameData.War = {};
	publicGameData.CantDeclare = {};
	for _,pid in pairs(game.ServerGame.Game.PlayingPlayers) do
		if(pid.IsAI == false)then
			playerGameData[pid.ID] = {};
			playerGameData[pid.ID].TerritorySellOffers = {};
			playerGameData[pid.ID].Peaceoffers = {};
			playerGameData[pid.ID].AllyOffers = {};
			playerGameData[pid.ID].Allianzen = {};
			playerGameData[pid.ID].Nachrichten = {};
			playerGameData[pid.ID].NeueNachrichten = {};
			print("Test3");
		end
		publicGameData.War[pid.ID] = {};
		publicGameData.CantDeclare[pid.ID] = {};
	end
	Mod.PlayerGameData = playerGameData;
	Mod.PublicGameData = publicGameData;
end
