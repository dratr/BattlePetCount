
local addon_name, addon = ...

--
-- Data: [itemid] => speciesid
--

addon.Item2Species = {
    [4401] = 39,
    [8485] = 40,
    [8486] = 41,
    [8487] = 43,
    [8488] = 45,
    [8489] = 46,
    [8490] = 44,
    [8491] = 42,
    [8492] = 50,
    [8494] = 49,
    [8495] = 51,
    [8496] = 47,
    [8497] = 72,
    [8498] = 59,
    [8499] = 58,
    [8500] = 68,
    [8501] = 67,
    [10360] = 75,
    [10361] = 77,
    [10392] = 78,
    [10393] = 55,
    [10394] = 70,
    [10398] = 83,
    [10709] = 70,
    [10822] = 56,
    [11023] = 52,
    [11026] = 65,
    [11027] = 64,
    [11110] = 84,
    [11474] = 87,
    [11825] = 85,
    [11826] = 86,
    [12264] = 89,
    [13582] = 94,
    [13583] = 92,
    [13584] = 93,
    [15996] = 95,
    [16450] = 90,
    [19054] = 758,
    [19055] = 757,
    [19450] = 106,
    [20371] = 107,
    [20651] = 1168,
    [20769] = 114,
    [21277] = 116,
    [21301] = 119,
    [21305] = 120,
    [21308] = 118,
    [21309] = 117,
    [22114] = 121,
    [22235] = 122,
    [22780] = 1073,
    [22781] = 124,
    [23002] = 125,
    [23007] = 126,
    [23015] = 127,
    [23083] = 128,
    [23713] = 130,
    [25535] = 131,
    [27445] = 132,
    [28738] = 125,
    [28740] = 127,
    [29363] = 136,
    [29364] = 137,
    [29901] = 138,
    [29902] = 139,
    [29903] = 140,
    [29904] = 141,
    [29953] = 142,
    [29956] = 143,
    [29957] = 144,
    [29958] = 145,
    [29960] = 146,
    [30360] = 111,
    [31760] = 149,
    [32233] = 153 ,
    [32465] = 155,
    [32498] = 155,
    [32588] = 156,
    [32616] = 158,
    [32617] = 157,
    [32622] = 159,
    [33154] = 162,
    [33816] = 163,
    [33818] = 164,
    [33993] = 165,
    [34425] = 191,
    [34478] = 167,
    [34492] = 168 ,
    [34493] = 169,
    [34518] = 170,
    [34519] = 171,
    [34535] = 57,
    [35349] = 173,
    [35350] = 174,
    [35504] = 175,
    [37297] = 179,
    [37298] = 180,
    [38050] = 183,
    [38628] = 186,
    [38658] = 187,
    [39286] = 188,
    [39656] = 189,
    [39896] = 194,
    [39898] = 197,
    [39899] = 195,
    [39973] = 190,
    [40653] = 160,
    [41133] = 192,
    [43698] = 193,
    [44721] = 196,
    [44723] = 198,
    [44738] = 199,
    [44794] = 200,
    [44810] = 201,
    [44819] = 202,
    [44822] = 74,
    [44841] = 203,
    [44965] = 204,
    [44970] = 205,
    [44971] = 206,
    [44973] = 207,
    [44974] = 209,
    [44980] = 210,
    [44982] = 213,
    [44983] = 211,
    [44984] = 212,
    [44998] = 214,
    [45002] = 215,
    [45022] = 216,
    [45180] = 217,
    [45606] = 218,
    [45890] = 172,
    [46325] = 220,
    [46398] = 224,
    [46544] = 226,
    [46545] = 225,
    [46707] = 166,
    [46767] = 227,
    [46802] = 228,
    [46820] = 229,
    [46821] = 229,
    [46831] = 1351,
    [46892] = 217,
    [46894] = 231,
    [48112] = 232,
    [48114] = 233,
    [48116] = 234,
    [48118] = 235,
    [48120] = 236,
    [48122] = 237,
    [48124] = 238,
    [48126] = 239,
    [48527] = 240,
    [49287] = 241,
    [49343] = 242,
    [49362] = 243,
    [49646] = 244,
    [49662] = 245,
    [49663] = 246,
    [49664] = 247,
    [49665] = 248,
    [49693] = 249,
    [49912] = 250,
    [50446] = 251,
    [53641] = 253,
    [54436] = 254,
    [54810] = 255,
    [54847] = 256,
    [54857] = 217,
    [56806] = 258,
    [59597] = 261,
    [60216] = 262,
    [60847] = 264,
    [60869] = 265,
    [60955] = 266,
    [62540] = 268,
    [63138] = 270,
    [63355] = 271,
    [63398] = 272,
    [64372] = 277,
    [64403] = 278,
    [64494] = 279,
    [64996] = 271,
    [65361] = 280,
    [65362] = 281,
    [65363] = 282,
    [65364] = 283,
    [65661] = 259,
    [65662] = 260,
    [66067] = 291,
    [66073] = 289,
    [66076] = 286,
    [66080] = 287,
    [67128] = 285,
    [67274] = 267,
    [67275] = 292,
    [67282] = 293,
    [67417] = 188,
    [67418] = 294,
    [68385] = 297,
    [68618] = 296,
    [68619] = 298,
    [68673] = 90,
    [68833] = 301,
    [68840] = 302,
    [68841] = 303,
    [69239] = 306,
    [69251] = 307,
    [69648] = 308,
    [69821] = 309,
    [69824] = 310,
    [69847] = 311,
    [69895] = 344,
    [69896] = 345,
    [69991] = 167,
    [69992] = 229,
    [70099] = 316,
    [70140] = 317,
    [70160] = 318,
    [70908] = 319,
    [71033] = 320,
    [71076] = 321,
    [71140] = 323,
    [71387] = 325,
    [71624] = 328,
    [71726] = 329,
    [72042] = 331,
    [72045] = 332,
    [72068] = 311,
    [72134] = 333,
    [72153] = 665,
    [73762] = 336,
    [73764] = 330,
    [73765] = 335,
    [73797] = 337,
    [73903] = 338,
    [73905] = 339,
    [73953] = 340,
    [74610] = 341,
    [74611] = 342,
    [74932] = 253 ,
    [74981] = 343,
    [75906] = 256,
    [76062] = 346,
    [78916] = 347,
    [79744] = 348,
    [80008] = 848,
    [82774] = 845,
    [82775] = 846,
    [84105] = 847,
    [85220] = 650,
    [85222] = 1042,
    [85447] = 652,
    [85513] = 802,
    [85578] = 821,
    [85871] = 671,
    [86562] = 835,
    [86563] = 836,
    [86564] = 834,
    [87526] = 844,
    [88147] = 820,
    [88148] = 792,
    [89367] = 850,
    [89368] = 849,
    [89587] = 381,
    [89686] = 856,
    [89736] = 855,
    [90173] = 868,
    [90177] = 903,
    [90897] = 278,
    [90898] = 278,
    [90900] = 1039,
    [90902] = 1040,
    [90953] = 1127,
    [91003] = 1061,
    [91031] = 1062,
    [91040] = 1063,
    [92707] = 1117,
    [92798] = 1124,
    [92799] = 1125,
    [92800] = 1126,
    [93025] = 1142,
    [93029] = 1146,
    [93030] = 1143,
    [93031] = 1145,
    [93032] = 1144,
    [93033] = 1147,
    [93034] = 1149,
    [93035] = 1150,
    [93036] = 1151,
    [93037] = 1153,
    [93038] = 1152,
    [93039] = 1154,
    [93040] = 1155,
    [93041] = 1156,
    [93669] = 1174,
    [94025] = 1176,
    [94124] = 1178,
    [94125] = 1177,
    [94126] = 1180,
    [94152] = 1183,
    [94190] = 1185,
    [94191] = 1184,
    [94208] = 1196,
    [94209] = 1197,
    [94210] = 1198,
    [94573] = 1205,
    [94574] = 1200,
    [94595] = 1201,
    [94835] = 1202,
    [94903] = 1204,
    [94932] = 1206,
    [94933] = 1207,
    [94934] = 1208,
    [94935] = 1209,
    [95422] = 1211,
    [95423] = 1212,
    [95424] = 1213,
    [95621] = 227,
    [97548] = 1226,
    [97549] = 1227,
    [97550] = 1228,
    [97551] = 1229,
    [97552] = 1230,
    [97553] = 1231,
    [97554] = 1232,
    [97555] = 1233,
    [97556] = 1234,
    [97557] = 1235,
    [97558] = 1236,
    [97959] = 1243,
    [97960] = 1244,
    [97961] = 1245,
    [97821] = 1237,
    [98550] = 1248,
    -- [100870] = Murkimus Tyrannicus
    [100905] = 1256,
    [101570] = 1276,
    [101771] = 1266,
    [102145] = 1303,
    [102146] = 1305,
    [102147] = 1304,
    [103637] = 1344,
    [103670] = 1320,
    [104156] = 1323,
    [104157] = 1321,
    [104158] = 1322,
    [104159] = 1328,
    [104160] = 1329,
    [104161] = 1330,
    [104162] = 1331,
    [104163] = 1332,
    [104164] = 1333,
    [104165] = 1334,
    [104166] = 1335,
    [104167] = 1336,
    [104168] = 1337,
    [104169] = 1338,
    [104202] = 1343,
    [104291] = 1345,
    [104295] = 1346,
    [104307] = 1348,
    [104317] = 1349,
    [104332] = 1350,
    [106240] = 1363,
    [106244] = 1364,
    [106256] = 1365,
    [109014] = 1386,
    [110684] = 1395,
    [110721] = 1396,
    [111402] = 1403,
    [111660] = 1387,
    [112057] = 1412,
    [112699] = 1416,
    [113216] = 1426,
    [113554] = 1428,
    [113558] = 1394,
    [113623] = 1442,
    [114834] = 1446,
    [114919] = 1448,
    [114968] = 1449,
    [115282] = 1450,
    [115301] = 1451,
    [115483] = 1467,
    [116064] = 1478,
    [116155] = 1511,
    [116402] = 1515,
    [116403] = 1516,
    [116756] = 1518,
    [116801] = 1521,
    [116804] = 1523,
    [116815] = 1524,
    [117354] = 1531,
    [117380] = 1530,
    [117404] = 115,
    [117528] = 1533,
    [117564] = 1471,
    [118104] = 1538,
    [118106] = 1537,
    [118107] = 1540,
    [118207] = 1541,
    [118516] = 1603,
    [118517] = 1602,
    [118574] = 1544,
    [118578] = 1545,
    [118595] = 1432,
    [118598] = 1434,
    [118600] = 1430,
    [118675] = 1563,
    [118709] = 1564,
    [118741] = 1565,
    [118919] = 1495,
    [118921] = 1566,
    [118923] = 1567,
    [119112] = 1574,
    [119141] = 1542,
    [119142] = 1450,
    [119143] = 1574,
    [119146] = 1458,
    [119149] = 1430,
    [119150] = 1575,
    [119170] = 1576,
    [119328] = 1569,
    [119431] = 1601,
    [119434] = 1385,
    [119467] = 1568,
    [119468] = 1570,
    [120050] = 1596,
    [120051] = 1597
}

--
-- Helper 
--

local EXCEPTIONS = {
    [629] = true,   -- Shore Crawler (Sold as Spell)
    [630] = true,   -- Gilnean Raven (Sold as Spell)
    [1068] = true,  -- Crow (return value wrong, is caught in wild)
    [1168] = true,  -- Murki (Korean Promotional Event)
}

local ITEM_EXCEPTIONS = {
    [11903] = true, -- Cat Carrier (Corrupted Kitten)
    [19462] = true, -- Unhatched Jubling Egg (pet container)
    [21168] = true, -- Baby Shark (not implemented?)
    [22200] = true, -- Silver Shafted Arrow (fake pet)
    [23712] = true, -- White Tiger Cub (not implemented?)
    [35227] = true, -- Goblin Weather Machine (not a pet)
    [37460] = true, -- Rope Pet Leash (pet accessory)
    [39148] = true, -- Baby Coralshell Turtle (not implemented?)
    [44820] = true, -- Red Ribbon Pet Leash (pet accessory)
    [44972] = true, -- Alarming Clockbot (NOT IN USE)
    [46831] = true, -- Macabre Marionette (fake pet)
    [50301] = true, -- Landro's Pet Box (pet container)
    [62769] = true, -- Hardboiled Egg (not implemented?)
    [66070] = true, -- Lizzy (not implemented?)
    [66075] = true, -- Bubbles (not implemented?)
    [68384] = true, -- Moonkin Egg (pet container)
    [75040] = true, -- Flimsy Darkmoon Balloon (fake pet)
    [75041] = true, -- Flimsy Green Balloon (fake pet)
    [75042] = true, -- Flimsy Yellow Balloon (fake pet)
    [89139] = true, -- Chain Pet Leash (pet accessory)
}

local scanByItem

SLASH_BPCMISSINGSCAN1 = '/bpcmissing'
function SlashCmdList.BPCMISSINGSCAN(msg, editbox)
    local LPJ = LibStub("LibPetJournal-2.0")

    local _, _, minv, maxv = strfind(msg, "%s*(%d+)%s+(%d+)%s*")
    if minv and maxv then
        print("Scanning...")
        return scanByItem(tonumber(minv), tonumber(maxv))
    end

    if msg ~= "" then
        -- locate a species by name (include non-obtainable)
        local LPJ = LibStub("LibPetJournal-2.0")

        local maxID = 0
        for _,speciesID  in LPJ:IterateSpeciesIDs() do
            if speciesID > maxID then
                maxID = speciesID
            end
        end

        for speciesID = 1,maxID*1.5 do
            local name, _, _, creatureID = C_PetJournal.GetPetInfoBySpeciesID(speciesID)
            if name and strfind(name, msg) then
                print(format("%s species=%d creature=%d", name, speciesID, creatureID))
            end
        end
        return
    end

    -- list unknown
    local speciesSet = {}
    for itemid, speciesid in pairs(addon.Item2Species) do
        speciesSet[speciesid] = true
    end
    
    local count = 0
    for i,speciesID in LPJ:IterateSpeciesIDs() do
        if not speciesSet[speciesID] then
            local name, _, _, creatureID, sourceText, _, isWild, canBattle = C_PetJournal.GetPetInfoBySpeciesID(speciesID)
            if not isWild and not strfind(sourceText, "Achievement:") and not EXCEPTIONS[speciesID] then
                count = count + 1
                print(format("%s species=%d creature=%d", name, speciesID, creatureID))
            end
        end
    end
    
    print(format("%d pets missing from table.", count))
end

--
-- item scanner
--

do
    local updateFrame

    local itemsInfoSize = 0
    local itemsInfo = {}
    local maxitem
    local minitem

    local remove = {}
    local function runQueue() 
        local hit
        local now = GetTime()

        while itemsInfoSize < 500 and maxitem > minitem do
            maxitem = maxitem - 1
            if not addon.Item2Species[maxitem] and not ITEM_EXCEPTIONS[maxitem] then
                itemsInfo[maxitem] = now
                itemsInfoSize = itemsInfoSize + 1
            end
        end
        
        wipe(remove)
        for itemid, start in pairs(itemsInfo) do
            if now - start > 3 then
                tinsert(remove, itemid)
            else
                local name, _, _, _, _, _, subclass = GetItemInfo(itemid)
                if name then
                    if subclass == "Companion Pets" then
                        print(format("%s (itemid=%d)", name, itemid))
                    end
                    tinsert(remove, itemid)
                end
            end
        end

        for _, itemid in ipairs(remove) do
            itemsInfo[itemid] = nil
            itemsInfoSize = itemsInfoSize - 1
        end
    end

    local totalElapsed = 0
    local function updateFrame_OnUpdate(self, elapsed)
        totalElapsed = totalElapsed + elapsed
        if totalElapsed > 0.4 then
            totalElapsed = 0

            runQueue()
            if itemsInfoSize == 0 and maxitem < minitem and self.item == nil then
                print("Finished")
                return self:Hide()
            end
        end
    end

    function scanByItem(minitem_, maxitem_)
        if not updateFrame then
            updateFrame = CreateFrame("Frame")
            updateFrame:SetScript("OnUpdate", updateFrame_OnUpdate)
        end

        wipe(itemsInfo)
        itemsInfoSize = 0
        minitem = minitem_
        maxitem = maxitem_ + 1

        runQueue()
        updateFrame:Show()
    end
end
