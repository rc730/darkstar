---------------------------------------------------------------------------------------------------
-- func: AFPORT1
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Garliage Citadel.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-100, 0, 68, 61, 200);  -- replace these with the numbers for where I want this to go
end;