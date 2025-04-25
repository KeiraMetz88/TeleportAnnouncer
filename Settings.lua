local ADDON_NAME, ns = ...

function ns:prepareDBAndSettings()
    TeleportAnnouncerDB = (type(TeleportAnnouncerDB) == "table" and TeleportAnnouncerDB) or {}

    local LibBlzSettings = LibStub("LibBlzSettings-1.0")
    local CONTROL_TYPE = LibBlzSettings.CONTROL_TYPE
    local SETTING_TYPE = LibBlzSettings.SETTING_TYPE
    local settings = {
        name = "传送通报",
        settings = {
            {
                controlType = CONTROL_TYPE.DROPDOWN,
                settingType = SETTING_TYPE.ADDON_VARIABLE,
                name = "通报时机",
                tooltip = "设置通报的时机",
                key = "AnnounceTiming",
                default = 1,
                options = {
                    { "施法开始", "在开始施法时候就通报" },
                    { "施法结束", "在施法完成时候才通报" },
                }
            },
            {
                controlType = CONTROL_TYPE.CHECKBOX,
                settingType = SETTING_TYPE.ADDON_VARIABLE,
                name = "不通报物品名",
                tooltip = "使用法术名代替物品名",
                key = "DoNotShowItem",
                default = false
            },
            {
                controlType = CONTROL_TYPE.CHECKBOX,
                settingType = SETTING_TYPE.ADDON_VARIABLE,
                name = "仅通报大秘境传送门",
                tooltip = "仅通报大秘境传送门",
                key = "OnlyKeystone",
                default = false
            },
            {
                controlType = CONTROL_TYPE.CHECKBOX,
                settingType = SETTING_TYPE.ADDON_VARIABLE,
                name = "不通报炉石",
                tooltip = "如达拉然炉石、要塞炉石",
                key = "IgnoreHeartstone",
                default = false
            },
        }
    }
    local category, _ = LibBlzSettings:RegisterVerticalSettingsTable(ADDON_NAME, settings, TeleportAnnouncerDB, true)

    _G.SLASH_TELEPORTANNOUNCER1 = "/ta";
    _G.SlashCmdList["TELEPORTANNOUNCER"] = function()
        Settings.OpenToCategory(category:GetID())
    end
end

