-----------------------------------
--	[Command name]: teleplayer
--	[Author      ]: Demolish
--	[Description ]: Teleports a player to a pos/zone of your choice
-----------------------------------

-----------------------------------
-- Action
-----------------------------------

function onTrigger(player,target,x,y,z,zone)
	pc = GetPlayerByName(target);
	
	if(zone == nil) then
		pc:setPos(-320, 0, -474, 61, 70);
	else
		pc:setPos(-320, 0, -474, 61, 70);
	end
	
end;