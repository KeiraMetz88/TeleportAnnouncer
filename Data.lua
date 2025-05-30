local ADDON_NAME, TeleportAnnouncer = ...

local L = TeleportAnnouncer.Locale

TeleportAnnouncer.teleportSpells = {
    --地心之战
    [445417] = {keystone = true},
    [445440] = {keystone = true},
    [445416] = {keystone = true},
    [445441] = {keystone = true},
    [445414] = {keystone = true},
    [1216786] = {keystone = true},
    [445444] = {keystone = true},
    [445443] = {keystone = true},
    [445269] = {keystone = true},

    --巨龙时代
    [393273] = {keystone = true},
    [393279] = {keystone = true},
    [393267] = {keystone = true},
    [393283] = {keystone = true},
    [393276] = {keystone = true},
    [393262] = {keystone = true},
    [393256] = {keystone = true},
    [393222] = {keystone = true},
    [424197] = {keystone = true},

    --暗影国度
    [354468] = {keystone = true},
    [354465] = {keystone = true},
    [354464] = {keystone = true},
    [354462] = {keystone = true},
    [354463] = {keystone = true},
    [354469] = {keystone = true},
    [354466] = {keystone = true},
    [354467] = {keystone = true},
    [367416] = {keystone = true},

    --争霸艾泽拉斯
    [424187] = {keystone = true},
    [410071] = {keystone = true},
    [373274] = {keystone = true},
    [467555] = {keystone = true},
    [467553] = {keystone = true},
    [464256] = {keystone = true},
    [445418] = {keystone = true},
    [410074] = {keystone = true},
    [424167] = {keystone = true},

    --军团再临
    [424153] = {keystone = true},
    [393766] = {keystone = true},
    [424163] = {keystone = true},
    [393764] = {keystone = true},
    [373262] = {keystone = true},
    [410078] = {keystone = true},

    --德拉诺之王
    [159897] = {keystone = true},
    [159895] = {keystone = true},
    [159901] = {keystone = true},
    [159900] = {keystone = true},
    [159896] = {keystone = true},
    [159899] = {keystone = true},
    [159898] = {keystone = true},
    [159902] = {keystone = true},

    --熊猫人之谜
    [131225] = {keystone = true},
    [131222] = {keystone = true},
    [131232] = {keystone = true},
    [131231] = {keystone = true},
    [131229] = {keystone = true},
    [131228] = {keystone = true},
    [131206] = {keystone = true},
    [131205] = {keystone = true},
    [131204] = {keystone = true},

    --大地的裂变
    [445424] = {keystone = true},
    [424142] = {keystone = true},
    [410080] = {keystone = true},

    --团本传送
    [373190] = {},
    [373191] = {},
    [373192] = {},
    [432254] = {},
    [432257] = {},
    [432258] = {},
    [1226482] = {},

    --道具
    [396591] = {item = 202046}, --始祖龟幸运符
    [189838] = {item = 128353}, --海军上将的罗盘
    [253937] = {}, --飞行管理员的哨子 / G.E.A.R.追踪道标
    [171253] = {item = 110560, heartstone = true}, --要塞炉石
    [222695] = {item = 140192, heartstone = true}, --达拉然炉石
    [325624] = {}, --位移符文
    [49844] = {item = 37863}, --烈酒的遥控器
    [254667] = {item = 153226}, --观察者之地共鸣器
    [346170] = {item = 184503}, --侍神者的袖珍传送门：炽蓝仙野
    [346171] = {item = 184502}, --侍神者的袖珍传送门：玛卓克萨斯
    [346173] = {item = 184501}, --侍神者的袖珍传送门：雷文德斯
    [346168] = {item = 184504}, --侍神者的袖珍传送门：奥利波斯
    [346167] = {item = 184500}, --侍神者的袖珍传送门：晋升堡垒
    [176766] = {item = 119183}, --风险召唤卷轴
    [193669] = {}, --空间漂移新手指南
    [225436] = {item = 141016}, --城镇传送卷轴：法罗纳尔
    [223805] = {}, --空间漂移能手指南
    [245173] = {item = 151016}, --开裂的死亡之颅
    [291981] = {item = 167075}, --超级安全传送器：麦卡贡
    [390783] = {item = 200613}, --艾拉格风石碎片
    [335671] = {item = 181163}, --传送卷轴：伤逝剧场
    [71436] = {item = 50287}, --海湾渔靴
    [82674] = {item = 64457}, --阿古斯的最后一件圣物
    [80256] = {item = 58487}, --深岩之洲药水
    [175604] = {}, --刀塔圣物
    [175608] = {}, --卡拉波圣物
    [140295] = {item = 95567}, --肯瑞托信标（联盟）
    [140300] = {item = 95568}, --夺日者信标（部落）

    --装备
    [54406] = {item = 44935}, --肯瑞托戒指
    [139432] = {item = 144392}, --搏击俱乐部戒指（部落）
    [139437] = {item = 144391}, --搏击俱乐部戒指（联盟）
    [196079] = {item = 169298}, --奥山徽章（部落）
    [196080] = {item = 169297}, --奥山徽章（联盟）
    [28148] = {item = 22589}, --埃提耶什，守护者的传说之杖
    [145430] = {}, --迷时神器（法术足够“风味”了，所以没加物品）
    [231054] = {item = 142469}, --魔导大师的紫罗兰印戒
    [376300] = {item = 193000}, --缚环沙漏
    [41234] = {item = 32757}, --卡拉波神圣勋章
    [89597] = {item = 63379}, --巴拉丁典狱官战袍（联盟）
    [89598] = {item = 63378}, --地狱咆哮近卫军战袍（部落）
    [1221356] = {item = 63353}, --协作披风（部落）
    [1221359] = {item = 63352}, --协作披风（联盟）
    [1221357] = {item = 63207}, --协和披风（部落）
    [1221360] = {item = 63206}, --协和披风（联盟）
    [89158] = {item = 65274}, --协同披风（部落）
    [89157] = {item = 65360}, --协同披风（联盟）
    [66238] = {item = 46874}, --银色北伐军战袍
    [289284] = {item = 166560}, --船长的指挥玺戒（联盟）
    [289283] = {item = 166559}, --指挥官的战斗玺戒（部落）

    --虫洞
    [23442] = {item = 18984}, --空间撕裂器 - 永望镇
    [23453] = {}, --安全传送器：加基森
    [36890] = {item = 30542}, --空间撕裂器 - 52区
    [36941] = {item = 30544}, --超级安全传送器：托什雷的基地
    [67833] = {}, --虫洞发生器：诺森德
    [126755] = {}, --虫洞发生器：潘达利亚
    [163830] = {}, --虫洞离心机
    [250796] = {}, --虫洞发生器：阿古斯
    [299083] = {}, --虫洞发生器：库尔提拉斯
    [299084] = {}, --虫洞发生器：赞达拉
    [324031] = {}, --虫洞发生器：暗影界
    [386379] = {}, --龙洞发生器：巨龙群岛
    [448126] = {}, --虫洞发生器：卡兹阿加

    --法师
    [446540] = {}, --传送：多恩诺嘉尔
    [395277] = {}, --传送：瓦德拉肯
    [344587] = {}, --传送：奥利波斯
    [120145] = {}, --远古传送：达拉然
    [32271] = {}, --传送：埃索达
    [3567] = {}, --传送：奥格瑞玛
    [3561] = {}, --传送：暴风城
    [53140] = {}, --传送：达拉然 - 诺森德
    [3565] = {}, --传送：达纳苏斯
    [3566] = {}, --传送：雷霆崖
    [49359] = {}, --传送：塞拉摩
    [35715] = {}, --传送：沙塔斯
    [33690] = {}, --传送：沙塔斯
    [49358] = {}, --传送：斯通纳德
    [3562] = {}, --传送：铁炉堡
    [88342] = {}, --传送：托尔巴拉德
    [88344] = {}, --传送：托尔巴拉德
    [32272] = {}, --传送：银月城
    [3563] = {}, --传送：幽暗城
    [281403] = {}, --传送：伯拉勒斯
    [224869] = {}, --传送：达拉然 - 破碎群岛
    [193759] = {}, --传送：守护者圣殿
    [176248] = {}, --传送：暴风之盾
    [281404] = {}, --传送：达萨罗
    [132627] = {}, --传送：锦绣谷
    [132621] = {}, --传送：锦绣谷
    [176242] = {}, --传送：战争之矛

    --德鲁伊
    [18960] = {}, --传送：月光林地
    [193753] = {}, --梦境行者
    [147420] = {item = 136849}, --自然道标

    --黑铁矮人
    [265225] = {}, --钻探机
}

TeleportAnnouncer.teleportItems = {}
function TeleportAnnouncer:buildTeleportItems()
    table.wipe(TeleportAnnouncer.teleportItems)
    for inventorySlotID = INVSLOT_FIRST_EQUIPPED, INVSLOT_LAST_EQUIPPED do
        local itemID = GetInventoryItemID("player", inventorySlotID)
        if itemID then
            local item = Item:CreateFromItemID(itemID)
            item:ContinueOnItemLoad(function()
                local _, spellID = C_Item.GetItemSpell(itemID)
                if spellID then
                    TeleportAnnouncer.teleportItems[spellID] = GetInventoryItemLink("player", inventorySlotID)
                end
            end)
        end
    end
end

