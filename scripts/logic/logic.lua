-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:
function has_at_least_n_cartridge(n)
    local count = Tracker:ProviderCountForCode("cartridge")
    local val = (count >= tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_at_least_n_cartridge: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

function has_aqueducts_event(n)
    local a = Tracker:FindObjectForCode("aqueducts")
    ---@cast a JsonItem
    local val = (a.CurrentStage >= tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_aqueducts_event: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

function has_heater_core_event(n)
    local h = Tracker:FindObjectForCode("heater_core")
    ---@cast h JsonItem
    local val = (h.CurrentStage >= tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_heater_core_event: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end

function has_ventilation_event(n)
    local v = Tracker:FindObjectForCode("ventilation")
    ---@cast v JsonItem
    local val = (v.CurrentStage >= tonumber(n))
    if ENABLE_DEBUG_LOG then
        print(string.format("called has_ventilation_event: count: %s, n: %s, val: %s", count, n, val))
    end
    if val then
        return 1 -- 1 => access is in logic
    end
    return 0 -- 0 => no access
end