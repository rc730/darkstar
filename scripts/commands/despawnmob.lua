---------------------------------------------------------------------------------------------------
-- func: despawnmob
-- auth: <Unknown>
-- desc: Despawns the given mob.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "i"
};

function onTrigger(player, mobId)
    DespawnMob( mobId );
end