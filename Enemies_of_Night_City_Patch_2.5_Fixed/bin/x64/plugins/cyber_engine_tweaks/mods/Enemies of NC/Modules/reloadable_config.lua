
if EnableMod then

    TweakDB:SetFlat("T1EnemyHP.value", T1EnemyHP)
    TweakDB:SetFlat("T1EnemyDmg.value", T1EnemyDmg)

    TweakDB:SetFlat("T2EnemyHP.value", T2EnemyHP)
    TweakDB:SetFlat("T2EnemyDmg.value", T2EnemyDmg)

    TweakDB:SetFlat("T3EnemyHP.value", T3EnemyHP)
    TweakDB:SetFlat("T3EnemyDmg.value", T3EnemyDmg)


	TweakDB:SetFlat("Character.Main_boss_oda_stats_inline0.value", OdaHP)--oda hp multiplier, vanilla 3
	TweakDB:SetFlat("Character.Main_boss_oda_stats_inline8.value", OdaDmg)--oda dmg multiplier, vanilla 1
    
    TweakDB:SetFlat("Oda.HealEffector_inline0.valuePerSec", OdaStealthHealRate)

    TweakDB:SetFlat("BossHP.value", BossHP)
    TweakDB:SetFlat("BossDmg.value", BossDmg)

    TweakDB:SetFlat("MaxtacHP.value", MaxtacHP)
    TweakDB:SetFlat("MaxtacDmg.value", MaxtacDmg)

    TweakDB:SetFlat("EliteHP.value", EliteHP)
    TweakDB:SetFlat("EliteDmg.value", EliteDmg)

    TweakDB:SetFlat("SasquatchWeakspotHPMultiplier.value", SasquatchWeakspotHP)
	TweakDB:SetFlat("Character.Main_boss_sasquatch_stats_inline0.value", SasquatchHP)
    TweakDB:SetFlat("Character.main_boss_sasquatch_inline9.value", SasquatchDmg)
    TweakDB:SetFlat("Sasquatch.RegenerateEffector_inline0.valuePerSec", SasquatchRegen)
    TweakDB:SetFlat("SasquatchCombatStimPoolValueModifier.valuePerSec", SasquatchCombatStimRegen)
    TweakDB:SetFlat("SasquatchCombatStimCooldown.duration", SasquatchCombatStimCooldown)
    TweakDB:SetFlat("SasquatchBerserkMeleeEffectdurationStat.value", SasquatchBerserkDuration)
    TweakDB:SetFlat("SasquatchBerserkCooldown.duration", SasquatchBerserkCooldown)
    TweakDB:SetFlat("BaseStatusEffect.SasquatchGrabAttackDamage_inline0.value", SasquatchGrabDmg)

    TweakDB:SetFlat("Character.q113_boss_smasher_inline0.value", SmasherHP)
    TweakDB:SetFlat("Character.Main_boss_adam_smasher_stats_inline2.value", SmasherDmg)

    TweakDB:SetFlat("SmasherRegenPhase3PoolValueModifier.valuePerSec", SmasherRegen)
    TweakDB:SetFlat("SmasherRegenPhase2PoolValueModifier.valuePerSec", SmasherRegen)

    TweakDB:SetFlat("SmasherBerserkMeleeEffectdurationStat.value", SmasherBerserkDuration)
    TweakDB:SetFlat("SmasherPhase1BerserkCooldown.duration", SmasherBerserkCooldown)

    TweakDB:SetFlat("SubArmorLightMultStat.value", LowSubArmor)
    TweakDB:SetFlat("SubArmorNormalMultStat.value", NormSubArmor)
    TweakDB:SetFlat("SubArmorMedMultStat.value", MedSubArmor)
    TweakDB:SetFlat("SubArmorHighMultStat.value", HighSubArmor)

    TweakDB:SetFlat("Weakspots.Mech_Weapon_Weakspot_Stats_inline0.value", MinoWeakspot)

    TweakDB:SetFlat("Character.Main_boss_chimera_stats_inline0.value", ChimeraHP)
    TweakDB:SetFlat("ChimeraDmgStat.value", ChimeraDmg)

    if RemoveBreachRestrictions then
    	TweakDB:SetFlat("BreachAction.targetPrereqs", {})
        TweakDB:SetFlat("BreachAction.targetActivePrereqs", {"Prereqs.QuickHackUploadingPrereq", "Prereqs.ChimeraNoQuickHackPrereq", "Prereqs.ChimeraNoQuickHackPrereq"})
    else
        TweakDB:SetFlat("BreachAction.targetPrereqs", {"BreachMultiPrereq"})
        TweakDB:SetFlat("BreachAction.targetActivePrereqs", {"Prereqs.QuickHackUploadingPrereq", "Prereqs.ChimeraNoQuickHackPrereq", "Prereqs.ChimeraNoQuickHackPrereq", "Prereqs.ConnectedToBackdoorActive"})
    end


	TweakDB:SetFlat("Character.q304_kurt_miniboss_inline21.value", KurtHP)
    TweakDB:SetFlat("KurtDmgStat.value", KurtDmg)
    TweakDB:SetFlat("Attacks.Kurt_Knife_TakedownImpact_inline1.value", KurtKnifeThrowDmg)
    TweakDB:SetFlat("KurtShotgunDmgStat.value", KurtShotgunDmg)
    TweakDB:SetFlat("KurtLMGDmgStat.value", KurtLmgDmg)
    TweakDB:SetFlat("KurtCombatStimCooldown.duration", KurtCombatStimCooldown)

	TweakDB:SetFlat("Character.sts_ep1_03_miniboss_placeholder_inline5.value", YashaHP)
    TweakDB:SetFlat("YashaDmgStat.value", YashaDmg)
    TweakDB:SetFlat("Oda.WagnerHealEffector_inline0.valuePerSec", YashaHealRate)

	TweakDB:SetFlat("Character.sts_ep1_08_kgb_boss_inline0.value", RibakovHP)
    TweakDB:SetFlat("RibakovDmgStat.value", RibakovDmg)
    TweakDB:SetFlat("RibakovCombatStimCooldown.duration", RibakovCombatStimCooldown)


    TweakDB:SetFlat("NPCStatPreset.Mq025_BuckHealth_inline0.value", BuckHP)--default 0.52 hp
	TweakDB:SetFlat("NPCStatPreset.Mq025_BuckDamage_inline0.value", BuckDmg)--default 0.5 dmg

    TweakDB:SetFlat("NPCStatPreset.Mq025_CesarHealth_inline0.value", CesarHP)--default 0.52 hp
	TweakDB:SetFlat("NPCStatPreset.Mq025_CesarDamage_inline0.value", CesarDmg)--default 0.5 dmg

    TweakDB:SetFlat("NPCStatPreset.Mq025_OzobHealth_inline0.value", OzobHP)--default 0.67 hp
	TweakDB:SetFlat("NPCStatPreset.Mq025_OzobDamage_inline0.value", OzobDmg)--default 0.5 dmg

    TweakDB:SetFlat("NPCStatPreset.Mq025_RazorHealth_inline0.value", RazorHP)--default 1 hp
	TweakDB:SetFlat("NPCStatPreset.Mq025_RazorDamage_inline0.value", RazorDmg)--default 0.75 dmg

    TweakDB:SetFlat("NPCStatPreset.Mq025_RhinoHealth_inline0.value", RhinoHP)--default 0.67 hp
	TweakDB:SetFlat("NPCStatPreset.Mq025_RhinoDamage_inline0.value", RhinoDmg)--default 0.5 dmg

    TweakDB:SetFlat("NPCStatPreset.Mq025_TwinHealth_inline0.value", TwinHP)--default 0.389 hp
	TweakDB:SetFlat("NPCStatPreset.Mq025_TwinDamage_inline0.value", TwinDmg)--default 0.5 dmg


    TweakDB:SetFlat("minigame_v2.PredefinedBoardWithProgramsTest.timeLimit", Lvl1MinigameDuration)--default 30
    TweakDB:SetFlat("minigame_v2.SuicideMinigame.timeLimit", Lvl2MinigameDuration)
    TweakDB:SetFlat("minigame_v2.PlacideMinigame.timeLimit", Lvl3MinigameDuration)
    TweakDB:SetFlat("minigame_v2.PredefinedBoardMinigameTest.timeLimit", Lvl4MinigameDuration)

    TweakDB:SetFlat("ChimeraMetalStormDmgStat.value", ChimeraMetalstormDmg)
    TweakDB:SetFlat("ChimeraExplosiveMetalStormDmgStat.value", ChimeraExplosiveMetalstormDmg)



    TweakDB:SetFlat("MainBossHP.value", MainBossHP)
    TweakDB:SetFlat("BossMaxDmgPerHitStat.value", BossMaxDmgPerHitStat)
    TweakDB:SetFlat("MaxtacMaxDmgPerHitStat.value", MaxtacMaxDmgPerHitStat)
    TweakDB:SetFlat("Character.Main_boss_adam_smasher_stats_inline0.value", SmasherMaxDmgPerHitStat)
    TweakDB:SetFlat("OdaMaxDmgPerHit.value", OdaMaxDmgPerHit)
    TweakDB:SetFlat("SasquatchMaxDmgPerHit.value", SasquatchMaxDmgPerHit)
    TweakDB:SetFlat("KurtMaxDmgPerHit.value", KurtMaxDmgPerHit)
    TweakDB:SetFlat("YashaMaxDmgPerHit.value", YashaMaxDmgPerHit)
    TweakDB:SetFlat("Character.sts_ep1_08_kgb_boss_inline17.value", RibakovMaxDmgPerHitStat)


    TweakDB:SetFlat("TygerHack.value", TygerHackRes)
    TweakDB:SetFlat("ScavHack.value", ScavHackRes)
    TweakDB:SetFlat("VDBHack.value", VDBHackRes)
    TweakDB:SetFlat("MiliHack.value", MiliHackRes)
    TweakDB:SetFlat("AraHack.value", AraHackRes)
    TweakDB:SetFlat("KangHack.value", KangHackRes)
    TweakDB:SetFlat("CorpHack.value", CorpHackRes)
    TweakDB:SetFlat("TrauHack.value", TrauHackRes)
    TweakDB:SetFlat("NCPDHack.value", NCPDHackRes)
    TweakDB:SetFlat("MaxtHack.value", MaxtHackRes)
    TweakDB:SetFlat("NUSAHack.value", NUSAHackRes)



end
