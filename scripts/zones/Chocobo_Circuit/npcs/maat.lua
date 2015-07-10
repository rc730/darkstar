-----------------------------------
-- Area: Maat's Pub
-- NPC:  Maat
-- Head Barkeep at Maat's Pub
-- @zone 70
-- @pos -320 0 -482
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
package.loaded["scripts/globals/settings"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/zones/Chocobo_circuit/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	local tradeCount = trade:getItemCount();
	if(player:getQuestStatus(JEUNO,IN_DEFIANT_CHALLENGE) == QUEST_ACCEPTED) then
		-- Trade Bomb Coal / Exoray Mold / Ancient Papyrus
		if(trade:hasItemQty(1090,1) and trade:hasItemQty(1089,1) and trade:hasItemQty(1088,1) and tradeCount == 3) then
			player:startEvent(0x0051); -- Finish Quest "In Defiant Challenge"
		end
	end

	if(player:getQuestStatus(JEUNO,SHATTERING_STARS) ~= QUEST_AVAILABLE and player:getMainLvl() >= 66 and player:getVar("maatsCap") < 1) then
		local mJob = player:getMainJob();
		if(trade:hasItemQty(1425 + mJob,1) and tradeCount == 1 and mJob <= 15) then
			player:startEvent(0x0040,mJob); -- Teleport to battlefield for "Shattering Stars"
		end
	end

end;
