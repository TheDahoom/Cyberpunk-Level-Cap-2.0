registerForEvent('onInit', function()
    -- local nativeSettings = require("ns") --copied NativeSettings for definitions and autocomplete

    nativeSettings = GetMod("nativeSettings")




    nativeSettings.addTab("/LevelCap", "LevelCap 2.0")
    --add description/reminder/modal to restart for changes to take effect
    nativeSettings.addRangeInt("/LevelCap", "Custom level cap", "Choose the max level you can reach", 1, 100, 1, 60, 60, function(value)
        print("Changed level cap to", value)
        -- TODO
        -- set Proficiencies.Level.maxLevel, LootPrereqs.BelowMaxPlayerLevelPrereq.valueToCheck, LootPrereqs.MaxPlayerLevelPrereq.valueToCheck, LootPrereqs.CyberpsychoWeaponInLootPrereq_end_inline1.valueToCheck, LootPrereqs.LegendaryCWLevelAvailabilityAtVendor_inline1.valueToCheck to value
    end)

    --add cyberware clamp option for fury
    --test installing mod while at max level
    --test Dont fear the reaper, if it crashes check the since theres probably a .valueToCheck that fails somewhere


    print('levelcap 2.0 has initialized')
end)