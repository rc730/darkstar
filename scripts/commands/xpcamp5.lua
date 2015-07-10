---------------------------------------------------------------------------------------------------
-- func: Xpcamp5
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Crawler's Nest.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(380, -32, 4, 59, 197);  -- replace these with the numbers for where I want this to go
end;