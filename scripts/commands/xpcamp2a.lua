---------------------------------------------------------------------------------------------------
-- func: Xpcamp2
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Qufim Island.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-50, -20, 78, 220, 126);  -- replace these with the numbers for where I want this to go
end;