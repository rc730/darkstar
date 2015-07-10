---------------------------------------------------------------------------------------------------
-- func: Xpcamp 6
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Eastern Ronfaure (S).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(542, -24, -263, 85, 81);  -- replace these with the numbers for where I want this to go
end;