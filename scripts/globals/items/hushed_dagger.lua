-----------------------------------------
-- ID: 18008
-- Item: Hushed Dagger
-- Additional Effect: Silence
-- TODO: Enchantment: Ensilence
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local chance = 10;

    if (math.random(0,99) >= chance or applyResistanceAddEffect(player,target,ELE_WIND,0) <= 0.5) then
        return 0,0,0;
    else
        target:delStatusEffect(EFFECT_SILENCE);
        if (not target:hasStatusEffect(EFFECT_SILENCE)) then
            target:addStatusEffect(EFFECT_SILENCE, 1, 0, 60);
        end
        return SUBEFFECT_SILENCE, 160, EFFECT_SILENCE;
    end
end;

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
end;