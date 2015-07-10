---------------------------------------------------------------------------------------------------
-- func: speed
-- auth: <Unknown> 
-- desc: Sets the players movement speed.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "i"
};

function onTrigger(player, speed)
    player:speed( speed );
end