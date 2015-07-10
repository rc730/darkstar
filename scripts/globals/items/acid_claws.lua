-----------------------------------------
-- ID: 16430
-- Item: Acid Claws
-- Additional Effect: Weakens defense
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
        target:delStatusEffect(EFFECT_DEFENSE_BOOST);
        target:addStatusEffect(EFFECT_DEFENSE_DOWN, 12, 0, 60);
        return SUBEFFECT_DEFENSE_DOWN, 160, EFFECT_DEFENSE_DOWN;
    end
end;