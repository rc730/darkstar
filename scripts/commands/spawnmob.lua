---------------------------------------------------------------------------------------------------
-- func: spawnmob
-- auth: <Unknown>
-- desc: Spawns a mob.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 4,
    parameters = "iii"
};

function onTrigger(player, mobId, despawntime, respawntime)
    SpawnMob( mobId, despawntime, respawntime );
end