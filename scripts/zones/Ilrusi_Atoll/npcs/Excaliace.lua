-----------------------------------
-- Area: Periqia
-- NPC:  Excaliace
-----------------------------------

require("scripts/zones/Periqia/IDs");
require("scripts/globals/pathfind");

local start = {-322,-16.5,380};

local startToChoice1 = {
    -320.349548, -16.046591, 379.684570
    -318.312317, -16.046591, 379.579865
    -316.286530, -16.046591, 379.472992
    -314.249298, -16.048323, 379.368164
    -312.212616, -16.050047, 379.263855
    -310.348267, -16.057688, 378.513367
    -309.100250, -16.063747, 376.912720
    -307.959656, -16.077335, 375.221832
    -306.816345, -16.077335, 373.532349
    -305.671082, -16.077335, 371.846008
    -304.516022, -16.077335, 370.168579
    -303.362549, -16.077335, 368.489624
    -302.209167, -16.087559, 366.807190
    -301.054626, -16.087715, 365.125336
    -299.976593, -16.119972, 363.402710
    -299.820740, -16.189123, 361.399994
    -300.012909, -16.189123, 359.369080
    -300.204407, -16.189123, 357.341705
    -300.397125, -16.189123, 355.314880
    -300.588409, -16.189123, 353.283936
    -300.780060, -16.189123, 351.253296
    -300.971313, -16.191444, 349.222321
    -301.163574, -16.214754, 347.192749
    -301.389923, -16.229296, 345.167511
    -302.813599, -16.249445, 343.574554
    -304.622406, -16.276562, 342.632568
    -306.459869, -16.276562, 341.757172
    -308.455261, -16.276562, 341.393158
    -310.489380, -16.276562, 341.389252
    -312.521088, -16.279837, 341.571747
    -314.551819, -16.298687, 341.754822
    -316.585144, -15.753593, 341.876556
    -318.621338, -15.789236, 341.765198
    -320.658966, -15.779417, 341.662872
    -322.697296, -15.765886, 341.574463
    -324.727234, -15.980421, 341.479340
    -326.660187, -16.012735, 342.099487
    -328.550476, -15.933064, 342.860687
    -330.435150, -15.771011, 343.625427
    -332.294006, -15.696083, 344.450684
    -333.912903, -16.043205, 345.705078
    -335.720062, -15.788860, 346.616364
    -337.668945, -15.706074, 347.100769
    -339.570679, -15.741604, 346.444336
    -340.824524, -15.691669, 344.865021
    -341.839478, -15.428291, 343.124268
    -342.645996, -15.079435, 341.120239
    -342.902252, -15.113903, 339.113068
    -342.625366, -15.397438, 337.113739
    -342.355469, -15.772522, 335.126404
    -341.725372, -16.081879, 333.186157
    -341.358307, -16.052465, 331.183319
    -340.988190, -15.890514, 329.183777
    -340.739380, -15.852081, 327.166229
    -340.652344, -15.829269, 325.153931
    -340.602631, -15.811451, 323.125397
    -340.650421, -15.682171, 321.093201
    -340.440063, -15.661972, 318.978729
    -340.534454, -15.702602, 316.816895
    -340.532501, -15.702147, 314.776947
    -340.536591, -15.697933, 312.737244
    -340.542572, -15.670002, 310.697632
    -340.545624, -15.678772, 308.657776
    -340.554047, -15.631170, 306.619476
    -340.412598, -15.624416, 304.459137
    -340.379303, -15.661182, 302.420258
};

function onSpawn(npc)
    npc:initNpcAi();
	npc:pathThrough(start, PATHFLAG_REPEAT);
end;

function onPath(npc)

    local instance = npc:getInstance();
    local progress = instance:getProgress();
    local chars = instance:getChars();


    if (progress == 0) then        
        for tid,player in pairs(chars) do
            if (npc:checkDistance(player) < 10) then
                instance:setProgress(1);
                npc:messageText(npc,Periqia.text.EXCALIACE_START);
                npc:pathThrough(startToChoice1);
            end
        end
    elseif (progress == 1) then
        local run = true;
        for tid,player in pairs(chars) do
            if (npc:checkDistance(player) < 10) then
                run = false;
            end
        end
        
        if (run) then
            npc:messageText(npc,Periqia.text.EXCALIACE_RUN);
        end
    end

	-- go back and forth the set path
	-- pathfind.patrol(npc, path);

end;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option,npc)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;