local ADDON_NAME, TeleportAnnouncer = ...

TeleportAnnouncer.Locale = {}
local L = TeleportAnnouncer.Locale

local C_Spell_GetSpellLink = C_Spell.GetSpellLink
local C_Item_GetItemInfo = C_Item.GetItemInfo
local C_ChatInfo_SendChatMessage = C_ChatInfo.SendChatMessage
local IsInGroup, IsInRaid = IsInGroup, IsInRaid

local function getConfigByKey(key, default)
    if TeleportAnnouncerDB and TeleportAnnouncerDB[key] ~= nil then
        return TeleportAnnouncerDB[key]
    end
    return default
end

local function sendMessage(message)
    local channel = nil
    if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
        channel = "INSTANCE_CHAT"
    elseif IsInRaid(LE_PARTY_CATEGORY_HOME) then
        local announceChannel = getConfigByKey("AnnounceChannel", 1)
        channel = announceChannel == 1 and "RAID" or "PARTY"
    elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
        channel = "PARTY"
    end
    if channel then
        C_ChatInfo_SendChatMessage(message, channel)
        return true
    end
end

local handledCasts, lastAnnounceTimes = {}, {}
local ANNOUNCE_INTERVAL = 2
local CAST_HISTORY_SECONDS = 120

function TeleportAnnouncer:announceSpell(spellID, isSucceeded, castGUID)
    local teleportData = TeleportAnnouncer.teleportSpells[spellID]
    if not teleportData then return end

    local onlyKeystone = getConfigByKey("OnlyKeystone", false)
    if onlyKeystone and not teleportData.keystone then return end

    local ignoreHeartstone = getConfigByKey("IgnoreHeartstone", false)
    if ignoreHeartstone and teleportData.heartstone then return end

    local announceTiming = getConfigByKey("AnnounceTiming", 1)
    if announceTiming == 2 and not isSucceeded then return end

    local now = GetTime()
    for guid, timestamp in pairs(handledCasts) do
        if now - timestamp > CAST_HISTORY_SECONDS then
            handledCasts[guid] = nil
        end
    end
    if castGUID and handledCasts[castGUID] then return end
    -- Also remember throttled casts so their success event cannot announce later.
    if castGUID then handledCasts[castGUID] = now end
    if lastAnnounceTimes[spellID] and now - lastAnnounceTimes[spellID] < ANNOUNCE_INTERVAL then return end

    local doNotShowItem = getConfigByKey("DoNotShowItem", false)

    local messageTemplateUse = isSucceeded and L["UsedAndHeadingTo"] or L["UsingAndHeadingTo"]
    local messageTemplateCast = isSucceeded and L["CastAndHeadingTo"] or L["CastingAndHeadingTo"]

    local message
    local destination = L[string.format("spell_%s", spellID)] or ""
    if not doNotShowItem then
        if TeleportAnnouncer.teleportItems[spellID] then
            message = string.format(messageTemplateUse, TeleportAnnouncer.teleportItems[spellID], destination)
        elseif teleportData.item then
            local _, itemLink = C_Item_GetItemInfo(teleportData.item)
            if itemLink then
                message = string.format(messageTemplateUse, itemLink, destination)
            end
        end
    end
    if not message then
        local spellLink = C_Spell_GetSpellLink(spellID) or L["UnknownSpell"]
        message = string.format(messageTemplateCast, spellLink, destination)
    end
    if sendMessage(message) then
        lastAnnounceTimes[spellID] = now
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
frame:RegisterUnitEvent("UNIT_SPELLCAST_START", "player")
frame:RegisterUnitEvent("UNIT_SPELLCAST_SUCCEEDED", "player")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local addOnName = ...
        if addOnName == ADDON_NAME then
            TeleportAnnouncer:prepareDBAndSettings()
            self:UnregisterEvent("ADDON_LOADED")
        end
    elseif event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_EQUIPMENT_CHANGED" then
        TeleportAnnouncer:buildTeleportItems()
        if event == "PLAYER_ENTERING_WORLD" then
            self:UnregisterEvent("PLAYER_ENTERING_WORLD")
        end
    elseif event == "UNIT_SPELLCAST_START" or event == "UNIT_SPELLCAST_SUCCEEDED" then
        local unitTarget, castGUID, spellID = ...
        if unitTarget == "player" and castGUID then
            TeleportAnnouncer:announceSpell(spellID, event == "UNIT_SPELLCAST_SUCCEEDED", castGUID)
        end
    end
end)
