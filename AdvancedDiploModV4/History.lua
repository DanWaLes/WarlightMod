function ShowHistory(datentable,game,ende)
	local daten = "This history gets written into the history of the next turn:\n";
	for _,data in pairs(datentable)do
		daten = daten .. getname(data.By,game) .. ":".. data.Text .. "\n";
	end
	if(ende == "" or ende == "showmessage")then
		if(daten ~= "This history gets written into the history of the next turn:\n")then
			--if(lastmessage == nil or lastmessage ~= daten or datentable == Mod.PlayerGameData.Nachrichten)then
				--lastmessage = daten;
			
				UI.Alert(daten);
			--end
		else
			UI.Alert("There is currently no history");
		end
	else
		daten = daten .. ende;
		if(daten ~= "This history gets written into the history of the next turn:\n")then
			--if(lastmessage == nil or lastmessage ~= daten or datentable == Mod.PlayerGameData.Nachrichten)then
				--lastmessage = daten;
				UI.Alert(daten);
			--end
		end
	end
end
function ShowAllHistory(game,ende)
	daten = "This history gets written into the history of the next turn:\n";
	datentable = Mod.PublicGameData.History;
	for _,data in pairs(datentable)do
		daten = daten .. getname(data.By,game) .. ":".. data.Text .. "\n";
	end
	datentable = Mod.PlayerGameData.PrivateHistory;
	for _,data in pairs(datentable)do
		daten = daten .. getname(data.By,game) .. ":".. data.Text .. "\n";
	end
	if(ende == "")then
		if(daten ~= "This history gets written into the history of the next turn:\n")then
			--if(lastmessage == nil or lastmessage ~= daten or datentable == Mod.PlayerGameData.Nachrichten)then
				--lastmessage = daten;
				if(lastnachricht ~= daten)then
					print(daten);
					lastnachricht = daten;
					if(showedreturnmessage == nil or showedreturnmessage == true)then
						UI.Alert(daten);
					else
						showedreturnmessage = true;
					end
				end
			--end
		end
	else
		daten = daten .. ende;
		if(daten ~= "This history gets written into the history of the next turn:\n")then
			--if(lastmessage == nil or lastmessage ~= daten or datentable == Mod.PlayerGameData.Nachrichten)then
				--lastmessage = daten;
				if(lastnachricht ~= daten)then
					print(daten);
					lastnachricht = daten;
					if(showedreturnmessage == nil or showedreturnmessage == true)then
						UI.Alert(daten);
					else
						showedreturnmessage = true;
					end
				end
			--end
		end
	end
end
function getname(playerid,game)
	print(playerid);
	return game.Game.Players[playerid].DisplayName(nil, false);
end
function tablelength(T)
	local count = 0;
	for _,elem in pairs(T)do
		count = count + 1;
	end
	return count;
end
