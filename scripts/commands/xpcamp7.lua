---------------------------------------------------------------------------------------------------
-- func: Xpcamp7
-- auth: Doc : With props to Teotwawki @ DSP
-- desc: Teleports a player to Western Altepa.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:setPos(-218, -9, 109, 180, 125);  -- replace these with the numbers for where I want this to go
end;

