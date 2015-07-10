---------------------------------------------------------------------------------------------------
-- func: Xpcamp3
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Yuhtunga Jungle.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-239, 0, 478, 15, 123);  -- replace these with the numbers for where I want this to go
end;