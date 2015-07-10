---------------------------------------------------------------------------------------------------
-- func: Xpcamp9
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to Bhaflau Thickets.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-0, -23, 141, 77, 52);  -- replace these with the numbers for where I want this to go
end;
