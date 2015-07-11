-----------------------------------
-- Area: Empyreal Paradox
-- NPC:  Promathia (phase 2)
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Empyreal_Paradox/TextIDs");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_REGAIN, 50);
    mob:addMod(MOD_UFASTCAST,50);
end;

------------------------------------
-- onMagicCastingCheck 
------------------------------------
function onMagicCastingCheck(mob, target, spell)
    if math.random() > 0.75 then
        return 219;
    else
        return 218;
    end
end;


-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
    local bcnmAllies = mob:getBattlefield():getAllies();
    for i,v in pairs(bcnmAllies) do
        if (v:getName() == "Prishe") then
            if not v:getTarget() then
                v:entityAnimationPacket("prov");
                v:showText(v, PRISHE_TEXT + 1);
                v:setLocalVar("ready", bit.band(mob:getID(), 0xFFF));
            end
        else
            v:addEnmity(mob,0,1);
        end
    end
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target) 
    if (mob:AnimationSub() == 3 and not mob:hasStatusEffect(EFFECT_STUN)) then
        mob:AnimationSub(0);
        mob:stun(1500);
    elseif (mob:AnimationSub() == 2 and not mob:hasStatusEffect(EFFECT_MAGIC_SHIELD)) then
        mob:AnimationSub(0);
    elseif (mob:AnimationSub() == 1 and not mob:hasStatusEffect(EFFECT_PHYSICAL_SHIELD)) then
        mob:AnimationSub(0);
    end
    
    local bcnmAllies = mob:getBattlefield():getAllies();
    for i,v in pairs(bcnmAllies) do
        if not v:getTarget() then
            v:addEnmity(mob,0,1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;

function onSpellPrecast(mob, spell)
    if (spell:getID() == 218) then
        spell:setAoE(SPELLAOE_RADIAL);
        spell:setFlag(SPELLFLAG_HIT_ALL);
        spell:setRadius(30);
        spell:setAnimation(280);
        spell:setMPCost(1);
    elseif (spell:getID() == 219) then
        spell:setMPCost(1);
    end
end;

