---------------------------------------------------------------------------------------------------
-- func: Xpcamp1
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Valkurm Dunes.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(136, -7, 94, 21, 103);  -- replace these with the numbers for where I want this to go
end;