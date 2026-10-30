
ENC = {}



local config = require("Modules/config")

local nativeSettings = GetMod("nativeSettings")

nativeSettings.addTab("/ENC", "ENC")
nativeSettings.addSubcategory("/ENC/Overall", "Settings")
nativeSettings.addSubcategory("/ENC/Main", "Main")
nativeSettings.addSubcategory("/ENC/Oda", "Oda")
nativeSettings.addSubcategory("/ENC/Sasquatch", "Sasquatch")
nativeSettings.addSubcategory("/ENC/Smasher", "Smasher")
nativeSettings.addSubcategory("/ENC/Chimera", "Chimera")
nativeSettings.addSubcategory("/ENC/Kurt", "Kurt Hansen")
nativeSettings.addSubcategory("/ENC/Yasha", "Yasha Ivanov")
nativeSettings.addSubcategory("/ENC/Ribakov", "Ribakov")
nativeSettings.addSubcategory("/ENC/BossSettings", "Boss Caps")
nativeSettings.addSubcategory("/ENC/Boxing", "Beat on the Brat")
nativeSettings.addSubcategory("/ENC/StatusEffects", "Status Effects")
nativeSettings.addSubcategory("/ENC/SmartWeap", "Smart Weapons")
nativeSettings.addSubcategory("/ENC/TimeDilation", "Time Dilation")
nativeSettings.addSubcategory("/ENC/Breach", "Breach Protocol")
nativeSettings.addSubcategory("/ENC/Stealth", "Stealth")
nativeSettings.addSubcategory("/ENC/Loot", "Loot")
nativeSettings.addSubcategory("/ENC/Resistances", "Resistances")

curSettings = config.loadFile("Data/config_new.json")

EnableMod = curSettings.EnableMod

T1EnemyHP = curSettings.T1EnemyHP
T1EnemyDmg = curSettings.T1EnemyDmg
T2EnemyHP = curSettings.T2EnemyHP
T2EnemyDmg = curSettings.T2EnemyDmg
T3EnemyHP = curSettings.T3EnemyHP
T3EnemyDmg = curSettings.T3EnemyDmg
LowSubArmor = curSettings.LowSubArmor
NormSubArmor = curSettings.NormSubArmor
MedSubArmor = curSettings.MedSubArmor
HighSubArmor = curSettings.HighSubArmor
MinoWeakspot = curSettings.MinoWeakspot

EliteHP = curSettings.EliteHP
EliteDmg = curSettings.EliteDmg
BossHP = curSettings.BossHP
BossDmg = curSettings.BossDmg
MaxtacHP = curSettings.MaxtacHP
MaxtacDmg = curSettings.MaxtacDmg
OdaHP = curSettings.OdaHP
OdaDmg = curSettings.OdaDmg
OdaStealthHealRate = curSettings.OdaStealthHealRate

MainBossHP = curSettings.MainBossHP
BossMaxDmgPerHitStat = curSettings.BossMaxDmgPerHitStat
MaxtacMaxDmgPerHitStat = curSettings.MaxtacMaxDmgPerHitStat
SmasherMaxDmgPerHitStat = curSettings.SmasherMaxDmgPerHitStat
OdaMaxDmgPerHit = curSettings.OdaMaxDmgPerHit
SasquatchMaxDmgPerHit = curSettings.SasquatchMaxDmgPerHit
KurtMaxDmgPerHit = curSettings.KurtMaxDmgPerHit
YashaMaxDmgPerHit = curSettings.YashaMaxDmgPerHit
RibakovMaxDmgPerHitStat = curSettings.RibakovMaxDmgPerHitStat

SasquatchWeakspotHP = curSettings.SasquatchWeakspotHP
SasquatchHP = curSettings.SasquatchHP
SasquatchDmg = curSettings.SasquatchDmg
SasquatchRegen = curSettings.SasquatchRegen
SasquatchCombatStimRegen = curSettings.SasquatchCombatStimRegen
SasquatchCombatStimCooldown = curSettings.SasquatchCombatStimCooldown
SasquatchBerserkDuration = curSettings.SasquatchBerserkDuration
SasquatchBerserkCooldown = curSettings.SasquatchBerserkCooldown
SasquatchGrabDmg = curSettings.SasquatchGrabDmg

SmasherHP = curSettings.SmasherHP
SmasherDmg = curSettings.SmasherDmg
SmasherRegen = curSettings.SmasherRegen
SmasherBerserkDuration = curSettings.SmasherBerserkDuration
SmasherBerserkCooldown = curSettings.SmasherBerserkCooldown

ChimeraHP = curSettings.ChimeraHP
ChimeraDmg = curSettings.ChimeraDmg
ChimeraMetalstormDmg = curSettings.ChimeraMetalstormDmg
ChimeraExplosiveMetalstormDmg = curSettings.ChimeraExplosiveMetalstormDmg

KurtHP = curSettings.KurtHP
KurtDmg = curSettings.KurtDmg
KurtKnifeThrowDmg = curSettings.KurtKnifeThrowDmg
KurtShotgunDmg = curSettings.KurtShotgunDmg
KurtLmgDmg = curSettings.KurtLmgDmg
KurtCombatStimCooldown = curSettings.KurtCombatStimCooldown

YashaHP = curSettings.YashaHP
YashaDmg = curSettings.YashaDmg
YashaHealRate = curSettings.YashaHealRate

RibakovHP = curSettings.RibakovHP
RibakovDmg = curSettings.RibakovDmg
RibakovCombatStimCooldown = curSettings.RibakovCombatStimCooldown

BuckHP = curSettings.BuckHP
BuckDmg = curSettings.BuckDmg

CesarHP = curSettings.CesarHP
CesarDmg = curSettings.CesarDmg

OzobHP = curSettings.OzobHP
OzobDmg = curSettings.OzobDmg

RazorHP = curSettings.RazorHP
RazorDmg = curSettings.RazorDmg

RhinoHP = curSettings.RhinoHP
RhinoDmg = curSettings.RhinoDmg

TwinHP = curSettings.TwinHP
TwinDmg = curSettings.TwinDmg

EnableBreachProtocol = curSettings.EnableBreachProtocol
RemoveBreachRestrictions = curSettings.RemoveBreachRestrictions
EnableUltimateQuickhacksBreach = curSettings.EnableUltimateQuickhacksBreach
ICEPickLength = curSettings.ICEPickLength
WeapJamLength = curSettings.WeapJamLength
BlindLength = curSettings.BlindLength
LocoLength = curSettings.LocoLength
CyberwareLength = curSettings.CyberwareLength
VulnLength = curSettings.VulnLength
WeakLength = curSettings.WeakLength
SuicideLength = curSettings.SuicideLength
MadLength = curSettings.MadLength
CollapseLength = curSettings.CollapseLength
GrenadeLength = curSettings.GrenadeLength
ICEBreakerLength = curSettings.ICEBreakerLength
Lvl1MinigameDuration = curSettings.Lvl1MinigameDuration
Lvl2MinigameDuration = curSettings.Lvl2MinigameDuration
Lvl3MinigameDuration = curSettings.Lvl3MinigameDuration
Lvl4MinigameDuration = curSettings.Lvl4MinigameDuration

RelaxedSpeed = curSettings.RelaxedSpeed
AlertedSpeed = curSettings.AlertedSpeed
CombatSpeed = curSettings.CombatSpeed
SniperSpeed = curSettings.SniperSpeed
ParadeRelaxedSpeed = curSettings.ParadeRelaxedSpeed
ParadeAlertedSpeed = curSettings.ParadeAlertedSpeed
PeriMedRange = curSettings.PeriMedRange
TurretSpeed = curSettings.TurretSpeed

ConsumableCooldown = curSettings.ConsumableCooldown
CombatStimRegenRate = curSettings.CombatStimRegenRate
ApplicationEffectChance = curSettings.ApplicationEffectChance
ApplicationEffectDuration = curSettings.ApplicationEffectDuration
BerserkDuration = curSettings.BerserkDuration
BerserkCooldown = curSettings.BerserkCooldown

SmartWeapLockOnTime = curSettings.SmartWeapLockOnTime
SmartWeapLockOutTime = curSettings.SmartWeapLockOutTime
GlowingTattoos = curSettings.GlowingTattoos
KangTaoSmartDisrupt = curSettings.KangTaoSmartDisrupt

--ExtraTimeDilation = curSettings.ExtraTimeDilation
Sandy0Dilation = curSettings.Sandy0Dilation
Sandy1Dilation = curSettings.Sandy1Dilation
Sandy2Dilation = curSettings.Sandy2Dilation
Sandy3Dilation = curSettings.Sandy3Dilation

LegenLoot = curSettings.LegenLoot

TygerHackRes = curSettings.TygerHackRes
ScavHackRes = curSettings.ScavHackRes
VDBHackRes = curSettings.VDBHackRes
MiliHackRes = curSettings.MiliHackRes
AraHackRes = curSettings.AraHackRes
KangHackRes = curSettings.KangHackRes
CorpHackRes = curSettings.CorpHackRes
TrauHackRes = curSettings.TrauHackRes
NCPDHackRes = curSettings.NCPDHackRes
MaxtHackRes = curSettings.MaxtHackRes
NUSAHackRes = curSettings.NUSAHackRes



function ENC:new()

    defaultSettings = {
        EnableMod = true,
        T1EnemyHP = 1,
        T1EnemyDmg = 1,
        T2EnemyHP = 1,
        T2EnemyDmg = 1,
        T3EnemyHP = 1,
        T3EnemyDmg = 1,
        EliteHP = 1,
        EliteDmg = 1,
        BossHP = 1,
        BossDmg = 1,
        MainBossHP = 1,
        BossMaxDmgPerHitStat = 7,
        MaxtacMaxDmgPerHitStat = 7,
        SmasherMaxDmgPerHitStat = -3,
        OdaMaxDmgPerHit = -2,
        SasquatchMaxDmgPerHit = -2,
        KurtMaxDmgPerHit = -2,
        YashaMaxDmgPerHit = -2,
        RibakovMaxDmgPerHitStat = -2,
        MaxtacHP = 1,
        MaxtacDmg = 1,
        LowSubArmor = 1,
        NormSubArmor = 1,
        MedSubArmor = 1,
        HighSubArmor = 1,
        MinoWeakspot = 0.4,
        OdaHP = 3,
        OdaDmg = 1,
        OdaStealthHealRate = 1,
        SasquatchWeakspotHP = 2.5,
        SasquatchHP = 3.5,
        SasquatchDmg = 1.5,
        SasquatchRegen = 0.3,
        SasquatchCombatStimRegen = 5,
        SasquatchCombatStimCooldown = 90,
        SasquatchBerserkDuration = 30,
        SasquatchBerserkCooldown = 60,
        SasquatchGrabDmg = 0.75,
        SmasherHP = 3.5,
        SmasherDmg = 1,
        SmasherRegen = 2.5,
        SmasherBerserkDuration = 30,
        SmasherBerserkCooldown = 60,
        ChimeraHP = 4.66,
        ChimeraDmg = 1,
        ChimeraMetalstormDmg = 1,
        ChimeraExplosiveMetalstormDmg = 1,
        BuckHP = 1,
        BuckDmg = 1,
        CesarHP = 1,
        CesarDmg = 1,
        OzobHP = 1,
        OzobDmg = 1,
        RazorHP = 1,
        RazorDmg = 1,
        RhinoHP = 1,
        RhinoDmg = 1,
        TwinHP = 0.5,
        TwinDmg = 1,
        KurtHP = 4.7,
        KurtDmg=1,
        KurtKnifeThrowDmg=1,
        KurtShotgunDmg=0.4,
        KurtLmgDmg=1,
        KurtCombatStimCooldown=60,
        YashaHP=2,
        YashaDmg=1,
        YashaHealRate=1,
        RibakovHP=1.5,
        RibakovDmg=1,
        RibakovCombatStimCooldown=60,
        EnableBreachProtocol = true,
        RemoveBreachRestrictions = false,
        EnableUltimateQuickhacksBreach = true,
        ICEPickLength = 4,
        WeapJamLength = 4,
        BlindLength = 4,
        LocoLength = 5,
        CyberwareLength = 6,
        VulnLength = 5,
        WeakLength = 5,
        SuicideLength = 6,
        MadLength = 6,
        CollapseLength = 6,
        GrenadeLength = 6,
        ICEBreakerLength = 8,
        Lvl1MinigameDuration = 30,
        Lvl2MinigameDuration = 30,
        Lvl3MinigameDuration = 30,
        Lvl4MinigameDuration = 30,
        RelaxedSpeed = 800,
        AlertedSpeed = 1200,
        CombatSpeed = 1600,
        SniperSpeed = 400,
        ParadeRelaxedSpeed = 120,
        ParadeAlertedSpeed = 200,
        PeriMedRange = 30,
        TurretSpeed = 800,
        ConsumableCooldown = 120,
        CombatStimRegenRate = 16.67,
        ApplicationEffectChance = 0.1,
        ApplicationEffectDuration = 8,
        BerserkDuration = 30,
        BerserkCooldown = 90,
        SmartWeapLockOnTime = 0.5,
        SmartWeapLockOutTime = 5,
        GlowingTattoos = 1,
        KangTaoSmartDisrupt = 1,
        --ExtraTimeDilation = 3
        Sandy0Dilation = 1.5,
        Sandy1Dilation = 2,
        Sandy2Dilation = 2.5,
        Sandy3Dilation = 3,
        LegenLoot = true,
        TygerHackRes = 3,
        ScavHackRes = 3,
        VDBHackRes = 6,
        MiliHackRes = 4,
        AraHackRes = 6,
        KangHackRes = 5,
        CorpHackRes = 4,
        TrauHackRes = 5,
        NCPDHackRes = 4,
        MaxtHackRes = 6,
        NUSAHackRes = 6
    }




    
    nativeSettings.addSwitch("/ENC/Overall", "Mod status", "Enables or disables the mod (Requires restart)", curSettings.EnableMod, defaultSettings.EnableMod, function(state)
		curSettings.EnableMod = state
		config.saveFile("Data/config_new.json", curSettings)
	 end)

    nativeSettings.addRangeFloat("/ENC/Main", "T1 Enemy Health Multiplier", "Adjust the health multiplier for Tier 1 enemies", 0.5, 10.0, 0.1, "%.1f", curSettings.T1EnemyHP, defaultSettings.T1EnemyHP, function(state)
        curSettings.T1EnemyHP = state
        config.saveFile("Data/config_new.json", curSettings)
        T1EnemyHP = curSettings.T1EnemyHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "T1 Enemy Damage Multiplier", "Adjust the damage multiplier for Tier 1 enemies", 0.5, 10.0, 0.5, "%.1f", curSettings.T1EnemyDmg, defaultSettings.T1EnemyDmg, function(state)
        curSettings.T1EnemyDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        T1EnemyDmg = curSettings.T1EnemyDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "T2 Enemy Health Multiplier", "Adjust the health multiplier for Tier 2 enemies", 0.5, 10.0, 0.1, "%.1f", curSettings.T2EnemyHP, defaultSettings.T2EnemyHP, function(state)
        curSettings.T2EnemyHP = state
        config.saveFile("Data/config_new.json", curSettings)
        T2EnemyHP = curSettings.T2EnemyHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "T2 Enemy Damage Multiplier", "Adjust the damage multiplier for Tier 2 enemies", 0.5, 10.0, 0.5, "%.1f", curSettings.T2EnemyDmg, defaultSettings.T2EnemyDmg, function(state)
        curSettings.T2EnemyDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        T2EnemyDmg = curSettings.T2EnemyDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "T3 Enemy Health Multiplier", "Adjust the health multiplier for Tier 3 enemies", 0.5, 10.0, 0.1, "%.1f", curSettings.T3EnemyHP, defaultSettings.T3EnemyHP, function(state)
        curSettings.T3EnemyHP = state
        config.saveFile("Data/config_new.json", curSettings)
        T3EnemyHP = curSettings.T3EnemyHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "T3 Enemy Damage Multiplier", "Adjust the damage multiplier for Tier 3 enemies", 0.5, 10.0, 0.5, "%.1f", curSettings.T3EnemyDmg, defaultSettings.T3EnemyDmg, function(state)
        curSettings.T3EnemyDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        T3EnemyDmg = curSettings.T3EnemyDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Elite Health Multiplier", "Adjust the health multiplier for elite enemies", 0.1, 10.0, 0.1, "%.1f", curSettings.EliteHP, defaultSettings.EliteHP, function(state)
        curSettings.EliteHP = state
        config.saveFile("Data/config_new.json", curSettings)
        EliteHP = curSettings.EliteHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Elite Damage Multiplier", "Adjust the damage multiplier for elite enemies", 0.1, 10.0, 0.1, "%.1f", curSettings.EliteDmg, defaultSettings.EliteDmg, function(state)
        curSettings.EliteDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        EliteDmg = curSettings.EliteDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Boss Health Multiplier", "Adjust the health multiplier for bosses in general, includes minibosses and main bosses. Does not include Maxtac", 0.1, 10.0, 0.1, "%.1f", curSettings.BossHP, defaultSettings.BossHP, function(state)
        curSettings.BossHP = state
        config.saveFile("Data/config_new.json", curSettings)
        BossHP = curSettings.BossHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Boss Damage Multiplier", "Adjust the damage multiplier for bosses in general, includes minibosses and main bosses. Does not include Maxtac", 0.1, 10.0, 0.1, "%.1f", curSettings.BossDmg, defaultSettings.BossDmg, function(state)
        curSettings.BossDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        BossDmg = curSettings.BossDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/BossSettings", "Main Boss Health Multiplier", "Adjust the health multiplier for main bosses only", 0.1, 10.0, 0.1, "%.1f", curSettings.MainBossHP, defaultSettings.MainBossHP, function(state)
        curSettings.MainBossHP = state
        config.saveFile("Data/config_new.json", curSettings)
        MainBossHP = curSettings.MainBossHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Boss Max Damage Cap", "Adjust the max damage cap for all bosses. In percent of health", 0, 10.0, 1, curSettings.BossMaxDmgPerHitStat, defaultSettings.BossMaxDmgPerHitStat, function(state)
        curSettings.BossMaxDmgPerHitStat = state
        config.saveFile("Data/config_new.json", curSettings)
        BossMaxDmgPerHitStat = curSettings.BossMaxDmgPerHitStat
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Maxtac Max Damage Cap", "Adjust the max damage cap for Maxtac. In percent of health", 0, 10.0, 1, curSettings.MaxtacMaxDmgPerHitStat, defaultSettings.MaxtacMaxDmgPerHitStat, function(state)
        curSettings.MaxtacMaxDmgPerHitStat = state
        config.saveFile("Data/config_new.json", curSettings)
        MaxtacMaxDmgPerHitStat = curSettings.MaxtacMaxDmgPerHitStat
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Smasher Max Damage Cap Subtraction", "Substracts this value from the boss max damage cap. In percent of health. Overall damage cap should be greater than or equal to zero", -10, 0.0, 1, curSettings.SmasherMaxDmgPerHitStat, defaultSettings.SmasherMaxDmgPerHitStat, function(state)
        curSettings.SmasherMaxDmgPerHitStat = state
        config.saveFile("Data/config_new.json", curSettings)
        SmasherMaxDmgPerHitStat = curSettings.SmasherMaxDmgPerHitStat
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Oda Max Damage Cap Substraction", "Substracts this value from the boss max damage cap. In percent of health. Overall damage cap should be greater than or equal to zero", -10, 0.0, 1, curSettings.OdaMaxDmgPerHit, defaultSettings.OdaMaxDmgPerHit, function(state)
        curSettings.OdaMaxDmgPerHit = state
        config.saveFile("Data/config_new.json", curSettings)
        OdaMaxDmgPerHit = curSettings.OdaMaxDmgPerHit
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Sasquatch Max Damage Cap Subtraction", "Substracts this value from the boss max damage cap. In percent of health. Overall damage cap should be greater than or equal to zero", -10, 0.0, 1, curSettings.SasquatchMaxDmgPerHit, defaultSettings.SasquatchMaxDmgPerHit, function(state)
        curSettings.SasquatchMaxDmgPerHit = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchMaxDmgPerHit = curSettings.SasquatchMaxDmgPerHit
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Kurt Max Damage Cap Subtraction", "Substracts this value from the boss max damage cap. In percent of health. Overall damage cap should be greater than or equal to zero", -10, 0.0, 1, curSettings.KurtMaxDmgPerHit, defaultSettings.KurtMaxDmgPerHit, function(state)
        curSettings.KurtMaxDmgPerHit = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtMaxDmgPerHit = curSettings.KurtMaxDmgPerHit
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Yasha Max Damage Cap Subtraction", "Substracts this value from the boss max damage cap. In percent of health. Overall damage cap should be greater than or equal to zero", -10, 0.0, 1, curSettings.YashaMaxDmgPerHit, defaultSettings.YashaMaxDmgPerHit, function(state)
        curSettings.YashaMaxDmgPerHit = state
        config.saveFile("Data/config_new.json", curSettings)
        YashaMaxDmgPerHit = curSettings.YashaMaxDmgPerHit
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/BossSettings", "Ribakov Max Damage Cap Subtraction", "Substracts this value from the boss max damage cap. In percent of health. Overall damage cap should be greater than or equal to zero", -10, 0.0, 1, curSettings.RibakovMaxDmgPerHitStat, defaultSettings.RibakovMaxDmgPerHitStat, function(state)
        curSettings.RibakovMaxDmgPerHitStat = state
        config.saveFile("Data/config_new.json", curSettings)
        RibakovMaxDmgPerHitStat = curSettings.RibakovMaxDmgPerHitStat
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Maxtac Health Multiplier", "Adjust the health multiplier for Maxtac", 0.1, 10.0, 0.1, "%.1f", curSettings.MaxtacHP, defaultSettings.MaxtacHP, function(state)
        curSettings.MaxtacHP = state
        config.saveFile("Data/config_new.json", curSettings)
        MaxtacHP = curSettings.MaxtacHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Maxtac Damage Multiplier", "Adjust the damage multiplier for Maxtac", 0.1, 10.0, 0.1, "%.1f", curSettings.MaxtacDmg, defaultSettings.MaxtacDmg, function(state)
        curSettings.MaxtacDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        MaxtacDmg = curSettings.MaxtacDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Light Subdermal Armor Multiplier", "Adjust the armor multiplier for enemies with light subdermal armor", 0.1, 10.0, 0.1, "%.1f", curSettings.LowSubArmor, defaultSettings.LowSubArmor, function(state)
        curSettings.LowSubArmor = state
        config.saveFile("Data/config_new.json", curSettings)
        LowSubArmor = curSettings.LowSubArmor
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Default Subdermal Armor Multiplier", "Adjust the armor multiplier for enemies with default subdermal armor", 0.1, 10.0, 0.1, "%.1f", curSettings.NormSubArmor, defaultSettings.NormSubArmor, function(state)
        curSettings.NormSubArmor = state
        config.saveFile("Data/config_new.json", curSettings)
        NormSubArmor = curSettings.NormSubArmor
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Medium Subdermal Armor Multiplier", "Adjust the armor multiplier for enemies with medium subdermal armor", 0.1, 10.0, 0.1, "%.1f", curSettings.MedSubArmor, defaultSettings.MedSubArmor, function(state)
        curSettings.MedSubArmor = state
        config.saveFile("Data/config_new.json", curSettings)
        MedSubArmor = curSettings.MedSubArmor
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Heavy Subdermal Armor Multiplier", "Adjust the armor multiplier for enemies with heavy subdermal armor", 0.1, 10.0, 0.1, "%.1f", curSettings.HighSubArmor, defaultSettings.HighSubArmor, function(state)
        curSettings.HighSubArmor = state
        config.saveFile("Data/config_new.json", curSettings)
        HighSubArmor = curSettings.HighSubArmor
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Main", "Minotaur Mech Weakspot Health Multiplier", "Adjust the health multiplier for the Minotaur's weakspots", 0.1, 10.0, 0.1, "%.1f", curSettings.MinoWeakspot, defaultSettings.MinoWeakspot, function(state)
        curSettings.MinoWeakspot = state
        config.saveFile("Data/config_new.json", curSettings)
        MinoWeakspot = curSettings.MinoWeakspot
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Oda", "Oda Health Multiplier", "Adjust the health multiplier for Oda. Vanilla is 3, ENC default is 3", 0.1, 10.0, 0.1, "%.1f", curSettings.OdaHP, defaultSettings.OdaHP, function(state)
        curSettings.OdaHP = state
        config.saveFile("Data/config_new.json", curSettings)
        OdaHP = curSettings.OdaHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Oda", "Oda Damage Multiplier", "Adjust the damage multiplier for Oda. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.OdaDmg, defaultSettings.OdaDmg, function(state)
        curSettings.OdaDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        OdaDmg = curSettings.OdaDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Oda", "Oda Stealth Healing Rate", "How much health Oda restores each second during stealth mode - In percent. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.OdaStealthHealRate, defaultSettings.OdaStealthHealRate, function(state)
        curSettings.OdaStealthHealRate = state
        config.saveFile("Data/config_new.json", curSettings)
        OdaStealthHealRate = curSettings.OdaStealthHealRate
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Sasquatch", "Sasquatch Health Multiplier", "Adjust the health multiplier for Sasquatch. Vanilla is 3.5, ENC default is 3.5", 0.1, 10.0, 0.1, "%.1f", curSettings.SasquatchHP, defaultSettings.SasquatchHP, function(state)
        curSettings.SasquatchHP = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchHP = curSettings.SasquatchHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Sasquatch", "Sasquatch Damage Multiplier", "Adjust the damage multiplier for Sasquatch. Vanilla is 0.597, ENC default is 1.5", 0.1, 10.0, 0.1, "%.1f", curSettings.SasquatchDmg, defaultSettings.SasquatchDmg, function(state)
        curSettings.SasquatchDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchDmg = curSettings.SasquatchDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Sasquatch", "Sasquatch Grab Attack Damage Multiplier", "Adjust the damage multiplier for Sasquatch's grab attack. ENC default is 0.75", 0.1, 10.0, 0.05, "%.2f", curSettings.SasquatchGrabDmg, defaultSettings.SasquatchGrabDmg, function(state)
        curSettings.SasquatchGrabDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchGrabDmg = curSettings.SasquatchGrabDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Sasquatch", "Sasquatch Weakspot Health Multiplier", "Adjust the health multiplier for Sasquatch's weakspot", 0.1, 10.0, 0.1, "%.1f", curSettings.SasquatchWeakspotHP, defaultSettings.SasquatchWeakspotHP, function(state)
        curSettings.SasquatchWeakspotHP = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchWeakspotHP = curSettings.SasquatchWeakspotHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Sasquatch", "Sasquatch Juice Tank Healing Rate", "How much health Sasquatch restores each second when her juice tank is intact - In percent. Vanilla is 0.5, ENC default is 0.3", 0.1, 10.0, 0.1, "%.1f", curSettings.SasquatchRegen, defaultSettings.SasquatchRegen, function(state)
        curSettings.SasquatchRegen = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchRegen = curSettings.SasquatchRegen
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Sasquatch", "Sasquatch Combat Stim Healing Rate", "How much health Sasquatch's combat stim restores each second - In percent. Combat Stim lasts for 3 seconds", 0.1, 10.0, 0.1, "%.1f", curSettings.SasquatchCombatStimRegen, defaultSettings.SasquatchCombatStimRegen, function(state)
        curSettings.SasquatchCombatStimRegen = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchCombatStimRegen = curSettings.SasquatchCombatStimRegen
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/Sasquatch", "Sasquatch Combat Stim Cooldown", "How long before Sasquatch can use combat stim again - In seconds", 0, 300, 1, curSettings.SasquatchCombatStimCooldown, defaultSettings.SasquatchCombatStimCooldown, function(state)
        curSettings.SasquatchCombatStimCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchCombatStimCooldown = curSettings.SasquatchCombatStimCooldown
        dofile("Modules/reloadable_config.lua")
	 end)

    nativeSettings.addRangeInt("/ENC/Sasquatch", "Sasquatch Berserk Duration", "How long Sasquatch's Berserk lasts - In seconds", 0, 120, 1, curSettings.SasquatchBerserkDuration, defaultSettings.SasquatchBerserkDuration, function(state)
        curSettings.SasquatchBerserkDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchBerserkDuration = curSettings.SasquatchBerserkDuration
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Sasquatch", "Sasquatch Berserk Cooldown", "How long before Sasquatch's Berserk can be activated again - In seconds", 0, 300, 1, curSettings.SasquatchBerserkCooldown, defaultSettings.SasquatchBerserkCooldown, function(state)
        curSettings.SasquatchBerserkCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        SasquatchBerserkCooldown = curSettings.SasquatchBerserkCooldown
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeFloat("/ENC/Smasher", "Smasher Health Multiplier", "Adjust the health multiplier for Smasher. Vanilla is 3.5, ENC default is 3.5", 0.1, 10.0, 0.1, "%.1f", curSettings.SmasherHP, defaultSettings.SmasherHP, function(state)
        curSettings.SmasherHP = state
        config.saveFile("Data/config_new.json", curSettings)
        SmasherHP = curSettings.SmasherHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Smasher", "Smasher Damage Multiplier", "Adjust the damage multiplier for Smasher. Vanilla is 0.7, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.SmasherDmg, defaultSettings.SmasherDmg, function(state)
        curSettings.SmasherDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        SmasherDmg = curSettings.SmasherDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Smasher", "Smasher Injector Healing Rate", "How much health Smasher restores each second - In percent. Injector lasts for 6 seconds", 0.1, 10.0, 0.1, "%.1f", curSettings.SmasherRegen, defaultSettings.SmasherRegen, function(state)
        curSettings.SmasherRegen = state
        config.saveFile("Data/config_new.json", curSettings)
        SmasherRegen = curSettings.SmasherRegen
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/Smasher", "Smasher Berserk Duration", "How long Smasher's Berserk lasts - In seconds", 0, 120, 1, curSettings.SmasherBerserkDuration, defaultSettings.SmasherBerserkDuration, function(state)
        curSettings.SmasherBerserkDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        SmasherBerserkDuration = curSettings.SmasherBerserkDuration
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Smasher", "Smasher Berserk Cooldown", "How long before Smasher's Berserk can be activated again - In seconds", 0, 300, 1, curSettings.SmasherBerserkCooldown, defaultSettings.SmasherBerserkCooldown, function(state)
        curSettings.SmasherBerserkCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        SmasherBerserkCooldown = curSettings.SmasherBerserkCooldown
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeFloat("/ENC/Chimera", "Chimera Health Multiplier", "Adjust the health multiplier for Chimera. Vanilla is 4.66, ENC default is 4.66", 0.1, 10.0, 0.1, "%.2f", curSettings.ChimeraHP, defaultSettings.ChimeraHP, function(state)
        curSettings.ChimeraHP = state
        config.saveFile("Data/config_new.json", curSettings)
        ChimeraHP = curSettings.ChimeraHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Chimera", "Chimera Damage Multiplier", "Adjust the damage multiplier for Chimera. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.ChimeraDmg, defaultSettings.ChimeraDmg, function(state)
        curSettings.ChimeraDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        ChimeraDmg = curSettings.ChimeraDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Chimera", "Chimera Metalstorm Damage Multiplier", "Adjust the damage multiplier for the Chimera's metalstorm attack. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.ChimeraMetalstormDmg, defaultSettings.ChimeraMetalstormDmg, function(state)
        curSettings.ChimeraMetalstormDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        ChimeraMetalstormDmg = curSettings.ChimeraMetalstormDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Chimera", "Chimera Explosive Metalstorm Damage Multiplier", "Adjust the damage multiplier for the Chimera's explosive metalstorm attack. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.ChimeraExplosiveMetalstormDmg, defaultSettings.ChimeraExplosiveMetalstormDmg, function(state)
        curSettings.ChimeraExplosiveMetalstormDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        ChimeraExplosiveMetalstormDmg = curSettings.ChimeraExplosiveMetalstormDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Kurt", "Kurt Health Multiplier", "Adjust the health multiplier for Kurt Hansen. Vanilla is 4.66, ENC default is 4.66", 0.1, 10.0, 0.1, "%.2f", curSettings.KurtHP, defaultSettings.KurtHP, function(state)
        curSettings.KurtHP = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtHP = curSettings.KurtHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Kurt", "Kurt Damage Multiplier", "Adjust the damage multiplier for Kurt Hansen. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.KurtDmg, defaultSettings.KurtDmg, function(state)
        curSettings.KurtDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtDmg = curSettings.KurtDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Kurt", "Kurt Knife Throw Damage Multiplier", "Adjust the damage multiplier for Kurt Hansen's knife throw attack.", 0.1, 10.0, 0.1, "%.1f", curSettings.KurtKnifeThrowDmg, defaultSettings.KurtKnifeThrowDmg, function(state)
        curSettings.KurtKnifeThrowDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtKnifeThrowDmg = curSettings.KurtKnifeThrowDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Kurt", "Kurt Shotgun Damage Multiplier", "Adjust the damage multiplier for Kurt Hansen's shotgun.", 0.1, 10.0, 0.1, "%.1f", curSettings.KurtShotgunDmg, defaultSettings.KurtShotgunDmg, function(state)
        curSettings.KurtShotgunDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtShotgunDmg = curSettings.KurtShotgunDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Kurt", "Kurt LMG Damage Multiplier", "Adjust the damage multiplier for Kurt Hansen's light machine gun.", 0.1, 10.0, 0.1, "%.1f", curSettings.KurtLmgDmg, defaultSettings.KurtLmgDmg, function(state)
        curSettings.KurtLmgDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtLmgDmg = curSettings.KurtLmgDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/Kurt", "Kurt Combat Stim Cooldown", "How long before Kurt can use combat stim again - In seconds", 0, 300, 1, curSettings.KurtCombatStimCooldown, defaultSettings.KurtCombatStimCooldown, function(state)
        curSettings.KurtCombatStimCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        KurtCombatStimCooldown = curSettings.KurtCombatStimCooldown
        dofile("Modules/reloadable_config.lua")
	 end)

    nativeSettings.addRangeFloat("/ENC/Yasha", "Yasha Health Multiplier", "Adjust the health multiplier for Yasha Ivanov. Vanilla is 2, ENC default is 2", 0.1, 10.0, 0.1, "%.2f", curSettings.YashaHP, defaultSettings.YashaHP, function(state)
        curSettings.YashaHP = state
        config.saveFile("Data/config_new.json", curSettings)
        YashaHP = curSettings.YashaHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Yasha", "Yasha Damage Multiplier", "Adjust the damage multiplier for Yasha Ivanov. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.YashaDmg, defaultSettings.YashaDmg, function(state)
        curSettings.YashaDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        YashaDmg = curSettings.YashaDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Yasha", "Yasha Heal Multiplier", "Adjust the heal rate for Yasha Ivanov. Vanilla is 0.5, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.YashaHealRate, defaultSettings.YashaHealRate, function(state)
        curSettings.YashaHealRate = state
        config.saveFile("Data/config_new.json", curSettings)
        YashaHealRate = curSettings.YashaHealRate
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Ribakov", "Ribakov Health Multiplier", "Adjust the health multiplier for Boris Ribakov. Vanilla is 1.5, ENC default is 1.5", 0.1, 10.0, 0.1, "%.2f", curSettings.RibakovHP, defaultSettings.RibakovHP, function(state)
        curSettings.RibakovHP = state
        config.saveFile("Data/config_new.json", curSettings)
        RibakovHP = curSettings.RibakovHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Ribakov", "Ribakov Damage Multiplier", "Adjust the damage multiplier for Boris Ribakov. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.RibakovDmg, defaultSettings.RibakovDmg, function(state)
        curSettings.RibakovDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        RibakovDmg = curSettings.RibakovDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeInt("/ENC/Ribakov", "Ribakov Combat Stim Cooldown", "How long before Ribakov can use combat stim again - In seconds", 0, 300, 1, curSettings.RibakovCombatStimCooldown, defaultSettings.RibakovCombatStimCooldown, function(state)
        curSettings.RibakovCombatStimCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        RibakovCombatStimCooldown = curSettings.RibakovCombatStimCooldown
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeFloat("/ENC/Boxing", "Buck Health Multiplier", "Adjust the health multiplier for Buck. Vanilla is 0.52, ENC default is 1", 0.1, 10.0, 0.1, "%.2f", curSettings.BuckHP, defaultSettings.BuckHP, function(state)
        curSettings.BuckHP = state
        config.saveFile("Data/config_new.json", curSettings)
        BuckHP = curSettings.BuckHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Buck Damage Multiplier", "Adjust the damage multiplier for Buck. Vanilla is 0.5, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.BuckDmg, defaultSettings.BuckDmg, function(state)
        curSettings.BuckDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        BuckDmg = curSettings.BuckDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Cesar Health Multiplier", "Adjust the health multiplier for Cesar. Vanilla is 0.52, ENC default is 1", 0.1, 10.0, 0.1, "%.2f", curSettings.CesarHP, defaultSettings.CesarHP, function(state)
        curSettings.CesarHP = state
        config.saveFile("Data/config_new.json", curSettings)
        CesarHP = curSettings.CesarHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Cesar Damage Multiplier", "Adjust the damage multiplier for Cesar. Vanilla is 0.5, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.CesarDmg, defaultSettings.CesarDmg, function(state)
        curSettings.CesarDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        CesarDmg = curSettings.CesarDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Ozob Health Multiplier", "Adjust the health multiplier for Ozob. Vanilla is 0.67, ENC default is 1", 0.1, 10.0, 0.1, "%.2f", curSettings.OzobHP, defaultSettings.OzobHP, function(state)
        curSettings.OzobHP = state
        config.saveFile("Data/config_new.json", curSettings)
        OzobHP = curSettings.OzobHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Ozob Damage Multiplier", "Adjust the damage multiplier for Ozob. Vanilla is 0.5, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.OzobDmg, defaultSettings.OzobDmg, function(state)
        curSettings.OzobDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        OzobDmg = curSettings.OzobDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Razor Health Multiplier", "Adjust the health multiplier for Razor. Vanilla is 1, ENC default is 1", 0.1, 10.0, 0.1, "%.2f", curSettings.RazorHP, defaultSettings.RazorHP, function(state)
        curSettings.RazorHP = state
        config.saveFile("Data/config_new.json", curSettings)
        RazorHP = curSettings.RazorHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Razor Damage Multiplier", "Adjust the damage multiplier for Razor. Vanilla is 0.75, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.RazorDmg, defaultSettings.RazorDmg, function(state)
        curSettings.RazorDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        RazorDmg = curSettings.RazorDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Rhino Health Multiplier", "Adjust the health multiplier for Rhino. Vanilla is 0.67, ENC default is 1", 0.1, 10.0, 0.1, "%.2f", curSettings.RhinoHP, defaultSettings.RhinoHP, function(state)
        curSettings.RhinoHP = state
        config.saveFile("Data/config_new.json", curSettings)
        RhinoHP = curSettings.RhinoHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Rhino Damage Multiplier", "Adjust the damage multiplier for Rhino. Vanilla is 0.5, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.RhinoDmg, defaultSettings.RhinoDmg, function(state)
        curSettings.RhinoDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        RhinoDmg = curSettings.RhinoDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Twins Health Multiplier", "Adjust the health multiplier for the Twins. Vanilla is 0.39, ENC default is 0.5", 0.1, 10.0, 0.1, "%.2f", curSettings.TwinHP, defaultSettings.TwinHP, function(state)
        curSettings.TwinHP = state
        config.saveFile("Data/config_new.json", curSettings)
        TwinHP = curSettings.TwinHP
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/Boxing", "Twins Damage Multiplier", "Adjust the damage multiplier for the Twins. Vanilla is 0.5, ENC default is 1", 0.1, 10.0, 0.1, "%.1f", curSettings.TwinDmg, defaultSettings.TwinDmg, function(state)
        curSettings.TwinDmg = state
        config.saveFile("Data/config_new.json", curSettings)
        TwinDmg = curSettings.TwinDmg
        dofile("Modules/reloadable_config.lua")
    end)

    nativeSettings.addSwitch("/ENC/Breach", "Enable Breach Protocol", "Adds a reworked breach protocol minigame to netrunners and bosses (Requires restart)", curSettings.EnableBreachProtocol, defaultSettings.EnableBreachProtocol, function(state)
		curSettings.EnableBreachProtocol = state
		config.saveFile("Data/config_new.json", curSettings)
	 end)

     nativeSettings.addSwitch("/ENC/Breach", "Remove Breach Protocol Restrictions", "If enabled, breach protocol can be used on all enemies without any restrictions", curSettings.RemoveBreachRestrictions, defaultSettings.RemoveBreachRestrictions, function(state)
        curSettings.RemoveBreachRestrictions = state
        config.saveFile("Data/config_new.json", curSettings)
        RemoveBreachRestrictions = curSettings.RemoveBreachRestrictions
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addSwitch("/ENC/Breach", "Enable Ultimate Quickhacks in Breach Protocol", "If enabled, ultimate quickhacks can be uploaded during breach protocol (Requires restart)", curSettings.EnableUltimateQuickhacksBreach, defaultSettings.EnableUltimateQuickhacksBreach, function(state)
		curSettings.EnableUltimateQuickhacksBreach = state
		config.saveFile("Data/config_new.json", curSettings)
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "ICEPick Sequence Length", "Length of the ICEPick daemon which reduces ram cost by 3 (Requires restart)", 4, 6, 1, curSettings.ICEPickLength, defaultSettings.ICEPickLength, function(state)
        curSettings.ICEPickLength = state
        config.saveFile("Data/config_new.json", curSettings)
        ICEPickLength = curSettings.ICEPickLength
	 end)


     nativeSettings.addRangeInt("/ENC/Breach", "Mass Weapon Jam Sequence Length", "Length of the Mass Weapon Jam daemon (Requires restart)", 4, 6, 1, curSettings.WeapJamLength, defaultSettings.WeapJamLength, function(state)
        curSettings.WeapJamLength = state
        config.saveFile("Data/config_new.json", curSettings)
        WeapJamLength = curSettings.WeapJamLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Reboot Optics Sequence Length", "Length of the Mass Reboot Optics daemon (Requires restart)", 4, 6, 1, curSettings.BlindLength, defaultSettings.BlindLength, function(state)
        curSettings.BlindLength = state
        config.saveFile("Data/config_new.json", curSettings)
        BlindLength = curSettings.BlindLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Locomotion Malfunction Sequence Length", "Length of the Mass Locomotion Malfunction daemon (Requires restart)", 4, 8, 1, curSettings.LocoLength, defaultSettings.LocoLength, function(state)
        curSettings.LocoLength = state
        config.saveFile("Data/config_new.json", curSettings)
        LocoLength = curSettings.LocoLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Cyberware Malfunction Sequence Length", "Length of the Mass Cyberware Malfunction daemon (Requires restart)", 4, 8, 1, curSettings.CyberwareLength, defaultSettings.CyberwareLength, function(state)
        curSettings.CyberwareLength = state
        config.saveFile("Data/config_new.json", curSettings)
        CyberwareLength = curSettings.CyberwareLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Vulnerability Sequence Length", "Length of the Mass Vulnerability daemon (Requires restart)", 4, 8, 1, curSettings.VulnLength, defaultSettings.VulnLength, function(state)
        curSettings.VulnLength = state
        config.saveFile("Data/config_new.json", curSettings)
        VulnLength = curSettings.VulnLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Weakness Sequence Length", "Length of the Mass Weakness daemon (Requires restart)", 4, 8, 1, curSettings.WeakLength, defaultSettings.WeakLength, function(state)
        curSettings.WeakLength = state
        config.saveFile("Data/config_new.json", curSettings)
        WeakLength = curSettings.WeakLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Suicide Sequence Length", "Length of the Mass Suicide daemon (Requires restart)", 4, 10, 1, curSettings.SuicideLength, defaultSettings.SuicideLength, function(state)
        curSettings.SuicideLength = state
        config.saveFile("Data/config_new.json", curSettings)
        SuicideLength = curSettings.SuicideLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Madness Sequence Length", "Length of the Mass Madness daemon (Requires restart)", 4, 10, 1, curSettings.MadLength, defaultSettings.MadLength, function(state)
        curSettings.MadLength = state
        config.saveFile("Data/config_new.json", curSettings)
        MadLength = curSettings.MadLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass System Collapse Sequence Length", "Length of the Mass System Collapse daemon (Requires restart)", 4, 10, 1, curSettings.CollapseLength, defaultSettings.CollapseLength, function(state)
        curSettings.CollapseLength = state
        config.saveFile("Data/config_new.json", curSettings)
        CollapseLength = curSettings.CollapseLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Mass Detonate Grenade Sequence Length", "Length of the Mass Detonate Grenade daemon (Requires restart)", 4, 10, 1, curSettings.GrenadeLength, defaultSettings.GrenadeLength, function(state)
        curSettings.GrenadeLength = state
        config.saveFile("Data/config_new.json", curSettings)
        GrenadeLength = curSettings.GrenadeLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "ICEBreaker Sequence Length", "Length of the ICEBreaker daemon which permanently disables advanced quickhack defenses (Requires restart)", 4, 10, 1, curSettings.ICEBreakerLength, defaultSettings.ICEBreakerLength, function(state)
        curSettings.ICEBreakerLength = state
        config.saveFile("Data/config_new.json", curSettings)
        ICEBreakerLength = curSettings.ICEBreakerLength
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Level 1 Minigame Time Limit", "Time limit for Level 1 Breach Protocol minigame", 10, 120, 1, curSettings.Lvl1MinigameDuration, defaultSettings.Lvl1MinigameDuration, function(state)
        curSettings.Lvl1MinigameDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        Lvl1MinigameDuration = curSettings.Lvl1MinigameDuration
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Level 2 Minigame Time Limit", "Time limit for Level 2 Breach Protocol minigame", 10, 120, 1, curSettings.Lvl2MinigameDuration, defaultSettings.Lvl2MinigameDuration, function(state)
        curSettings.Lvl2MinigameDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        Lvl2MinigameDuration = curSettings.Lvl2MinigameDuration
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Level 3 Minigame Time Limit", "Time limit for Level 3 Breach Protocol minigame", 10, 120, 1, curSettings.Lvl3MinigameDuration, defaultSettings.Lvl3MinigameDuration, function(state)
        curSettings.Lvl3MinigameDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        Lvl3MinigameDuration = curSettings.Lvl3MinigameDuration
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Breach", "Level 4 Minigame Time Limit", "Time limit for Level 4 Breach Protocol minigame", 10, 120, 1, curSettings.Lvl4MinigameDuration, defaultSettings.Lvl4MinigameDuration, function(state)
        curSettings.Lvl4MinigameDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        Lvl4MinigameDuration = curSettings.Lvl4MinigameDuration
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Relaxed State Detection Speed", "Detection speed of enemies in relaxed state. Vanilla is 400, ENC default is 800", 100, 2000, 100, curSettings.RelaxedSpeed, defaultSettings.RelaxedSpeed, function(state)
        curSettings.RelaxedSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        RelaxedSpeed = curSettings.RelaxedSpeed
        dofile("Modules/Detection.lua")
	 end)

    nativeSettings.addRangeInt("/ENC/Stealth", "Alerted State Detection Speed", "Detection speed of enemies in alerted state. Vanilla is 400, ENC default is 1200", 100, 2000, 100, curSettings.AlertedSpeed, defaultSettings.AlertedSpeed, function(state)
        curSettings.AlertedSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        AlertedSpeed = curSettings.AlertedSpeed
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Combat State Detection Speed", "Detection speed of enemies in combat state. Vanilla is 400, ENC default is 1600", 100, 2000, 100, curSettings.CombatSpeed, defaultSettings.CombatSpeed, function(state)
        curSettings.CombatSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        CombatSpeed = curSettings.CombatSpeed
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Sniper Relaxed State Detection Speed", "Detection speed of snipers in relaxed state. Vanilla is 40, ENC default is 150", 40, 2000, 10, curSettings.SniperSpeed, defaultSettings.SniperSpeed, function(state)
        curSettings.SniperSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        SniperSpeed = curSettings.SniperSpeed
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Parade Sniper Relaxed State Detection Speed", "Relaxed detection speed of Arasaka Snipers in the Parade. Vanilla is 40, ENC default is 120", 40, 2000, 10, curSettings.ParadeRelaxedSpeed, defaultSettings.ParadeRelaxedSpeed, function(state)
        curSettings.ParadeRelaxedSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        ParadeRelaxedSpeed = curSettings.ParadeRelaxedSpeed
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Parade Sniper Alerted State Detection Speed", "Alerted detection speed of Arasaka Snipers in the Parade. Vanilla is 100, ENC default is 200", 100, 2000, 100, curSettings.ParadeAlertedSpeed, defaultSettings.ParadeAlertedSpeed, function(state)
        curSettings.ParadeAlertedSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        ParadeAlertedSpeed = curSettings.ParadeAlertedSpeed
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Peripheral range", "Peripheral range of enemies. Vanilla is 20, ENC default is 30", 5, 50, 1, curSettings.PeriMedRange, defaultSettings.PeriMedRange, function(state)
        curSettings.PeriMedRange = state
        config.saveFile("Data/config_new.json", curSettings)
        PeriMedRange = curSettings.PeriMedRange
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Stealth", "Turret Detection Speed", "Detection speed of turrets. Vanilla is 300, ENC default is 800", 100, 2000, 100, curSettings.TurretSpeed, defaultSettings.TurretSpeed, function(state)
        curSettings.TurretSpeed = state
        config.saveFile("Data/config_new.json", curSettings)
        TurretSpeed = curSettings.TurretSpeed
        dofile("Modules/Detection.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/StatusEffects", "Consumables Cooldown", "How often enemies can use consumables such as combat stims and kers - In seconds. Vanilla is 60", 10, 300, 1, curSettings.ConsumableCooldown, defaultSettings.ConsumableCooldown, function(state)
        curSettings.ConsumableCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        ConsumableCooldown = curSettings.ConsumableCooldown
        dofile("Modules/StatusEffects.lua")
	 end)

     nativeSettings.addRangeFloat("/ENC/StatusEffects", "Combat Stim Healing Rate", "How much health combat stim restores each second - In percent. Vanilla is 16.67", 0.00, 50.00, 0.01, "%.2f", curSettings.CombatStimRegenRate, defaultSettings.CombatStimRegenRate, function(state)
        curSettings.CombatStimRegenRate = state
        config.saveFile("Data/config_new.json", curSettings)
        CombatStimRegenRate = curSettings.CombatStimRegenRate
        dofile("Modules/StatusEffects.lua")
    end)

     nativeSettings.addRangeFloat("/ENC/StatusEffects", "Application Effect Chance", "Probability of enemies applying elemental effects such as burn and poison on the player", 0.0, 1.0, 0.1, "%.1f", curSettings.ApplicationEffectChance, defaultSettings.ApplicationEffectChance, function(state)
        curSettings.ApplicationEffectChance = state
        config.saveFile("Data/config_new.json", curSettings)
        ApplicationEffectChance = curSettings.ApplicationEffectChance
        dofile("Modules/StatusEffects.lua")
    end)

    nativeSettings.addRangeInt("/ENC/StatusEffects", "Application Effect Duration", "How long elemental effects such as burn and poison last - In seconds", 1, 30, 1, curSettings.ApplicationEffectDuration, defaultSettings.ApplicationEffectDuration, function(state)
        curSettings.ApplicationEffectDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        ApplicationEffectDuration = curSettings.ApplicationEffectDuration
        dofile("Modules/StatusEffects.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/StatusEffects", "Berserk Duration", "How long Berserk lasts - In seconds", 0, 120, 1, curSettings.BerserkDuration, defaultSettings.BerserkDuration, function(state)
        curSettings.BerserkDuration = state
        config.saveFile("Data/config_new.json", curSettings)
        BerserkDuration = curSettings.BerserkDuration
        dofile("Modules/StatusEffects.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/StatusEffects", "Berserk Cooldown", "How long before Berserk can be activated again - In seconds", 0, 300, 1, curSettings.BerserkCooldown, defaultSettings.BerserkCooldown, function(state)
        curSettings.BerserkCooldown = state
        config.saveFile("Data/config_new.json", curSettings)
        BerserkCooldown = curSettings.BerserkCooldown
        dofile("Modules/StatusEffects.lua")
	 end)


     nativeSettings.addRangeFloat("/ENC/SmartWeap", "Smart Weapon Lock On Time", "How long it takes for smart weapons to lock onto the player - In seconds. Vanilla is 3, ENC default is 0.5", 0.1, 10.0, 0.1, "%.1f", curSettings.SmartWeapLockOnTime, defaultSettings.SmartWeapLockOnTime, function(state)
        curSettings.SmartWeapLockOnTime = state
        config.saveFile("Data/config_new.json", curSettings)
        SmartWeapLockOnTime = curSettings.SmartWeapLockOnTime
        dofile("Modules/SmartWeapon.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/SmartWeap", "Smart Weapon Lock Out Time", "How long before smart weapons lose targeting when player is out of sight - In seconds. Vanilla is 3, ENC default is 5", 0.1, 10.0, 0.1, "%.1f", curSettings.SmartWeapLockOutTime, defaultSettings.SmartWeapLockOutTime, function(state)
        curSettings.SmartWeapLockOutTime = state
        config.saveFile("Data/config_new.json", curSettings)
        SmartWeapLockOutTime = curSettings.SmartWeapLockOutTime
        dofile("Modules/SmartWeapon.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/SmartWeap", "Tyger Claws Glowing Tattoos", "Probability of the Tyger Claws' Glowing Tattoos disrupting smart targeting. ENC default is 1", 0.1, 1.0, 0.1, "%.1f", curSettings.GlowingTattoos, defaultSettings.GlowingTattoos, function(state)
        curSettings.GlowingTattoos = state
        config.saveFile("Data/config_new.json", curSettings)
        GlowingTattoos = curSettings.GlowingTattoos
        dofile("Modules/SmartWeapon.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/SmartWeap", "Kang Tao Smart Targeting Disruption", "Probability of Kang Tao Jammer disrupting smart targeting. ENC default is 1", 0.1, 1.0, 0.1, "%.1f", curSettings.KangTaoSmartDisrupt, defaultSettings.KangTaoSmartDisrupt, function(state)
        curSettings.KangTaoSmartDisrupt = state
        config.saveFile("Data/config_new.json", curSettings)
        KangTaoSmartDisrupt = curSettings.KangTaoSmartDisrupt
        dofile("Modules/SmartWeapon.lua")
    end)

    --[[
    nativeSettings.addRangeFloat("/ENC/TimeDilation", "Extra Time Dilation", "How much faster sandevistan enemies move when the player is using sandevistan or kerenzikov. Vanilla is 1.0, ENC default is 3.0", 1.0, 6.0, 0.1, "%.1f", curSettings.ExtraTimeDilation, defaultSettings.ExtraTimeDilation, function(state)
        curSettings.ExtraTimeDilation = state
        config.saveFile("Data/config_new.json", curSettings)
        ExtraTimeDilation = curSettings.ExtraTimeDilation
        dofile("Modules/TimeDilation.lua")
    end)
    ]]

    nativeSettings.addRangeFloat("/ENC/TimeDilation", "Sandevistan Mk 0 Extra Time Dilation", "How much faster enemies with sandevistan mk 0 move when the player is using sandevistan or kerenzikov. Vanilla is 1.0, ENC default is 1.5", 1.0, 6.0, 0.1, "%.1f", curSettings.Sandy0Dilation, defaultSettings.Sandy0Dilation, function(state)
        curSettings.Sandy0Dilation = state
        config.saveFile("Data/config_new.json", curSettings)
        Sandy0Dilation = curSettings.Sandy0Dilation
        dofile("Modules/TimeDilation.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/TimeDilation", "Sandevistan Mk 1 Extra Time Dilation", "How much faster enemies with sandevistan mk 1 move when the player is using sandevistan or kerenzikov. Vanilla is 1.0, ENC default is 2.0", 1.0, 6.0, 0.1, "%.1f", curSettings.Sandy1Dilation, defaultSettings.Sandy1Dilation, function(state)
        curSettings.Sandy1Dilation = state
        config.saveFile("Data/config_new.json", curSettings)
        Sandy1Dilation = curSettings.Sandy1Dilation
        dofile("Modules/TimeDilation.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/TimeDilation", "Sandevistan Mk 2 Extra Time Dilation", "How much faster enemies with sandevistan mk 2 move when the player is using sandevistan or kerenzikov. Vanilla is 1.0, ENC default is 2.5", 1.0, 6.0, 0.1, "%.1f", curSettings.Sandy2Dilation, defaultSettings.Sandy2Dilation, function(state)
        curSettings.Sandy2Dilation = state
        config.saveFile("Data/config_new.json", curSettings)
        Sandy2Dilation = curSettings.Sandy2Dilation
        dofile("Modules/TimeDilation.lua")
    end)

    nativeSettings.addRangeFloat("/ENC/TimeDilation", "Sandevistan Mk 3 Extra Time Dilation", "How much faster enemies with sandevistan mk 3 move when the player is using sandevistan or kerenzikov. Vanilla is 1.0, ENC default is 3.0", 1.0, 6.0, 0.1, "%.1f", curSettings.Sandy3Dilation, defaultSettings.Sandy3Dilation, function(state)
        curSettings.Sandy3Dilation = state
        config.saveFile("Data/config_new.json", curSettings)
        Sandy3Dilation = curSettings.Sandy3Dilation
        dofile("Modules/TimeDilation.lua")
    end)

    nativeSettings.addSwitch("/ENC/Loot", "Legendary Loot", "Enables or disables legendary loot dropped by some minibosses (Requires restart)", curSettings.LegenLoot, defaultSettings.LegenLoot, function(state)
		curSettings.LegenLoot = state
		config.saveFile("Data/config_new.json", curSettings)
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Tyger Claw Hacking Resistance", "Adjust the hacking resistance for Tyger Claws. Default is 3", 0, 10, 1, curSettings.TygerHackRes, defaultSettings.TygerHackRes, function(state)
        curSettings.TygerHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        TygerHackRes = curSettings.TygerHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Scav Hacking Resistance", "Adjust the hacking resistance for Scavs. Default is 3", 0, 10, 1, curSettings.ScavHackRes, defaultSettings.ScavHackRes, function(state)
        curSettings.ScavHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        ScavHackRes = curSettings.ScavHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "VDB Hacking Resistance", "Adjust the hacking resistance for VDBs. Default is 6", 0, 10, 1, curSettings.VDBHackRes, defaultSettings.VDBHackRes, function(state)
        curSettings.VDBHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        VDBHackRes = curSettings.VDBHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Militech Hacking Resistance", "Adjust the hacking resistance for Militech. Default is 4", 0, 10, 1, curSettings.MiliHackRes, defaultSettings.MiliHackRes, function(state)
        curSettings.MiliHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        MiliHackRes = curSettings.MiliHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Arasaka Claw Hacking Resistance", "Adjust the hacking resistance for Arasaka. Default is 6", 0, 10, 1, curSettings.AraHackRes, defaultSettings.AraHackRes, function(state)
        curSettings.AraHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        AraHackRes = curSettings.AraHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Kang Tao Hacking Resistance", "Adjust the hacking resistance for Kang Tao. Default is 5", 0, 10, 1, curSettings.KangHackRes, defaultSettings.KangHackRes, function(state)
        curSettings.KangHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        KangHackRes = curSettings.KangHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Generic Corpo Hacking Resistance", "Adjust the hacking resistance for Generic Corpo Security. Default is 4", 0, 10, 1, curSettings.CorpHackRes, defaultSettings.CorpHackRes, function(state)
        curSettings.CorpHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        CorpHackRes = curSettings.CorpHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Trauma Team Hacking Resistance", "Adjust the hacking resistance for Trauma Team. Default is 5", 0, 10, 1, curSettings.TrauHackRes, defaultSettings.TrauHackRes, function(state)
        curSettings.TrauHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        TrauHackRes = curSettings.TrauHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "NCPD Hacking Resistance", "Adjust the hacking resistance for NCPD. Default is 4", 0, 10, 1, curSettings.NCPDHackRes, defaultSettings.NCPDHackRes, function(state)
        curSettings.NCPDHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        NCPDHackRes = curSettings.NCPDHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "Maxtac Hacking Resistance", "Adjust the hacking resistance for Maxtac. Default is 6", 0, 10, 1, curSettings.MaxtHackRes, defaultSettings.MaxtHackRes, function(state)
        curSettings.MaxtHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        MaxtHackRes = curSettings.MaxtHackRes
        dofile("Modules/reloadable_config.lua")
	 end)

     nativeSettings.addRangeInt("/ENC/Resistances", "NUSA Hacking Resistance", "Adjust the hacking resistance for NUSA. Default is 6", 0, 10, 1, curSettings.NUSAHackRes, defaultSettings.NUSAHackRes, function(state)
        curSettings.NUSAHackRes = state
        config.saveFile("Data/config_new.json", curSettings)
        NUSAHackRes = curSettings.NUSAHackRes
        dofile("Modules/reloadable_config.lua")
	 end)


end

return ENC:new()









