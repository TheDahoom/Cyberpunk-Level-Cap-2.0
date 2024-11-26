registerForEvent('onInit', function()
    -- local nativeSettings = require("ns") --copied NativeSettings for definitions and autocomplete
    nativeSettings = GetMod("nativeSettings")

    if not nativeSettings then
        print("Error: Native settings is not installed")
    end

    nativeSettings.addTab("/LevelCap", "LevelCap 2.0")
    --add description/reminder/modal to restart for changes to take effect

    nativeSettings.addSubcategory("/LevelCap/remove", "test remove")
    nativeSettings.addButton("/LevelCap/remove", "remove", "remove sub", "remove", 50)

    nativeSettings.addRangeInt("/LevelCap", "Custom level cap", "Choose the max level you can reach", 1, 100, 1, 60, 60, function(value)
        print("Changed level cap to", value)
        -- set Proficiencies.Level.maxLevel, LootPrereqs.BelowMaxPlayerLevelPrereq.valueToCheck, LootPrereqs.MaxPlayerLevelPrereq.valueToCheck, LootPrereqs.CyberpsychoWeaponInLootPrereq_end_inline1.valueToCheck, LootPrereqs.LegendaryCWLevelAvailabilityAtVendor_inline1.valueToCheck to value
    end)

    nativeSettings.addSwitch("/LevelCap", "Switch", "Description", true, true, function(state) -- path, label, desc, currentValue, defaultValue, callback
        if not state then
            nativeSettings.removeSubcategory("/LevelCap/remove")
        else
            nativeSettings.addSubcategory("/LevelCap/remove", "test remove")
        end
    end)


    --stop attributes from incremeting after level 79 for OCD
    --add cyberware clamp option for fury
    --test installing mod while at max level
    --test Dont fear the reaper, if it crashes check the logs theres probably a .valueToCheck that fails somewhere


    print('levelcap 2.0 has initialized')
end)