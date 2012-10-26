
local addon_name, addon = ...

LibStub("AceAddon-3.0"):NewAddon(addon, addon_name)

local LPJ = LibStub("LibPetJournal-2.0")
local L = LibStub("AceLocale-3.0"):GetLocale("BattlePetCount")

local is5_1 = not not C_PetJournal.GetNumCollectedInfo

--
--
--

local defaults = {
    profile = {
        enableCageTip = true,
        enableBattleTip = true,
        enableMinimapTip = true,
        enableCreatureTip = true,
        enableItemTip = true,
        itemTipIncludesAll = true,
        enableBattleIndicator = true,
        enableBattleBorder = false,
        enableBattleBorderIcon = true,
    }
}

local options = {
    name = addon_name,
    handler = addon,
    type = 'group',
    get = function(info) return addon.db.profile[info[#info]] end,
    set = function(info,v) addon.db.profile[info[#info]] = v end,
    args = {
        sectionBattle = {
            type = 'group',
            name = L["OPT_HEADER_BATTLE"],
            inline = true,
            args = {
                enableBattleTip = {
                    type = "toggle",
                    name = L["OPT_BATTLE_TIP"],
                    width = "double",
                    order = 1,
                },
                enableBattleIndicator = {
                    type = "toggle",
                    name = L["OPT_BATTLE_HINT_BOX"],
                    width = "double",
                    order = 2,
                },
                enableBattleBorder = {
                    type = "toggle",
                    name = L["OPT_BATTLE_BORDER"],
                    width = "double",
                    order = 3,
                    hidden = is5_1
                },
                enableBattleBorderIcon = {
                    type = "toggle",
                    name = L["OPT_BATTLE_BORDER_ICON"],
                    width = "double",
                    order = 4
                }
            }
        },
        sectionWorld = {
            type = 'group',
            name = L["OPT_HEADER_WORLD"],
            inline = true,
            args = {
                enableCreatureTip = {
                    type = "toggle",
                    name = L["OPT_CREATURE_TIP"],
                    width = "double",
                    order = 1,
                },
                enableMinimapTip = {
                    type = "toggle",
                    name = L["OPT_MINIMAP_TIP"],
                    width = "double",
                    order = 2
                },
            }
        },
        sectionItem = {
            type = 'group',
            name = L["OPT_HEADER_ITEMS"],
            inline = true,
            args = {
                enableCageTip = {
                    type = "toggle",
                    name = L["OPT_CAGE_TIP"],
                    width = "double",
                    order = 1,
                },
                enableItemTip = {
                    type = "toggle",
                    name = L["OPT_ITEM_TIP"],
                    width = "double",
                    order = 10,
                },
                itemTipIncludesAll = {
                    type = "toggle",
                    name = L["OPT_ITEM_TIP_ALL"],
                    width = "double",
                    order = 11,
                },
            }
        }
    }
}

--
--
--

function addon:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("BattlePetCountDB", defaults, true)
    self.options = options
    
    LibStub("AceConfig-3.0"):RegisterOptionsTable(self.name, options)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(self.name, self.name, nil)
end

--
--
--

local MatchType = {}

function MatchType.speciesID(petID, matchID)
    return C_PetJournal.GetPetInfoByPetID(petID) == matchID
end

if is5_1 then
    function MatchType.creatureID(petID, matchID)
        local _, _, _, _, _, _, _, _, _, _, creatureID = C_PetJournal.GetPetInfoByPetID(petID)
        return creatureID == matchID
    end
else
    function MatchType.creatureID(petID, matchID)
        local _, _, _, _, _, _, _, _, _, creatureID = C_PetJournal.GetPetInfoByPetID(petID)
        return creatureID == matchID
    end
end

--
--
--

do
    local tmp = {}
    function addon:OwnedList(idtype, matchID)
        wipe(tmp)

        local idfunc = MatchType[idtype]
        assert(idfunc, "invalid idtype")

        for _,petID in LPJ:IteratePetIDs() do
            if idfunc(petID, matchID) then
                local _, _, level = C_PetJournal.GetPetInfoByPetID(petID)
                local _, _, _, _, quality = C_PetJournal.GetPetStats(petID)
                local name = _G["ITEM_QUALITY"..(quality-1).."_DESC"] or UNKNOWN

                tinsert(tmp, format("|cff%02x%02x%02x%s|r (L%d)",
                            ITEM_QUALITY_COLORS[quality-1].r*255,
                            ITEM_QUALITY_COLORS[quality-1].g*255,
                            ITEM_QUALITY_COLORS[quality-1].b*255,
                            name, tostring(level)))
            end
        end
        
        if #tmp > 0 then
            return table.concat(tmp, ", ")
        end
    end
end

function addon:OwnedListOrNot(idtype, matchID)
    local ownedlist = self:OwnedList(idtype, matchID)
    if ownedlist then
        return format("%s %s", L["YOU_OWN_COLON"], ownedlist)
    else
        return L["YOU_DONT_OWN"]
    end
end

do
    local tmp = {}
    function addon:ShortOwnedList(idtype, matchID)
        wipe(tmp)
        
        local idfunc = MatchType[idtype]
        assert(idfunc, "invalid idtype")

        for _,petid in LPJ:IteratePetIDs() do
            if idfunc(petID, matchID) then
                if sid == speciesID then
                    local _, _, level = C_PetJournal.GetPetInfoByPetID(petID)
                    local _, _, _, _, quality = C_PetJournal.GetPetStats(petID)
                    
                    tinsert(tmp, format("|cff%02x%02x%02xL%d|r",
                            ITEM_QUALITY_COLORS[quality-1].r*255,
                            ITEM_QUALITY_COLORS[quality-1].g*255,
                            ITEM_QUALITY_COLORS[quality-1].b*255,
                            level))
                end
            end
        end
        
        if #tmp > 0 then
            return format("%s: %s", L["OWNED"], table.concat(tmp, "/"))
        else
            return format("|cffee3333%s|r", L["UNOWNED"])
        end
    end
end

function addon:PlayersBest(speciesID)
    local maxquality = -1
    local maxlevel = -1
    for iv,petid in LPJ:IteratePetIDs() do
        local sid, _, level = C_PetJournal.GetPetInfoByPetID(petid)
        if sid == speciesID then
            local _, _, _, _, quality = C_PetJournal.GetPetStats(petid)
            if maxquality < quality then
                maxquality = quality
            end
            if maxlevel < level then
                maxlevel = level
            end
        end
    end
    
    if maxquality == -1 then
        return nil
    end
    return maxquality, maxlevel
end
