local ADDON_NAME, TeleportAnnouncer = ...

TeleportAnnouncer.Locale = {}
local L = TeleportAnnouncer.Locale

function TeleportAnnouncer:announceSpell(spellID, isSucceeded)
    local teleportData = TeleportAnnouncer.teleportSpells[spellID]
    if not teleportData then return end

    local onlyKeystone = TeleportAnnouncerDB and TeleportAnnouncerDB["OnlyKeystone"] or false
    if onlyKeystone and not teleportData.keystone then return end

    local ignoreHeartstone = TeleportAnnouncerDB and TeleportAnnouncerDB["IgnoreHeartstone"] or false
    if ignoreHeartstone and teleportData.heartstone then return end

    local announceTiming = TeleportAnnouncerDB and TeleportAnnouncerDB["AnnounceTiming"] or 1
    if announceTiming == 2 and not isSucceeded then return end

    local doNotShowItem = TeleportAnnouncerDB and TeleportAnnouncerDB["DoNotShowItem"] or false

    local messageTemplateUse = announceTiming == 1 and L["UsingAndHeadingTo"] or L["UsedAndArrivedAt"]
    local messageTemplateCast = announceTiming == 1 and L["CastingAndHeadingTo"] or L["CastAndArrivedAt"]
    if isSucceeded and announceTiming == 1 then
        local spellInfo = C_Spell.GetSpellInfo(spellID)
        if not spellInfo then return end
        if spellInfo.castTime ~= 0 then return end
        messageTemplateUse = L["UsedAndArrivedAt"]
        messageTemplateCast = L["CastAndArrivedAt"]
    end

    local message
    local destination = L[string.format("spell_%s", spellID)] or ""
    if not doNotShowItem then
        if TeleportAnnouncer.teleportItems[spellID] then
            message = string.format(messageTemplateUse, TeleportAnnouncer.teleportItems[spellID], destination)
        elseif teleportData.item then
            local _, itemLink = C_Item.GetItemInfo(teleportData.item)
            itemLink = itemLink or L["UnknownItem"]
            message = string.format(messageTemplateUse, itemLink, destination)
        end
    end
    if not message then
        local spellLink = C_Spell.GetSpellLink(spellID) or L["UnknownSpell"]
        message = string.format(messageTemplateCast, spellLink, destination)
    end
                
    if IsInGroup() or IsInRaid() then
        SendChatMessage(message, IsInGroup(LE_PARTY_CATEGORY_INSTANCE) and "INSTANCE_CHAT" or "PARTY")
    elseif false then
        print(message)
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
    elseif event == "UNIT_SPELLCAST_START" or event == "UNIT_SPELLCAST_SUCCEEDED" then
        local unitTarget, _, spellID = ...
        if unitTarget == "player" then
            TeleportAnnouncer:announceSpell(spellID, event == "UNIT_SPELLCAST_SUCCEEDED")
        end
    end
end)

