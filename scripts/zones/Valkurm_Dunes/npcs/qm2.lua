-----------------------------------
-- Area: Valkurm Dunes
-- NPC:  qm2 (???)
-- Involved In Quest: Messenger from Beyond
-- !pos -716 -10 66 103
-----------------------------------
local ID = require("scripts/zones/Valkurm_Dunes/IDs");
require("scripts/globals/quests");

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if player:getQuestStatus(SANDORIA, dsp.quest.id.sandoria.MESSENGER_FROM_BEYOND) == QUEST_ACCEPTED
    and VanadielTOTD() == dsp.time.NIGHT
    and not player:hasItem(1096)
    and not GetMobByID(ID.mob.MARCHELUTE):isSpawned() then
        SpawnMob(ID.mob.MARCHELUTE):updateClaim(player);
    else
        player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
