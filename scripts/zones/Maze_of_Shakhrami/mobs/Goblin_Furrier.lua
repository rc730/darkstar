-----------------------------------
-- Area: Maze of Shakhrami
-- MOB:  Goblin Furrier
-----------------------------------

require("scripts/globals/groundsofvalor");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
   checkGoVregime(killer,mob,695,1);
end;
