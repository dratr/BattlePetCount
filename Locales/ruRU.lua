
--[[

Translations are maintained at http://wow.curseforge.com/projects/battlepetcount/localization/

Please update http://wow.curseforge.com/projects/battlepetcount/localization/ruRU/
instead of modifying this file.

--]]

local L = LibStub("AceLocale-3.0"):NewLocale("BattlePetCount", "ruRU")
if not L then return end

--

-- L["EXPLAIN_BATTLE_HINT_DRAG"] = ""
L["OPT_BATTLE_BORDER"] = "\208\152\208\183\208\188\208\181\208\189\209\143\209\130\209\140 \209\134\208\178\208\181\209\130\208\176 \208\186\209\128\208\176\208\181\208\178 \208\177\208\190\208\181\208\178\209\139\209\133 \208\191\208\184\209\130\208\190\208\178\209\134\208\181\208\178" -- Needs review
L["OPT_BATTLE_BORDER_ICON"] = "\208\159\208\190\208\186\208\176\208\183\209\139\208\178\208\176\209\130\209\140 \208\184\208\186\208\190\208\189\208\186\209\131 \208\189\208\176 \208\186\209\128\208\176\209\143\209\133 \208\177\208\190\208\181\208\178\209\139\209\133 \208\177\208\184\209\130\208\190\208\188\209\134\208\181\208\178" -- Needs review
L["OPT_BATTLE_HINT_BOX"] = "\208\159\208\190\208\186\208\176\208\183\209\139\208\178\208\176\209\130\209\140 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131 \208\178\208\190\208\183\208\187\208\181 \208\191\208\190\208\187\208\190\209\129\209\139 \208\183\208\180\208\190\209\128\208\190\208\178\209\140\209\143" -- Needs review
-- L["OPT_BATTLE_HINT_RESET"] = ""
L["OPT_BATTLE_TIP"] = "\208\152\208\183\208\188\208\181\208\189\209\143\209\130\209\140 \208\177\208\190\208\181\208\178\209\131\209\142 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131 " -- Needs review
L["OPT_CAGE_TIP"] = "\208\152\208\183\208\188\208\181\208\189\209\143\209\130\209\140 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131 \208\180\208\187\209\143 \208\191\208\184\209\130\208\190\208\188\209\134\208\181\208\178 \208\178 \208\186\208\187\208\181\209\130\208\186\208\181" -- Needs review
L["OPT_CREATURE_TIP"] = "\208\152\208\183\208\188\208\181\208\189\209\143\209\130\209\140 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131 \209\129\209\131\209\137\208\181\209\129\209\130\208\178" -- Needs review
L["OPT_HEADER_BATTLE"] = "\208\145\208\184\209\130\208\178\208\176" -- Needs review
L["OPT_HEADER_ITEMS"] = "\208\159\209\128\208\181\208\180\208\188\208\181\209\130\209\139" -- Needs review
L["OPT_HEADER_OTHER"] = "\208\159\209\128\208\190\209\135\208\181\208\181" -- Needs review
L["OPT_HEADER_STATS"] = "\208\165\208\176\209\128-\208\186\208\184" -- Needs review
L["OPT_HEADER_WORLD"] = "\208\156\208\184\209\128" -- Needs review
L["OPT_ITEM_TIP"] = "\208\152\208\183\208\188\208\181\208\189\209\143\209\130\209\140 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131 \208\184\208\183\209\131\209\135\208\181\208\189\208\184\209\143 \208\191\209\128\208\181\208\180\208\188\208\181\209\130\208\176" -- Needs review
L["OPT_ITEM_TIP_ALL"] = "\208\159\208\190\208\180\209\129\208\186\208\176\208\183\208\186\208\176 \208\191\209\128\208\181\208\180\208\188\208\181\209\130\208\190\208\178 \209\130\208\176\208\186\208\182\208\181 \208\180\208\187\209\143 \208\189\208\181 \208\177\208\190\208\181\208\178\209\139\209\133 \208\191\208\184\209\130\208\190\208\188\209\134\208\181\208\178" -- Needs review
L["OPT_MINIMAP_TIP"] = "\208\152\208\183\208\188\208\181\208\189\209\143\209\130\209\140 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131 \208\188\208\184\208\189\208\184\208\186\208\176\209\128\209\130\209\139" -- Needs review
L["OPT_PREFER_NAMES_OVER_QUALITY"] = "\208\159\208\190\208\186\208\176\208\183\209\139\208\178\208\176\209\130\209\140 \208\184\208\188\208\181\208\189\208\176 \208\191\208\184\209\130\208\190\208\188\209\134\208\181\208\178" -- Needs review
L["OPT_USE_BREEDID_ADDON"] = "\208\159\208\190\208\186\208\176\208\183\209\139\208\178\208\176\209\130\209\140 BreedID (\208\162\209\128\208\181\208\177\209\131\208\181\209\130\209\129\209\143 Battle Pet BreedID)" -- Needs review
L["OPT_USE_OLDER_TEXT"] = "\208\152\209\129\208\191\208\190\208\187\209\140\208\183\208\190\208\178\208\176\209\130\209\140 \209\129\209\130\208\176\208\189\208\180\208\176\209\128\209\130\208\189\209\139\208\185 \209\129\209\130\208\184\208\187\209\140 \209\130\208\181\208\186\209\129\209\130\208\176" -- Needs review
L["OPT_USE_SUB_TIP"] = "\208\152\209\129\208\191\208\190\208\187\209\140\208\183\208\190\208\178\208\176\209\130\209\140 \208\180\208\190\208\191\208\190\208\187\208\189\208\184\209\130\208\181\208\187\209\140\208\189\209\131\209\142 \208\191\208\190\208\180\209\129\208\186\208\176\208\183\208\186\209\131" -- Needs review
L["OWNED"] = "\208\163\208\182\208\181 \208\181\209\129\209\130\209\140"
L["UNOWNED"] = "\208\149\209\137\208\181 \208\189\208\181\209\130"
L["UPGRADE"] = "\208\163\208\187\209\131\209\135\209\136\208\181\208\189\208\184\208\181" -- Needs review
L["YOU_DONT_OWN"] = "\208\163 \208\178\208\176\209\129 \208\189\208\181\209\130 \209\141\209\130\208\190\208\179\208\190 \208\191\208\184\209\130\208\190\208\188\209\134\208\176."
L["YOU_OWN_COLON"] = "\208\163 \208\178\208\176\209\129 \209\131\208\182\208\181 \208\181\209\129\209\130\209\140:"
