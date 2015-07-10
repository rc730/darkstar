---------------------------------------------------------------------------------------------------
-- func: choco 70
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to the Chocobo Circuit.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-320, 0, -474, 65, 70);  -- replace these with the numbers for where I want this to go
end;