---------------------------------------------------------------------------------------------------
-- func: Xpcamp2
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to Qufim Island.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-252, -19, 301, 21, 126);  -- replace these with the numbers for where I want this to go
end;
