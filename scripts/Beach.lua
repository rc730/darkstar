---------------------------------------------------------------------------------------------------
-- func: Beach
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Mog Garden Beach.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    player:setPos(17, 1 -19, 136, 280);  -- replace these with the numbers for where I want this to go
end;