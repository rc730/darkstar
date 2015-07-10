---------------------------------------------------------------------------------------------------
-- func: Xpcamp8
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to Wajoam Woodlands.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-241, -16, 78, 255, 51);  -- replace these with the numbers for where I want this to go
end;

