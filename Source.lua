--[[
    dm @cloneref on discord if something gets changed  
]]

local Stats = { -- Level 75: 3.2 Multi
    ["Mash"] = {
        ["Placements"] = 4,
        ["SPA"] = 8,
        ["Damage"] = 260480
    },
    ["Saitama"] = {
        ["Placements"] = 2,
        ["SPA"] = 8,
        ["Damage"] = 176640
    },
    ["Gon"] = {
        ["Placements"] = 3,
        ["SPA"] = 10.5,
        ["Damage"] = 130880 
    },
    ["Saber"] = {
        ["Placements"] = 4,
        ["SPA"] = 8,
        ["Damage"] = 120320,
        ["Ability"] = "Mana Release"
    },
    ["Gojo (Evo)"] = {
        ["Placements"] = 2,
        ["SPA"] = 12,
        ["Damage"] = 297600,
        ["Ability"] = "Unlimited Void"
    },
    ["Gojo"] = {
        ["Placements"] = 2,
        ["SPA"] = 3.75,
        ["Damage"] = 57600
    },
    ["Sukuna (Evo)"] = {
        ["Placements"] = 1,
        ["SPA"] = 6,
        ["Damage"] = 94720,
        ["Effect"] = "Dismantled",
        ["Ability"] = "Fire Arrow"
    },
    ["Sukuna"] = {
        ["Placements"] = 4,
        ["SPA"] = 6,
        ["Damage"] = 37120,
        ["Effect"] = "Bleed"
    },
    ["Guts"] = {
        ["Placements"] = 2,
        ["SPA"] = 8,
        ["Damage"] = 146880,
        ["Effect"] = "Bleed"
    },
    ["Roy"] = {
        ["Placements"] = 4,
        ["SPA"] = 7,
        ["Damage"] = 105280,
        ["Effect"] = "Burn"
    },
    ["Whitebeard"] = {
        ["Placements"] = 4,
        ["SPA"] = 7.5,
        ["Damage"] = 78720
    },
    ["Yamamoto"] = {
        ["Placements"] = 3,
        ["SPA"] = 6,
        ["Damage"] = 77440,
        ["Effect"] = "Burn"
    },
    ["Itachi"] = {
        ["Placements"] = 3,
        ["SPA"] = 6,
        ["Damage"] = 39040,
        ["Effect"] = "Burn",
        ["Ability"] = "Black Flames"
    },
    ["Yami"] = {
        ["Placements"] = 4,
        ["SPA"] = 5,
        ["Damage"] = 48640
    },
    ["Genos"] = {
        ["Placements"] = 6,
        ["SPA"] = 8,
        ["Damage"] = 57600
    },
    ["Gogeta"] = {
        ["Placements"] = 4,
        ["SPA"] = 5,
        ["Damage"] = 32320
    },
    ["Frieza"] = {
        ["Placements"] = 4,
        ["SPA"] = 6.5,
        ["Damage"] = 21760
    },
    ["Nami (Drip)"] = {
        ["Placements"] = 8,
        ["SPA"] = 6,
        ["Damage"] = 2864
    },
    ["Gohan (Drip)"] = {
        ["Placements"] = 6,
        ["SPA"] = 5,
        ["Damage"] = 1994
    },
    ["Ulquiorra"] = {
        ["Placements"] = 3,
        ["SPA"] = 5,
        ["Damage"] = 54080
    },
    ["Zenitsu"] = {
        ["Placements"] = 4,
        ["SPA"] = 5.5,
        ["Damage"] = 6368,
        ["Effect"] = "Electrified"
    },
    ["Byakuya"] = {
        ["Placements"] = 5,
        ["SPA"] = 6,
        ["Damage"] = 6080,
        ["Effect"] = "Bleed"
    },
    ["Sanemi"] = {
        ["Placements"] = 4,
        ["SPA"] = 6,
        ["Damage"] = 13632,
        ["Effect"] = "Bleed"
    },
    ["Luffy (Timeskip)"] = {
        ["Placements"] = 3,
        ["SPA"] = 6,
        ["Damage"] = 9376,
        ["Effect"] = "Burn",
        ["Ability"] = "Timestop"
    },
    ["Shinra"] = {
        ["Placements"] = 4,
        ["SPA"] = 5,
        ["Damage"] = 14016,
        ["Effect"] = "Burn"
    },
    ["Grimmjow"] = {
        ["Placements"] = 3,
        ["SPA"] = 6,
        ["Damage"] = 38080
    },
    ["Piccolo"] = {
        ["Placements"] = 4,
        ["SPA"] = 4.5,
        ["Damage"] = 18496
    },
    ["Uryu"] = {
        ["Placements"] = 4,
        ["SPA"] = 6,
        ["Damage"] = 21280
    },
    ["Vegeta (Super)"] = {
        ["Placements"] = 4,
        ["SPA"] = 7,
        ["Damage"] = 34560
    },
    ["Goku (SS)"] = {
        ["Placements"] = 4,
        ["SPA"] = 5.75,
        ["Damage"] = 18624,
        ["Ability"] = "Enraged"
    }
}

local Skills = {
    ["Empower 1"] = {
        ["Damage"] = 0.04
    },
    ["Shatter 1"] = {
        ["Speed"] = 0.03,
        ["Penetration"] = 0.1
    },
    ["Speedy 1"] = {
        ["Speed"] = 0.02
    },
    ["Vision 1"] = {
        ["Range"] = 0.025
    },
    ["Rich"] = {
        ["Money"] = 0.15
    },
    ["Element 1"] = {
        ["Elemental"] = 0.15
    },
    ["Empowered Crit 1"] = {
        ["Critical"] = 0.2
    },
    ["Vision 2"] = {
        ["Range"] = 0.05
    },
    ["Speedy 2"] = {
        ["Speed"] = 0.04
    },
    ["Empower 2"] = {
        ["Damage"] = 0.06
    },
    ["Enlightened Power"] = {
        ["Damage"] = 0.1,
        ["Range"] = 0.05
    },
    ["Enlightened Sight"] = {
        ["Damage"] = 0.05,
        ["Range"] = 0.1,
        ["Speed"] = 0.05
    },
    ["Enlightened Speedster"] = {
        ["Speed"] = 0.1,
        ["Range"] = 0.05,
        ["Damage"] = 0.05
    },
    ["Critical 1"] = {
        ["Rate"] = 0.05
    },
    ["Critical 2"] = {
        ["Rate"] = 0.15
    },
    ["Speedy 3"] = {
        ["Speed"] = 0.1
    },
    ["Vision 3"] = {
        ["Range"] = 0.125
    },
    ["Empower 3"] = {
        ["Damage"] = 0.15
    },
    ["Empowered Crit 2"] = {
        ["Critical"] = 0.4
    },
    ["Bullseye Master"] = {
        ["Critical"] = 0.6,
        ["Rate"] = 0.15,
        ["Range"] = 0.15
    },
    ["Element 2"] = {
        ["Elemental"] = 0.35
    },
    ["Matchup Master"] = {
        ["Penetration"] = 0.25,
        ["Elemental"] = 0.5,
        ["Damage"] = 0.15
    },
    ["Shatter 2"] = {
        ["Penetration"] = 0.15,
        ["Speed"] = 0.1
    },
    ["Devastation Mastery"] = {
        ["Damage"] = 0.65
    }
}

Skills["Empower 1"]["Links"] = {
    Skills["Shatter 1"]
}

Skills["Speedy 1"]["Links"] = {
    [2] = Skills["Empowered Crit 1"]
}

Skills["Vision 1"]["Links"] = {
    [2] = Skills["Empowered Crit 1"]
}

Skills["Rich"]["Links"] = {
    [3] = Skills["Element 1"]
}

Skills["Element 1"]["Links"] = {
    [2] = Skills["Speedy 2"],
    [3] = Skills["Empower 2"]
}

Skills["Shatter 1"]["Links"] = {
    Skills["Vision 2"],
    Skills["Speedy 2"]
}

Skills["Empowered Crit 1"]["Links"] = {
    Skills["Vision 2"],
    Skills["Speedy 2"],
    Skills["Empower 2"]
}

Skills["Vision 2"]["Links"] = {
    Skills["Enlightened Power"],
    Skills["Enlightened Sight"]
}

Skills["Speedy 2"]["Links"] = {
    Skills["Enlightened Power"],
    Skills["Enlightened Sight"],
    Skills["Enlightened Speedster"]
}

Skills["Empower 2"]["Links"] = {
    [2] = Skills["Enlightened Sight"],
    [3] = Skills["Enlightened Speedster"]
}

Skills["Enlightened Power"]["Links"] = {
    Skills["Critical 1"]
}

Skills["Enlightened Sight"]["Links"] = {
    Skills["Critical 1"],
    Skills["Critical 2"]
}

Skills["Enlightened Speedster"]["Links"] = {
    [2] = Skills["Critical 2"]
}

Skills["Critical 1"]["Links"] = {
    Skills["Speedy 3"],
    Skills["Vision 3"]
}

Skills["Critical 2"]["Links"] = {
    [2] = Skills["Vision 3"],
    [3] = Skills["Empower 3"]
}

Skills["Speedy 3"]["Links"] = {
    Skills["Empowered Crit 2"],
    Skills["Element 2"]
}

Skills["Vision 3"]["Links"] = {
    Skills["Empowered Crit 2"],
    Skills["Element 2"],
    Skills["Shatter 2"]
}

Skills["Empower 3"]["Links"] = {
    [2] = Skills["Element 2"],
    [3] = Skills["Shatter 2"]
}

Skills["Shatter 2"]["Links"] = {
    [3] = Skills["Devastation Mastery"]
}

Skills["Element 2"]["Links"] = {
    [2] = Skills["Matchup Master"]
}

Skills["Empowered Crit 2"]["Links"] = {
    Skills["Bullseye Master"]
}

local Starters = {
    Skills["Empower 1"], 
    Skills["Speedy 1"], 
    Skills["Vision 1"], 
    Skills["Rich"]
}

local Effects = {
    ["Dismantled"] = {
        ["Multiplier"] = 4.7,
        ["Ticks"] = 6,
        ["Time"] = 6
    },
    ["Bleed"] = { 
        ["Multiplier"] = 2.5,
        ["Ticks"] = 8,
        ["Time"] = 6
    },
    ["Burn"] = { 
        ["Multiplier"] = 2.7,
        ["Ticks"] = 6,
        ["Time"] = 5 + 4
    },
    ["Electrified"] = {
        ["Multiplier"] = 2,
        ["Ticks"] = 3,
        ["Time"] = 3
    }
} 

local Calculate = function(Name, Trait, Tree)
    local Character = Stats[Name]
    local BaseDamage = Character["Damage"]
    local Placements = Character["Placements"]
    local BaseSpeed = Character["SPA"]
    local Effect = Character["Effect"]
    local Ability = Character["Ability"]

    local CritDamage = 1.5
    local CritRate = 0
    local DamageMultiplier = 1
    local DOTMultiplier = 1
    local SpeedMultiplier = 1
    local DOTDuration = 1

    local RangeMultiplier = 0
    local MoneyMultiplier = 0
    local Penetration = 0
    local Elemental = 0 

    if Effect then 
        Effect = Effects[Effect]
    end 

    if Trait == "Overlord" then 
        DamageMultiplier += 2.75 
        SpeedMultiplier -= 0.2 
        CritDamage += 0.75 
        RangeMultiplier += 0.15
        Placements = 1
    elseif Trait == "Avatar" then 
        DamageMultiplier += 2.25 
        SpeedMultiplier -= 0.15 
        CritDamage += 0.25
        DOTMultiplier *= 4.5 
        RangeMultiplier += 0.2
        Placements = 1
    elseif Trait == "Shinigami" then 
        DamageMultiplier += 0.45 
        SpeedMultiplier -= 0.15
        CritDamage += 0.5
        RangeMultiplier += 0.2
    elseif Trait == "Entrepreneur" then 
        DamageMultiplier += 0.15 
        SpeedMultiplier -= 0.15 
        CritDamage += 0.25
        RangeMultiplier += 0.15
        MoneyMultiplier += 0.35
    elseif Trait == "All Seeing" then 
        DamageMultiplier += 0.15 
        SpeedMultiplier -= 0.15 
        CritRate += 0.2 
        CritDamage += 1
        RangeMultiplier += 0.55
    elseif Trait == "Demi God" then 
        DamageMultiplier += 0.25
        SpeedMultiplier -= 0.05
    elseif Trait == "Cosmic" then 
        DamageMultiplier += 0.15
        SpeedMultiplier -= 0.15
        RangeMultiplier += 0.1
    elseif Trait == "Diamond" then 
        DamageMultiplier += 0.05
        MoneyMultiplier += 0.2
    elseif Trait == "Vulture" then 
        CritRate += 0.05
        CritDamage += 0.15
        RangeMultiplier += 0.25
    elseif Trait == "Elemental Master" then 
        DamageMultiplier += 0.05
        DOTMultiplier = DOTMultiplier / 4 * 3
        DOTDuration = DOTDuration * 2.5
    elseif Trait == "Juggernaut" then 
        DamageMultiplier += 0.125
        SpeedMultiplier -= 0.025 
    elseif Trait == "Hyper Speed" then 
        SpeedMultiplier -= 0.125
    elseif Trait == "Sturdy" then 
        DamageMultiplier += 0.1
    elseif Trait == "Accelerate" then 
        SpeedMultiplier -= 0.1
    elseif Trait == "Golden" then 
        MoneyMultiplier += 0.125
    elseif Trait == "Eagle Eye" then 
        RangeMultiplier += 0.15
    elseif Trait == "Scoped" then 
        RangeMultiplier += 0.1
    elseif Trait == "Shining" then 
        MoneyMultiplier += 0.1
    end 

    local Buffs

    for i,v in next, Tree do
        if i == 1 then 
            Buffs = Starters[v]
        else 
            Buffs = Buffs["Links"][v]
        end 

        for i,v in next, Buffs do 
            if i == "Critical" then 
                CritDamage += v 
            elseif i == "Rate" then 
                CritRate += v 
            elseif i == "Damage" then 
                DamageMultiplier += v 
            elseif i == "Speed" then 
                SpeedMultiplier -= v
            elseif i == "Money" then 
                MoneyMultiplier += v 
            elseif i == "Range" then 
                RangeMultiplier += v 
            elseif i == "Penetration" then 
                Penetration += v 
            elseif i == "Elemental" then 
                Elemental += v
            end 
        end 
    end 

    local SPA = BaseSpeed * SpeedMultiplier
    local Damage = BaseDamage * DamageMultiplier
    local Crit = (Damage * (1 - CritRate)) + (Damage * CritDamage * CritRate)
    local DPS = math.round(Crit / SPA)
    local GDPS = DPS * Placements

    local Bonuses = {
        ["Range"] = RangeMultiplier,
        ["Money"] = MoneyMultiplier,
        ["Penetration"] = Penetration,
        ["Elemental"] = Elemental
    }

    if Effect then 
        local Duration = Effect["Time"] * DOTDuration
        local TickMultiplier = Effect["Multiplier"] * DOTMultiplier / Duration

        local Divider = SPA 
        if Duration > Divider then 
            repeat
                Divider *= 2
            until Divider >= Duration 
        end 

        local TimeTagged = Duration / Divider

        DPS += (Damage * TickMultiplier * TimeTagged) 
        GDPS += (Damage * TickMultiplier * math.clamp(TimeTagged * Placements, 0, 1)) 
    end 

    return DPS, GDPS, Bonuses, Ability 
end 

local Techniques = {
    "Overlord", 
    "Avatar", 
    "Shinigami", 
    "Entrepreneur", 
    "All Seeing",
    "Elemental Master",
    "Sturdy",
    "Accelerate",
    "Scoped",
    "Shining",
    "Eagle Eye",
    "Golden",
    "Hyper Speed",
    "Juggernaut",
    "Vulture",
    "Diamond",
    "Cosmic",
    "Demi God"
}
local Results = {}

function copy(obj)
    if type(obj) ~= 'table' then return obj end
    local Response = {}
    for k, v in pairs(obj) do Response[copy(k)] = copy(v) end
    return Response
end

function format(number)
    local i, j, minus, int, fraction = tostring(number):find('([-]?)(%d+)([.]?%d*)')
    int = int:reverse():gsub("(%d%d%d)", "%1,")
    return minus .. int:reverse():gsub("^,", "")
end

local Handler 
Handler = function(Skill, Tree, Name, Technique)
    local DPS, GDPS, Bonuses, Ability = Calculate(Name, Technique, Tree)
    Results[#Results + 1] = {
        ["Trait"] = Technique,
        ["DPS"] = DPS,
        ["GDPS"] = GDPS,
        ["Bonus"] = Bonuses,
        ["Name"] = Name,
        ["Tree"] = Tree,
        ["Ability"] = Ability
    }

    local Links = Skill["Links"]
    if not Links then return end 

    for i,v in next, Links do 
        local Copy = copy(Tree)
        Copy[#Copy + 1] = i 
        Handler(v, Copy, Name, Technique)
    end 
end 

for Name, _ in next, Stats do 
    for a,v in next, Techniques do
        for i, Starter in next, Starters do
            Handler(Starter, {i}, Name, v)
        end 
    end 
end 

table.sort(Results, function(a, b)
    return a["GDPS"] > b["GDPS"]
end)

local TableToString = function(Table)
    local Result = ""
    for i,v in next, Table do 
        Result = Result..tostring(v)..", "
    end
    Result = Result:sub(1, #Result - 2)
    return Result 
end 

local find = function(Table, Value)
    for i,v in next, Table do if v == Value then return i end end 
end 

local ToString = function(Bonuses)  
    local Response = ""
    for i,v in next, Bonuses do 
        if v == 0 then continue end 

        Response = Response..("+%d%% %s"):format(v * 100, i)..", "
    end 
    Response = Response:sub(1, #Response - 2)
    return Response 
end 

local List = {}
local Seen = {}
for i,v in next, Results do 
    local Stop = false
    for i1,v1 in next, Seen do 
        if v1[2] == v["Name"] and v1[1] == v["Trait"] then 
            Stop = true 
        end 
    end 
    if Stop then continue end

    Seen[#Seen + 1] = {v["Trait"], v["Name"]}
    List[#List + 1] = v
end 

for i,v in next, List do
    local Resolved = {}
    local Buffs
    for i,v in next, v["Tree"] do
        if i == 1 then 
            Buffs = Starters[v]
            Resolved[#Resolved + 1] = find(Skills, Buffs)
            continue 
        end 

        Buffs = Buffs["Links"][v]
        Resolved[#Resolved + 1] = find(Skills, Buffs)
    end 
    local Output = ("%d. %s %s: %s GDPS, %s DPS | %s"):format(i, v["Trait"], v["Name"], format(v["GDPS"]), format(v["DPS"]), TableToString(Resolved))
    
    local Bonuses = ToString(v["Bonus"])
    if #Bonuses > 5 then 
        Output = Output..(" | Bonuses: %s"):format(Bonuses)
    end 
    
    local Ability = v["Ability"]
    if Ability then 
        Output = Output..(" | Ability: %s"):format(Ability)
    end 

    print(Output.."\n")
end 
