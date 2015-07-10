---------------------------------------------------------------------------------------------------
-- func: Xpcamp 8
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the the Boyahda Tree.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(409, 6, -59, 10, 153);  -- replace these with the numbers for where I want this to go
end;