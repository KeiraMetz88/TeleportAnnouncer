local ADDON_NAME, ns = ...

ns.teleportSpells = {
    --地心之战
    [445417] = {spell = "艾拉-卡拉，回响之城", keystone = true},
    [445440] = {spell = "燧酿酒庄", keystone = true},
    [445416] = {spell = "千丝之城", keystone = true},
    [445441] = {spell = "暗焰裂口", keystone = true},
    [445414] = {spell = "破晨号", keystone = true},
    [1216786] = {spell = "水闸行动", keystone = true},
    [445444] = {spell = "圣焰隐修院", keystone = true},
    [445443] = {spell = "驭雷栖巢", keystone = true},
    [445269] = {spell = "矶石宝库", keystone = true},

    --巨龙时代
    [393273] = {spell = "艾杰斯亚学院", keystone = true},
    [393279] = {spell = "碧蓝魔馆", keystone = true},
    [393267] = {spell = "蕨皮山谷", keystone = true},
    [393283] = {spell = "注能大厅", keystone = true},
    [393276] = {spell = "奈萨鲁斯", keystone = true},
    [393262] = {spell = "诺库德阻击战", keystone = true},
    [393256] = {spell = "红玉新生法池", keystone = true},
    [393222] = {spell = "奥达曼", keystone = true},
    [424197] = {spell = "永恒黎明", keystone = true},

    --暗影国度
    [354468] = {spell = "彼界", keystone = true},
    [354465] = {spell = "赎罪大厅", keystone = true},
    [354464] = {spell = "塞兹仙林", keystone = true},
    [354462] = {spell = "通灵战潮", keystone = true},
    [354463] = {spell = "凋魂之殇", keystone = true},
    [354469] = {spell = "赤红深渊", keystone = true},
    [354466] = {spell = "晋升高塔", keystone = true},
    [354467] = {spell = "伤逝剧场", keystone = true},
    [367416] = {spell = "塔扎维什，帷纱集市", keystone = true},

    --争霸艾泽拉斯
    [424187] = {spell = "阿塔达萨", keystone = true},
    [410071] = {spell = "自由镇", keystone = true},
    [373274] = {spell = "麦卡贡行动", keystone = true},
    [467555] = {spell = "暴富矿区", keystone = true},
    [467553] = {spell = "暴富矿区", keystone = true},
    [464256] = {spell = "围攻伯拉勒斯", keystone = true},
    [445418] = {spell = "伯拉勒斯", keystone = true},
    [410074] = {spell = "地渊孢林", keystone = true},
    [424167] = {spell = "维克雷斯庄园", keystone = true},

    --军团再临
    [424153] = {spell = "黑鸦堡垒", keystone = true},
    [393766] = {spell = "群星挺远", keystone = true},
    [424163] = {spell = "黑心林地", keystone = true},
    [393764] = {spell = "英灵殿", keystone = true},
    [373262] = {spell = "卡拉赞", keystone = true},
    [410078] = {spell = "奈萨里奥的巢穴", keystone = true},

    --德拉诺之王
    [159897] = {spell = "奥金顿", keystone = true},
    [159895] = {spell = "死亡矿井", keystone = true},
    [159901] = {spell = "永茂林地", keystone = true},
    [159900] = {spell = "恐轨车站", keystone = true},
    [159896] = {spell = "钢铁码头", keystone = true},
    [159899] = {spell = "影月墓地", keystone = true},
    [159898] = {spell = "通天峰", keystone = true},
    [159902] = {spell = "黑石塔上层", keystone = true},

    --熊猫人之谜
    [131225] = {spell = "残阳关", keystone = true},
    [131222] = {spell = "魔古山宫殿", keystone = true},
    [131232] = {spell = "通灵学院", keystone = true},
    [131231] = {spell = "血色大厅", keystone = true},
    [131229] = {spell = "血色修道院", keystone = true},
    [131228] = {spell = "砮皂寺", keystone = true},
    [131206] = {spell = "影踪禅院", keystone = true},
    [131205] = {spell = "风暴烈酒酿酒厂", keystone = true},
    [131204] = {spell = "青龙寺", keystone = true},

    --大地的裂变
    [445424] = {spell = "格瑞姆巴托", keystone = true},
    [424142] = {spell = "潮汐王座", keystone = true},
    [410080] = {spell = "旋云之巅", keystone = true},

    --团本传送
    [373190] = {spell = "纳斯利亚堡"},
    [373191] = {spell = "统御圣所"},
    [373192] = {spell = "初诞者圣墓"},
    [432254] = {spell = "化身巨龙牢窟"},
    [432257] = {spell = "亚贝鲁斯"},
    [432258] = {spell = "阿梅达希尔"},
    [1226482] = {spell = "安德麦"},

    --道具
    [396591] = {spell = "斯托颂的珍宝海岸", item = 202046}, --始祖龟幸运符
    [189838] = {spell = "要塞船坞", item = 128353}, --海军上将的罗盘
    [253937] = {spell = "最近的鸟点"}, --飞行管理员的哨子 / G.E.A.R.追踪道标
    [171253] = {spell = "要塞", item = 110560, heartstone = true}, --要塞炉石
    [222695] = {spell = "达拉然（破碎群岛）", item = 140192, heartstone = true}, --达拉然炉石
    [325624] = {spell = "威·娜莉的庇护所"}, --位移符文
    [49844] = {spell = "黑铁酒吧", item = 37863}, --烈酒的遥控器
    [254667] = {spell = "安托兰废土", item = 153226}, --观察者之地共鸣器
    [346170] = {spell = "炽蓝仙野", item = 184503}, --侍神者的袖珍传送门：炽蓝仙野
    [346171] = {spell = "玛卓克萨斯", item = 184502}, --侍神者的袖珍传送门：玛卓克萨斯
    [346173] = {spell = "雷文德斯", item = 184501}, --侍神者的袖珍传送门：雷文德斯
    [346168] = {spell = "奥利波斯", item = 184504}, --侍神者的袖珍传送门：奥利波斯
    [346167] = {spell = "晋升堡垒", item = 184500}, --侍神者的袖珍传送门：晋升堡垒
    [176766] = {spell = "阿什兰", item = 119183}, --风险召唤卷轴
    [193669] = {spell = "阿苏纳"}, --空间漂移新手指南
    [225436] = {spell = "阿苏纳", item = 141016}, --城镇传送卷轴：法罗纳尔
    [223805] = {spell = "破碎群岛的魔网结点"}, --空间漂移能手指南
    [245173] = {spell = "黑暗神殿", item = 151016}, --开裂的死亡之颅
    [291981] = {spell = "麦卡贡", item = 167075}, --超级安全传送器：麦卡贡
    [390783] = {spell = "欧恩哈拉平原", item = 200613}, --艾拉格风石碎片
    [335671] = {spell = "玛卓克萨斯", item = 181163}, --传送卷轴：伤逝剧场
    [71436] = {spell = "藏宝海湾", item = 50287}, --海湾渔靴
    [82674] = {spell = "“特别想去的地方”", item = 64457}, --阿古斯的最后一件圣物
    [80256] = {spell = "深岩之洲", item = 58487}, --深岩之洲药水
    [175604] = {spell = "霜火岭"}, --刀塔圣物
    [175608] = {spell = "影月谷"}, --卡拉波圣物
    [140295] = {spell = "雷神岛", item = 95567}, --肯瑞托信标（联盟）
    [140300] = {spell = "雷神岛", item = 95568}, --夺日者信标（部落）

    --装备
    [54406] = {spell = "达拉然（晶歌森林）", item = 44935}, --肯瑞托戒指
    [139432] = {spell = "搏击俱乐部", item = 144392}, --搏击俱乐部戒指（部落）
    [139437] = {spell = "搏击俱乐部", item = 144391}, --搏击俱乐部戒指（联盟）
    [196079] = {spell = "霜狼要塞", item = 169298}, --奥山徽章（部落）
    [196080] = {spell = "丹巴达尔", item = 169297}, --奥山徽章（联盟）
    [28148] = {spell = "卡拉赞", item = 22589}, --埃提耶什，守护者的传说之杖
    [145430] = {spell = "永恒岛"}, --迷时神器（法术足够“风味”了，所以没加物品）
    [231054] = {spell = "卡拉赞", item = 142469}, --魔导大师的紫罗兰印戒
    [376300] = {spell = "早已忘记的地方", item = 193000}, --缚环沙漏
    [41234] = {spell = "黑暗神殿", item = 32757}, --卡拉波神圣勋章
    [89597] = {spell = "托尔巴拉德", item = 63379}, --巴拉丁典狱官战袍（联盟）
    [89598] = {spell = "托尔巴拉德", item = 63378}, --地狱咆哮近卫军战袍（部落）
    [1221356] = {spell = "奥格瑞玛", item = 63353}, --协作披风（部落）
    [1221359] = {spell = "暴风城", item = 63352}, --协作披风（联盟）
    [1221357] = {spell = "奥格瑞玛", item = 63207}, --协和披风（部落）
    [1221360] = {spell = "暴风城", item = 63206}, --协和披风（联盟）
    [89158] = {spell = "奥格瑞玛", item = 65274}, --协同披风（部落）
    [89157] = {spell = "暴风城", item = 65360}, --协同披风（联盟）
    [66238] = {spell = "冰冠冰川", item = 46874}, --银色北伐军战袍
    [289284] = {spell = "伯拉勒斯", item = 166560}, --船长的指挥玺戒（联盟）
    [289283] = {spell = "达萨罗", item = 166559}, --指挥官的战斗玺戒（部落）

    --虫洞
    [23442] = {spell = "永望镇", item = 18984}, --空间撕裂器 - 永望镇
    [23453] = {spell = "加基森"}, --安全传送器：加基森
    [36890] = {spell = "虚空风暴-52区", item = 30542}, --空间撕裂器 - 52区
    [36941] = {spell = "刀锋山", item = 30544}, --超级安全传送器：托什雷的基地
    [67833] = {spell = "诺森德"}, --虫洞发生器：诺森德
    [126755] = {spell = "潘达利亚"}, --虫洞发生器：潘达利亚
    [163830] = {spell = "德拉诺"}, --虫洞离心机
    [250796] = {spell = "阿古斯"}, --虫洞发生器：阿古斯
    [299083] = {spell = "库尔提拉斯"}, --虫洞发生器：库尔提拉斯
    [299084] = {spell = "赞达拉"}, --虫洞发生器：赞达拉
    [324031] = {spell = "暗影界"}, --虫洞发生器：暗影界
    [386379] = {spell = "巨龙群岛"}, --龙洞发生器：巨龙群岛
    [448126] = {spell = "卡兹阿加"}, --虫洞发生器：卡兹阿加

    --法师
    [446540] = {spell = "多恩诺嘉尔"}, --传送：多恩诺嘉尔
    [395277] = {spell = "瓦德拉肯"}, --传送：瓦德拉肯
    [344587] = {spell = "奥利波斯"}, --传送：奥利波斯
    [120145] = {spell = "达拉然"}, --远古传送：达拉然
    [32271] = {spell = "埃索达"}, --传送：埃索达
    [3567] = {spell = "奥格瑞玛"}, --传送：奥格瑞玛
    [3561] = {spell = "暴风城"}, --传送：暴风城
    [53140] = {spell = "达拉然（晶歌森林）"}, --传送：达拉然 - 诺森德
    [3565] = {spell = "达纳苏斯"}, --传送：达纳苏斯
    [3566] = {spell = "雷霆崖"}, --传送：雷霆崖
    [49359] = {spell = "塞拉摩"}, --传送：塞拉摩
    [35715] = {spell = "沙塔斯"}, --传送：沙塔斯
    [33690] = {spell = "沙塔斯"}, --传送：沙塔斯
    [49358] = {spell = "斯通纳德"}, --传送：斯通纳德
    [3562] = {spell = "铁炉堡"}, --传送：铁炉堡
    [88342] = {spell = "托尔巴拉德"}, --传送：托尔巴拉德
    [88344] = {spell = "托尔巴拉德"}, --传送：托尔巴拉德
    [32272] = {spell = "银月城"}, --传送：银月城
    [3563] = {spell = "幽暗城"}, --传送：幽暗城
    [281403] = {spell = "伯拉勒斯"}, --传送：伯拉勒斯
    [224869] = {spell = "达拉然（破碎群岛）"}, --传送：达拉然 - 破碎群岛
    [193759] = {spell = "守护者圣殿"}, --传送：守护者圣殿
    [176248] = {spell = "阿什兰"}, --传送：暴风之盾
    [281404] = {spell = "达萨罗"}, --传送：达萨罗
    [132627] = {spell = "锦绣谷"}, --传送：锦绣谷
    [132621] = {spell = "锦绣谷"}, --传送：锦绣谷
    [176242] = {spell = "阿什兰"}, --传送：战争之矛

    --德鲁伊
    [18960] = {spell = "月光林地"}, --传送：月光林地
    [193753] = {spell = "翡翠梦境之路"}, --梦境行者
    [147420] = {spell = "随机一座森林", item = 136849}, --自然道标

    --黑铁矮人
    [265225] = {spell = "地下隧道"}, --钻探机
}

ns.teleportItems = {}
function ns:buildTeleportItems()
    table.wipe(ns.teleportItems)
    for inventorySlotID = INVSLOT_FIRST_EQUIPPED, INVSLOT_LAST_EQUIPPED do
        local itemID = GetInventoryItemID("player", inventorySlotID)
        if itemID then
            local item = Item:CreateFromItemID(itemID.itemID)
            item:ContinueOnItemLoad(function()
                local _, spellID = C_Item.GetItemSpell(itemID)
                if spellID then
                    ns.teleportItems[spellID] = GetInventoryItemLink("player", inventorySlotID)
                end
            end)
        end
    end
end

