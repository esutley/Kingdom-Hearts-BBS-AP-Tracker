function can_air_slide()
    return has("air_slide") or has("ice_slide")
end

function jump_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("high_jump") or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if can_air_slide() or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function jump_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if (has("high_jump") and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function jump_and_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("high_jump") then
        if can_air_slide() or stage == 1 then
            return AccessibilityLevel.Normal
        else
            return AccessibilityLevel.SequenceBreak
        end
    end

    return AccessibilityLevel.None
end

-- Ventus
function can_glide()
    return has("glide") or has("superglide") or has("fire_glide")
end

function glide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if can_glide() or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function slide_or_glide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if can_air_slide() or can_glide() or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function jump_and_glide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("high_jump") then
        if can_glide() or stage == 1 then
            return AccessibilityLevel.Normal
        else
            return AccessibilityLevel.SequenceBreak
        end
    end

    return AccessibilityLevel.None
end

-- Aqua
function jump_or_flight()
    return has("high_jump") or has("doubleflight")
end

function jump_and_flight()
    return has("high_jump") and has("doubleflight")
end

function a_vertical_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if jump_or_flight() or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function a_vertical_and_slide_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if jump_or_flight() then
        if can_air_slide() or stage == 1 then
            return AccessibilityLevel.Normal
        else
            return AccessibilityLevel.SequenceBreak
        end
    end

    return AccessibilityLevel.None
end

function a_vertical_or_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if jump_or_flight() or can_air_slide() or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function a_vertical_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if (jump_or_flight() and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function jump_flight_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if (jump_and_flight() and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function flight_or_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("doubleflight") or can_air_slide() or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function flight_or_jump_slide_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("doubleflight") or (has("high_jump") and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function a_minnie_sticker()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("doubleflight") then
        if has("high_jump") or stage == 1 then
            return AccessibilityLevel.Normal
        else
            return AccessibilityLevel.SequenceBreak
        end
    end

    return AccessibilityLevel.None
end

function a_vault_m_chest()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has_fire() or jump_and_flight() or (jump_or_flight() and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

-- Terra
function jump_slide_impact_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if (has("high_jump") and has("sonic_impact") and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end

function jump_and_slide_impact_or_dash()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has("high_jump") then
        if (has("sonic_impact") and can_air_slide()) or stage == 1 then
            return AccessibilityLevel.Normal
        else
            return AccessibilityLevel.SequenceBreak
        end
    end

    return AccessibilityLevel.None
end

function t_vault_fs_chest()
    local stage = Tracker:FindObjectForCode("opt_advanced_logic").CurrentStage
    if has_fire() or (has("high_jump") and can_air_slide()) or stage == 1 then
        return AccessibilityLevel.Normal
    end

    return AccessibilityLevel.SequenceBreak
end