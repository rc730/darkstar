---------------------------------------------------------------------------------------------------
-- func: Xpcamp4
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Garliage Citadel.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-358, -6, 339, 254, 200);  -- replace these with the numbers for where I want this to go
end;