---------------------------------------------------------------------------------------------------
-- func: Xpcamp11
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to Bhaflau Thickets.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(404, -15, -320, 237, 79);  -- replace these with the numbers for where I want this to go
end;

