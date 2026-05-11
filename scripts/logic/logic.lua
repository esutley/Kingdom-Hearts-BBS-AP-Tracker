WORLDS = {"dwarf_woodlands", "castle_of_dreams", "enchanted_dominion", "mysterious_tower", "radiant_garden", "mirage_arena", "olympus_coliseum", "deep_space", "realm_of_darkness", "never_land", "disney_town"}
CLEARABLE_WORLDS = {"dwarf_woodlands", "castle_of_dreams", "enchanted_dominion", "radiant_garden", "olympus_coliseum", "deep_space", "never_land", "disney_town"}
CLEARABLE_WORLDS_NO_DT = {"dwarf_woodlands", "castle_of_dreams", "enchanted_dominion", "radiant_garden", "olympus_coliseum", "deep_space", "never_land"}

function has_x_worlds(amount)
    local count = 0
    amount = tonumber(amount)
    for _, item in pairs(WORLDS) do
        if has(item) then
            count = count + 1
        end
    end
    if count >= amount then
        return true
    end
    return false
end

function has_clearable_worlds(amount)
    local count = 0
    amount = tonumber(amount)
    local minigames = Tracker:FindObjectForCode("opt_minigames").CurrentStage
    local worlds = {}
    if minigames == 1 then
        worlds = CLEARABLE_WORLDS
    else
        worlds = CLEARABLE_WORLDS_NO_DT
    end
    for _, item in pairs(worlds) do
        if has(item) then
            count = count + 1
        end
    end
    if count >= amount then
        return true
    end
    return false
end

function has_defensive_tools()
    return has("leaf_bracer") and has("once_more") and has("second_chance")
end
function has_wayfinders()
    return has("wayfinder_ventus") and has("wayfinder_aqua") and has("wayfinder_terra")
end

function has_fire()
    return has("fire") or has_clearable_worlds(2)
end

function has_thunder()
    return has("thunder") or has_clearable_worlds(2)
end

function ma_medal_access()
    local arena = Tracker:FindObjectForCode("opt_mirage_arena").CurrentStage
    local board = Tracker:FindObjectForCode("opt_command_board").CurrentStage
    local minigames = Tracker:FindObjectForCode("opt_minigames").CurrentStage
    return arena == 1 or board == 1 or minigames == 1
end

function ma_world(world)
    local stage = Tracker:FindObjectForCode("opt_arena_global").CurrentStage
    return has(world) or stage == 1
end

function ma_monstro_vis()
    local stage = Tracker:FindObjectForCode("opt_arena_global").CurrentStage
    local minigames = Tracker:FindObjectForCode("opt_minigames").CurrentStage
    return minigames == 1 or stage == 1
end