if EnableMod then

    --[[
    function cloneNPCDataMinimalWithoutVisual(baseRecordName, newRecordName)
        flats = {"archetypeData", "abilities", "primaryEquipment", "rarity", "secondaryEquipment"}
        for i,v in ipairs(flats) do
            TweakDB:SetFlatNoUpdate(newRecordName.."."..v, TweakDB:GetFlat(baseRecordName.."."..v))
        end
        TweakDB:Update(newRecordName)
    end
        
    function cloneNPCDataMinimal(baseRecordName, newRecordName)
        flats = {"archetypeData", "abilities", "entityTemplatePath", "primaryEquipment", "rarity","secondaryEquipment","visualTags"}
        for i,v in ipairs(flats) do
            TweakDB:SetFlatNoUpdate(newRecordName.."."..v, TweakDB:GetFlat(baseRecordName.."."..v))
        end
        TweakDB:Update(newRecordName)
    
    end
    ]]




    --ticon, omaha, quasar, nekomata achilles grit senkoh
    createEquipmentWeaponGrp("TechieTiconDefaultPrimary", "Items.Preset_Ticon_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieTiconMilitaryPrimary", "Items.Preset_Ticon_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieTiconPimpPrimary", "Items.Preset_Ticon_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieTiconNeonPrimary", "Items.Preset_Ticon_Neon", 0, 10, false)

    createEquipmentWeaponGrp("TechieOmahaDefaultPrimary", "Items.Preset_Omaha_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieOmahaMilitaryPrimary", "Items.Preset_Omaha_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieOmahaPimpPrimary", "Items.Preset_Omaha_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieOmahaNeonPrimary", "Items.Preset_Omaha_Neon", 0, 10, false)
    createEquipmentWeaponGrp("TechieOmahaMaelstromPrimary", "Items.Preset_Omaha_Maelstrom", 0, 10, false)

    createEquipmentWeaponGrp("TechieQuasarDefaultPrimary", "Items.Preset_Quasar_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieQuasarMilitaryPrimary", "Items.Preset_Quasar_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieQuasarPimpPrimary", "Items.Preset_Quasar_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieQuasarNeonPrimary", "Items.Preset_Quasar_Neon", 0, 10, false)

    createEquipmentWeaponGrp("TechieNekoDefaultPrimary", "Items.Preset_Nekomata_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieNekoMilitaryPrimary", "Items.Preset_Nekomata_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieNekoPimpPrimary", "Items.Preset_Nekomata_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieNekoNeonPrimary", "Items.Preset_Nekomata_Neon", 0, 10, false)

    createEquipmentWeaponGrp("TechieAchillesDefaultPrimary", "Items.Preset_Achilles_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieAchillesMilitaryPrimary", "Items.Preset_Achilles_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieAchillesPimpPrimary", "Items.Preset_Achilles_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieAchillesNeonPrimary", "Items.Preset_Achilles_Neon", 0, 10, false)

    createEquipmentWeaponGrp("TechieGritDefaultPrimary", "Items.Preset_Grit_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieGritMilitaryPrimary", "Items.Preset_Grit_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieGritPimpPrimary", "Items.Preset_Grit_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieGritNeonPrimary", "Items.Preset_Grit_Neon", 0, 10, false)

    createEquipmentWeaponGrp("TechieSenkohDefaultPrimary", "Items.Preset_Senkoh_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieSenkohMilitaryPrimary", "Items.Preset_Senkoh_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieSenkohPimpPrimary", "Items.Preset_Senkoh_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieSenkohNeonPrimary", "Items.Preset_Senkoh_Neon", 0, 10, false)

    createEquipmentWeaponGrp("TechieBuryaDefaultPrimary", "Items.Preset_Burya_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieBuryaMilitaryPrimary", "Items.Preset_Burya_Military", 0, 10, false)
    createEquipmentWeaponGrp("TechieBuryaPimpPrimary", "Items.Preset_Burya_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TechieBuryaNeonPrimary", "Items.Preset_Burya_Neon", 0, 10, false)


    createEquipmentWeaponGrp("TechieKolacPrimary", "Items.Preset_Kolac_Default", 0, 10, false)
    createEquipmentWeaponGrp("TechieAuthorityPrimary", "Items.Preset_Authority_Default", 0, 5, false)
    createEquipmentWeaponGrp("TechieHerculesPrimary", "Items.Preset_Hercules_Default", 0, 5, false)


    --hercules removed because it does not break
    TweakDB:SetFlat("TechieTiconDefaultPrimaryEquipItemPool.pool", {"TechieTiconDefaultPrimaryEquipItemPoolEntry", "TechieTiconMilitaryPrimaryEquipItemPoolEntry", "TechieTiconPimpPrimaryEquipItemPoolEntry", "TechieTiconNeonPrimaryEquipItemPoolEntry", "TechieOmahaDefaultPrimaryEquipItemPoolEntry", "TechieOmahaMilitaryPrimaryEquipItemPoolEntry", "TechieOmahaPimpPrimaryEquipItemPoolEntry", "TechieOmahaNeonPrimaryEquipItemPoolEntry", "TechieOmahaMaelstromPrimaryEquipItemPoolEntry", "TechieQuasarDefaultPrimaryEquipItemPoolEntry", "TechieQuasarMilitaryPrimaryEquipItemPoolEntry", "TechieQuasarPimpPrimaryEquipItemPoolEntry", "TechieQuasarNeonPrimaryEquipItemPoolEntry", "TechieNekoDefaultPrimaryEquipItemPoolEntry", "TechieNekoMilitaryPrimaryEquipItemPoolEntry", "TechieNekoPimpPrimaryEquipItemPoolEntry", "TechieNekoNeonPrimaryEquipItemPoolEntry", "TechieAchillesDefaultPrimaryEquipItemPoolEntry", "TechieAchillesMilitaryPrimaryEquipItemPoolEntry", "TechieAchillesPimpPrimaryEquipItemPoolEntry", "TechieAchillesNeonPrimaryEquipItemPoolEntry", "TechieGritDefaultPrimaryEquipItemPoolEntry", "TechieGritMilitaryPrimaryEquipItemPoolEntry", "TechieGritPimpPrimaryEquipItemPoolEntry", "TechieGritNeonPrimaryEquipItemPoolEntry", "TechieSenkohDefaultPrimaryEquipItemPoolEntry", "TechieSenkohMilitaryPrimaryEquipItemPoolEntry", "TechieSenkohPimpPrimaryEquipItemPoolEntry", "TechieSenkohNeonPrimaryEquipItemPoolEntry", "TechieKolacPrimaryEquipItemPoolEntry", "TechieAuthorityPrimaryEquipItemPoolEntry", "TechieBuryaDefaultPrimaryEquipItemPoolEntry", "TechieBuryaMilitaryPrimaryEquipItemPoolEntry", "TechieBuryaPimpPrimaryEquipItemPoolEntry", "TechieBuryaNeonPrimaryEquipItemPoolEntry"})



    --tygers


	TygerEliteList = {"Character.bls_se_tyger_claws_biker3_shotgun2_tactician_wa", "Character.dtn_tyger_claws_biker3_shotgun2_tactician_wa", "Character.jpn_tyger_claws_biker3_shotgun2_tactician_wa", "Character.kab_tyger_claws_biker3_shotgun2_tactician_wa", "Character.lch_tyger_claws_biker3_shotgun2_tactician_wa", "Character.mws_hey_07_tyger_claws_biker3_shotgun2_tactician_wa", "Character.nid_tyger_claws_biker3_shotgun2_tactician_wa", "Character.nok_tyger_claws_biker3_shotgun2_tactician_wa", "Character.tyger_claws_biker3_shotgun2_tactician_wa", "Character.bls_se_tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.jpn_tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.kab_tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.q105_dollhouse_reinforcementcaller_tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.tyger_claws_martial_fmelee2_fists_ma_rare", "Character.dtn_tyger_claws_martial_fmelee2_katana_ma_rare", "Character.jpn_tyger_claws_martial_fmelee2_katana_ma_rare", "Character.kab_tyger_claws_martial_fmelee2_katana_ma_rare", "Character.lch_tyger_claws_martial_fmelee2_katana_ma_rare", "Character.nok_tyger_claws_martial_fmelee2_katana_ma_rare", "Character.q105_dollhouse_officer_tyger_claws_martial_fmelee2_katana_ma_rare", "Character.tyger_claws_martial_fmelee2_katana_ma_rare", "Character.kabuki_tyger_claw_melee_fast", "Character.kabuki_tyger_claw_melee", "Character.sts_wat_lch_03_tyger_claws_martial_hmelee2_hammer_mb", "Character.tyger_claws_martial_hmelee2_StrongArms_ma", "Character.tyger_claws_martial_hmelee2_hammer_mb", "Character.jpn_03_tyger_guard_emon_fujikura", "Character.mws_gang_retaliation_enemies_tygerclaws_sidekick_2", "Character.sts_wat_kab_08_tyger_claws_officer", "Character.sts_wat_kab_107_tygerclaw_smartgun", "Character.sts_wbr_jpn_05_tygerclaw_officer"}
	for i,v in ipairs(TygerEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end





    TweakDB:SetFlat("Character.jpn_03_tyger_guard_emon_fujikura.archetypeData", "TygerSniperArchetypeData")--shrine gig
    createEquipmentWeaponGrp("TygerSniperKyubiDefaultPrimary", "Items.Preset_Kyubi_Default", 0, 10, false)
    createEquipmentWeaponGrp("TygerSniperKyubiMiliPrimary", "Items.Preset_Kyubi_Military", 0, 10, false)
    createEquipmentWeaponGrp("TygerSniperKyubiPimpPrimary", "Items.Preset_Kyubi_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("TygerSniperKyubiNeonPrimary", "Items.Preset_Kyubi_Neon", 0, 10, false)
    TweakDB:SetFlat("TygerSniperKyubiDefaultPrimaryEquipItemPool.pool", {"TygerSniperKyubiDefaultPrimaryEquipItemPoolEntry", "TygerSniperKyubiMiliPrimaryEquipItemPoolEntry", "TygerSniperKyubiPimpPrimaryEquipItemPoolEntry", "TygerSniperKyubiNeonPrimaryEquipItemPoolEntry"})
    TweakDB:SetFlat("Character.jpn_03_tyger_guard_emon_fujikura.primaryEquipment", "TygerSniperKyubiDefaultPrimaryEquipGrp")

    TygerSniperHash = ToCName{ hash_lo = 0xC2A0A6F0, hash_hi = 0xA731C3F4 }
    TweakDB:SetFlat("Character.jpn_03_tyger_guard_emon_fujikura.appearanceName", TygerSniperHash)
    TweakDB:SetFlat("Character.jpn_03_tyger_guard_emon_fujikura.visualTags", {"TygerClaws", "Sniper", "Lvl2"})
    TweakDB:SetFlat("Character.jpn_03_tyger_guard_emon_fujikura.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.tyger_claws_biker3_shotgun3_zhuo_ma_elite", "Character.jpn_03_tyger_guard_officer")
    cloneNPCDataMinimal("Character.tyger_claws_martial_fmelee2_katana_ma_rare", "Character.jpn_03_tyger_guard_handgun")
    cloneNPCDataMinimal("Character.tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.jpn_03_tyger_guard_wa")
    TweakDB:SetFlat("Character.jpn_03_tyger_guard_wa.actionMap", "GangNetrunner.Map")


        
    --pisces
    --TweakDB:SetFlat("Character.sq026_hiromis_tyger_claws_gangster2_ranged2_shingen_ma_elite.archetypeData", "Character.tyger_claws_gangster3_ranged3_sidewinder_ma_inline4")
    cloneNPCDataMinimalWithoutVisual("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.sq026_hiromis_officer_tyger_claws_officergangster_officer_nue_ma")
    TweakDB:SetFlat("Character.sq026_maintenance_tyger_claws_kunoichi_fmelee3_katana_wa_elite.primaryEquipment", "Character.arasaka_ninja_fmelee3_mantis_ma_elite_inline2")--special mantis
    --TweakDB:SetFlat("Character.sq026_maintenance_tyger_claws_kunoichi_fmelee3_katana_wa_elite.actionMap", "Corpo.map")
    TweakDB:SetFlat("Character.sq026_maintenance_tyger_claws_kunoichi_fmelee3_katana_wa_elite.displayName", LocKey(44033ull))
    TweakDB:SetFlat("Character.sq026_maintenance_tyger_claws_kunoichi_fmelee3_katana_wa_elite.skipDisplayArchetype", true)

    TweakDB:SetFlat("Character.sq026_tc_leader_02.archetypeData", "Character.tyger_claws_kunoichi_fmelee3_katana_wa_elite_inline4")
    TweakDB:SetFlat("Character.sq026_tc_leader_01.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.sq026_tc_leader_02.rarity", "NPCRarity.Boss")

    setArchetypeData("Maiko", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "ShockAbilityGrp", "TacticalAbilityGrp", "HarassAbilityGrp"}, {}, {"TygerResStatModifierGrp", "TygerHackResStatModifierGrp"}, "Character.tyger_claws_gangster3_ranged3_sidewinder_ma_inline5", true)
    TweakDB:SetFlat("Character.Maiko.archetypeData", "MaikoArchetypeData")
    TweakDB:SetFlat("Character.Maiko.rarity", "NPCRarity.Boss")
    createLegendaryWeapon("Items.Preset_Saratoga_Arasaka_2077")
    createEquipmentWeaponGrp("MaikoShigurePrimary", "Items.Preset_Saratoga_Arasaka_2077_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.Maiko.primaryEquipment", "MaikoShigurePrimaryEquipGrp")



    --drug lab
    cloneNPCDataMinimal("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.lch_06_tyger_joe_kaneshiro")

    cloneNPCDataMinimal("Character.tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.lch_06_tyger_melee")
    TweakDB:SetFlat("Character.lch_06_tyger_melee.actionMap", "GangNetrunner.Map")

    cloneNPCDataMinimalWithoutVisual("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.lch_06_tyger_officer_female")
    TweakDB:SetFlat("Character.lch_06_tyger_officer_female.visualTags", {"TygerClaws", "Lvl2", "Gangster"})
    cloneNPCDataMinimal("Character.tyger_claws_martial_fmelee2_katana_ma_rare", "Character.lch_06_tyger_yusaku_ogata")



    --dojo
    TweakDB:SetFlat("Character.sts_wat_lch_03_tyger_claw_melee_ground.archetypeData", "Character.tyger_claws_martial_fmelee2_katana_ma_rare_inline4")
    TweakDB:SetFlat("Character.sts_wat_lch_03_tyger_claw_melee_ground_wa.archetypeData", "Character.tyger_claws_martial_fmelee2_katana_ma_rare_inline4")
    TweakDB:SetFlat("Character.sts_wat_lch_03_tyger_claw_melee_ground.primaryEquipment", "Character.tyger_claws_martial_fmelee2_fists_ma_rare_inline2")
    TweakDB:SetFlat("Character.sts_wat_lch_03_tyger_claw_melee_ground_wa.primaryEquipment", "Character.tyger_claws_martial_fmelee2_fists_ma_rare_inline2")
    TweakDB:SetFlat("Character.sts_wat_lch_03_tyger_claw_melee_ground.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_wat_lch_03_tyger_claw_melee_ground_wa.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.tyger_claws_biker3_shotgun3_zhuo_ma_elite", "Character.sts_wat_nid_02_tygerclaw_officer")--revere courier gig
    TweakDB:SetFlat("Character.sts_wat_nid_02_worker_reception.archetypeData", "ArchetypeData.GenericRangedT1")
    TweakDB:SetFlat("Character.sts_wat_nid_02_workers.archetypeData", "ArchetypeData.GenericRangedT1")

    cloneNPCDataMinimal("Character.tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.sts_wat_nid_02_tyger_claws_biker2_melee2_baseball_ma")
    TweakDB:SetFlat("Character.sts_wat_nid_02_tyger_claws_biker2_melee2_baseball_ma.actionMap", "GangNetrunner.Map")
    TweakDB:SetFlat("Character.sts_wat_nid_02_tyger_claws_biker2_melee2_baseball_ma.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.mq035_tyger_claw_05")--ozob quest



    --tyger and vulture
    TygerCasino1Hash = ToCName{ hash_lo = 0x15F170AA, hash_hi = 0x786FFB77 }
    TygerCasino2Hash = ToCName{ hash_lo = 0x15F16EF7, hash_hi = 0x786FFA77 }
    TygerCasino3Hash = ToCName{ hash_lo = 0x15F16D44, hash_hi = 0x786FF977 }
    TygerCasino4Hash = ToCName{ hash_lo = 0x15F16B91, hash_hi = 0x786FF877 }

    TweakDB:SetFlat("Character.hil_07_security_02.appearanceName", TygerCasino1Hash)
    TweakDB:SetFlat("Character.hil_07_security_new_01.appearanceName", TygerCasino2Hash)
    --TweakDB:SetFlat("Character.hil_07_security_new_02.appearanceName", TygerCasino3Hash)
    TweakDB:SetFlat("Character.hil_07_security_officer.appearanceName", TygerCasino4Hash)
    cloneNPCDataMinimal("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.hil_07_security_01")

    TweakDB:SetFlat("Character.mq029_james.archetypeData", "Character.tyger_claws_martial_fmelee2_katana_ma_rare_inline4")
    TweakDB:SetFlat("Character.mq029_james.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.mq038_tyger_enemy.skipDisplayArchetype", true)--big in japan

    TweakDB:SetFlat("Character.sq017_red_menace.archetypeData", "Character.tyger_claws_gangster3_ranged3_sidewinder_ma_inline4")--red menace
    TweakDB:SetFlat("Character.sq017_red_menace.rarity", "NPCRarity.Elite")


    --greed never pays gig
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_guard.archetypeData", "Character.animals_grunt2_shotgun2_igla_wba_rare_inline4")
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_guard.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_guard.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.archetypeData", "Character.tyger_claws_kunoichi_fmelee3_katana_wa_elite_inline4")
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.primaryEquipment", "Character.arasaka_ninja_fmelee3_mantis_ma_elite_inline2")
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.fullDisplayName", LocKey(44033ull))
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.rarity", "NPCRarity.Boss")
    addToList("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma.tags", "Cyberpsycho")


    cloneNPCDataMinimalWithoutVisual("Character.sts_wbr_jpn_12_tyger_claws_officergangster_officer_nue_ma", "Character.sts_wbr_jpn_01_tygerclaw_dual_melee")--sergei gig
    TweakDB:SetFlat("Character.sts_wbr_jpn_01_tygerclaw_dual_melee.fullDisplayName", LocKey(44033ull))
    TweakDB:SetFlat("Character.sts_wbr_jpn_01_tygerclaw_dual_melee.skipDisplayArchetype", true)
    TygerMantisHash = ToCName{ hash_lo = 0x978F5580, hash_hi = 0xAB500AA1 }
    TweakDB:SetFlat("Character.sts_wbr_jpn_01_tygerclaw_dual_melee.appearanceName", TygerMantisHash)



    --tyger megabuilding
    cloneNPCDataMinimal("Character.tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.sts_wat_lch_01_Yuri_Shaku")
    TweakDB:SetFlat("Character.sts_wat_lch_01_Yuri_Shaku.actionMap", "GangNetrunner.Map")
    cloneNPCDataMinimal("Character.tyger_claws_martial_fmelee2_fists_ma_rare", "Character.sts_wat_lch_01_Tatsuya_Takei")
    


    --bugbear
    cloneNPCDataMinimal("Character.tyger_claws_martial_hmelee2_StrongArms_ma", "Character.sts_hey_rey_09_mb")
    cloneNPCDataMinimal("Character.tyger_claws_martial_hmelee2_hammer_mb", "Character.sts_hey_rey_09_officer")
    TweakDB:SetFlat("Character.sts_hey_rey_09_mb.visualTags", {"TygerClaws", "Lvl1", "Gangster"})
    TweakDB:SetFlat("Character.sts_hey_rey_09_katana.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_hey_rey_09_sec_wa.rarity", "NPCRarity.Elite")

    --monster hunt
    cloneNPCDataMinimal("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.kab_07_officer_casino")
    cloneNPCDataMinimal("Character.tyger_claws_martial_fmelee2_fists_ma_rare", "Character.kab_07_officer_1st_floor")
    TweakDB:SetFlat("Character.sts_wat_kab_07_jotaro.archetypeData", "Character.tyger_claws_gangster3_ranged3_sidewinder_ma_inline4")
    createLegendaryWeapon("Items.Preset_Omaha_Neon")
    createEquipmentWeaponGrp("JotaroDualPrimary", "Items.Preset_Omaha_Neon_Legendary", 0, 10, true, "Items.Preset_Omaha_Pimp_Left_Hand")
    TweakDB:SetFlat("Character.sts_wat_kab_07_jotaro.primaryEquipment", "JotaroDualPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sts_wat_kab_07_jotaro.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.kab_07_enemy_1st_floor_shotgun.rarity", "NPCRarity.Elite")






    --troublesome neighbor
    setArchetypeData("TakiTechie", {"SandyAbilityGrp", "KerezAbilityGrp", "T3FastTechieAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "ShockAbilityGrp", "TacticalAbilityGrp"}, {}, {"TygerResStatModifierGrp", "TygerHackResStatModifierGrp"}, "ArchetypeType.TechieT3", true)
    TweakDB:SetFlat("Character.sts_wat_kab_107_taki_kenmochi.archetypeData", "TakiTechieArchetypeData")
    createLegendaryWeapon("Items.Preset_Ticon_Pimp")
    createEquipmentWeaponGrp("TakiTiconPrimary", "Items.Preset_Ticon_Pimp_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.sts_wat_kab_107_taki_kenmochi.primaryEquipment", "TakiTiconPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sts_wat_kab_107_taki_kenmochi.rarity", "NPCRarity.Boss")
	addToList("Character.sts_wat_kab_107_taki_kenmochi.tags", "MaxTac_NotPrevention")


    --we have your wife
    cloneNPCDataMinimal("Character.tyger_claws_gangster3_ranged3_sidewinder_ma", "Character.jpn_02_officer")
    cloneNPCDataMinimal("Character.tyger_claws_martial_fmelee2_fists_ma_rare", "Character.jpn_02_torturer")














    --maelstrom



    MaelEliteList = {"Character.cpz_maelstom_strong_shotgun2_igla_ma", "Character.kab_maelstom_strong_shotgun2_carnage_ma_rare", "Character.lch_maelstom_strong_shotgun2_carnage_ma_rare", "Character.maelstom_strong_shotgun2_carnage_ma_rare", "Character.maelstom_strong_shotgun2_igla_ma", "Character.nid_maelstom_strong_shotgun2_carnage_ma_rare", "Character.nid_maelstom_strong_shotgun2_igla_ma", "Character.q003_meat_factory_maelstom_strong_shotgun2_igla_ma", "Character.q003_maelstrom_shotgun_01", "Character.gang_retaliation__enemies_maelstom_shotgun2_carnage_ma_rare_kab_02", "Character.gang_retaliation__enemies_maelstom_shotgun2_carnage_ma_rare_nid_05", "Character.lch_maelstrom_fast_sniper2_grad_ma", "Character.maelstrom_fast_sniper2_grad_ma", "Character.maelstrom_strong_gunner2_defender_mb_rare", "Character.mq032_maelstrom_techie_medium", "Character.nid_05_maelstrom_shotgun_man", "Character.nid_maelstrom_fast_sniper2_grad_ma", "Character.nid_maelstrom_strong_grunt_short_range_m_hard", "Character.nid_maelstrom_strong_grunt_short_range_m_medium", "Character.nid_maelstrom_strong_gunner2_defender_mb_rare", "Character.northside_maelstrom_shotgunner", "Character.sa_ep1_courier_loop_enemies_maelstom_shotgun2_carnage_ma_rare", "Character.sq006_maelstrom_shotgun", "Character.sq031_maelstrom_rare_sniper_ma", "Character.sq031_maelstrom_strong_LMG", "Character.sq031_maelstrom_strong_shotgunner_elite", "Character.sq031_maelstrom_strong_shotgunner_lookout", "Character.sts_wat_nid_04_enemy_maelstrom_fast_sniper2_grad_ma", "Character.sts_wat_nid_06_maelstrom_fast_sniper2_grad_ma"}
	for i,v in ipairs(MaelEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end




    --initiation gig?
    MaelElite1Hash = ToCName{ hash_lo = 0x2521AA8F, hash_hi = 0xF024642B }
    MaelElite2Hash = ToCName{ hash_lo = 0x2521AC42, hash_hi = 0xF024652B }
    MaelElite3Hash = ToCName{ hash_lo = 0x2521ADF5, hash_hi = 0xF024662B }
    MaelElite4Hash = ToCName{ hash_lo = 0x2521A210, hash_hi = 0xF0245F2B }
    MaelElite5Hash = ToCName{ hash_lo = 0x2521A3C3, hash_hi = 0xF024602B }
    MaelElite6Hash = ToCName{ hash_lo = 0x2521A576, hash_hi = 0xF024612B }
    MaelElite7Hash = ToCName{ hash_lo = 0x2521A729, hash_hi = 0xF024622B }
    MaelElite8Hash = ToCName{ hash_lo = 0x2521B674, hash_hi = 0xF0246B2B }
    MaelEliteNetrunnerHash = ToCName{ hash_lo = 0xB9D135BB, hash_hi = 0x4C0C57E2 }


    TweakDB:SetFlat("Character.maelstrom_techie_grenadier2_lexington_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.maelstrom_techie_grenadier2_lexington_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.nid_maelstrom_techie_grenadier2_lexington_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.nid_maelstrom_techie_grenadier2_lexington_ma.rarity", "NPCRarity.Elite")



    MaelEliteList2 = {"Character.maelstrom_techie_grenadier2_lexington_ma", "Character.nid_maelstrom_techie_grenadier2_lexington_ma", "Character.gang_retaliation_enemies_maelstrom_fast_franged2_pulsar_ma_rare_nid_05_boss", "Character.hil_maelstrom_fast_franged2_pulsar_ma_rare", "Character.maelstrom_fast_franged2_pulsar_ma_rare", "Character.mws_gang_retaliation_enemies_maelstrom_fast_franged2_pulsar_ma_rare_nid_05_boss", "Character.nid_maelstrom_fast_franged2_pulsar_ma_rare", "Character.hil_maelstrom_fast2_fmelee2_knife_ma_rare", "Character.maelstrom_fast2_fmelee2_knife_ma_rare", "Character.nid_maelstrom_fast2_fmelee2_knife_ma_rare", "Character.gang_retaliation_enemies_maelstrom_fmelee2_machete_ma_rare_kab_02", "Character.gang_retaliation_enemies_maelstrom_fmelee2_machete_ma_rare_nid_05", "Character.nid_maelstrom_fast_grunt_melee_w_hard", "Character.northside_maelstrom_fast_machete", "Character.northside_maelstrom_meelee", "Character.sa_ep1_courier_loop_enemies_maelstrom_fmelee2_machete_ma_rare", "Character.sq011_maelstrom_machete", "Character.sq031_maelstrom_fast_rifleman", "Character.sq031_maelstrom_standard_melee", "Character.sq031_maelstrom_standard_melee_beta"}
    for i,v in ipairs(MaelEliteList2) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end

    TweakDB:SetFlat("Character.nid_05_maelstrom_othmar_brasi.archetypeData", "Character.maelstrom_fast_franged2_pulsar_ma_rare_inline4")
    TweakDB:SetFlat("Character.nid_05_maelstrom_othmar_brasi.appearanceName", MaelElite1Hash)
    TweakDB:SetFlat("Character.nid_05_maelstrom_othmar_brasi.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.nid_05_maelstrom_officer")
    TweakDB:SetFlat("Character.nid_05_maelstrom_officer.appearanceName", MaelElite2Hash)


    TweakDB:SetFlat("Character.nid_05_maelstrom_server_room_wa.archetypeData", "Character.maelstrom_netrunner_netrunner2_lexington_ma_inline4")
    TweakDB:SetFlat("Character.nid_05_maelstrom_server_room_wa.actionMap", "GangNetrunner.Map")




    cloneNPCDataMinimal("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.q003_meat_factory_officer_maelstrom_grunt2_ranged2_ajax_ma")
    cloneNPCDataMinimal("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.q003_maelstrom_welding")
    cloneNPCDataMinimal("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.q003_maelstrom_rifle_01")--rifle1 is the first guy you encounter, shining the light
    cloneNPCDataMinimal("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.q003_maelstrom_royce_boss")--royce's goon
    TweakDB:SetFlat("Character.q003_maelstrom_royce_boss.displayName", LocKey(0ull))




    --dream on
    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_fast_franged2_pulsar_ma_rare", "Character.sq006_maelstrom_rifle")
    TweakDB:SetFlat("Character.sq006_maelstrom_rifle.appearanceName", MaelElite3Hash)

    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_fast_franged2_pulsar_ma_rare", "Character.sq006_maelstrom_officer")
    TweakDB:SetFlat("Character.sq006_maelstrom_officer.appearanceName", MaelElite4Hash)

    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.sq006_maelstrom_handgun_easy")


    --second conflict
    TweakDB:SetFlat("Character.sq011_maelstrom_officer.archetypeData", "Character.maelstrom_fast_franged2_pulsar_ma_rare_inline4")
    TweakDB:SetFlat("Character.sq011_maelstrom_officer.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_fast_fmelee2_machete_ma_rare", "Character.sq011_maelstrom_machete")
    TweakDB:SetFlat("Character.sq011_maelstrom_machete.appearanceName", MaelElite5Hash)
    TweakDB:SetFlat("Character.sq011_maelstrom_machete.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.sq011_patricia.archetypeData", "Character.maelstrom_fast_franged2_pulsar_ma_rare_inline4")
    TweakDB:SetFlat("Character.sq011_patricia.rarity", "NPCRarity.Elite")
    addToList("Character.sq011_patricia.abilities", "Ability.HasKerenzikov")
    addToList("Character.sq011_patricia.tags", "Cyberpsycho")


    --chippin in
    TweakDB:SetFlat("Character.sq031_maelstrom_standard_melee.archetypeData", "Character.maelstrom_fast2_fmelee2_knife_ma_rare_inline4")
    TweakDB:SetFlat("Character.sq031_maelstrom_standard_melee_beta.archetypeData", "Character.maelstrom_fast2_fmelee2_knife_ma_rare_inline4")



    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_fast_fmelee2_machete_ma_rare", "Character.cpz_maelstrom_grunt2_melee2_machete_ma")
    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_fast_fmelee2_machete_ma_rare", "Character.dtn_maelstrom_grunt2_melee2_machete_wa")


    --garry quest
    TweakDB:SetFlat("Character.mq026_smuggler.archetypeData", "Character.security_security2_ranged2_ajax_ma_inline0")
    TweakDB:SetFlat("Character.mq026_smuggler_boss.archetypeData", "Character.security_security2_ranged2_ajax_ma_inline0")
    TweakDB:SetFlat("Character.mq026_mal_shotgunner.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.mq026_mal_tank.rarity", "NPCRarity.Elite")

    --gottfried
    cloneNPCDataMinimal("Character.maelstrom_fast2_fmelee2_knife_ma_rare", "Character.sts_wat_nid_04_enemy_security_officer_machete_ma")
    TweakDB:SetFlat("Character.sts_wat_nid_04_enemy_security_officer_machete_ma.appearanceName", MaelElite6Hash)
    TweakDB:SetFlat("Character.sts_wat_nid_04_enemy_shotgun_ma.rarity", "NPCRarity.Elite")

    --lousy klepper gig
    cloneNPCDataMinimalWithoutVisual("Character.sq006_maelstrom_officer", "Character.sts_wat_nid_06_enemy_officer")
    TweakDB:SetFlat("Character.sts_wat_nid_06_enemy_officer.appearanceName", MaelElite7Hash)
    TweakDB:SetFlat("Character.sts_wat_nid_06_enemy_gunner_big.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_wat_nid_06_enemy_shotgunner.rarity", "NPCRarity.Elite")


    --scrolls b4 swine
    cloneNPCDataMinimal("Character.maelstrom_grunt2_ranged2_ajax_ma", "Character.sts_wat_nid_07_enemy_grunt_handgun")
    TweakDB:SetFlat("Character.sts_wat_nid_07_enemy_officer.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_wat_nid_07_enemy_strong_shotgun.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.maelstrom_netrunner_netrunner2_lexington_ma", "Character.sts_wat_nid_07_enemy")
    TweakDB:SetFlat("Character.sts_wat_nid_07_enemy.actionMap", "GangNetrunner.Map")
    TweakDB:SetFlat("Character.sts_wat_nid_07_enemy.appearanceName", MaelEliteNetrunnerHash)


    --more techies, change appearance only for males
    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.cpz_maelstrom_grunt1_ranged1_lexington_wa")

    cloneNPCDataMinimal("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.dtn_maelstrom_grunt1_ranged1_lexington_ma")

    cloneNPCDataMinimal("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.lch_maelstrom_grunt_medium_range_m_medium")

    cloneNPCDataMinimalWithoutVisual("Character.maelstrom_techie_grenadier2_lexington_ma", "Character.nid_maelstrom_grunt_medium_range_w_easy")













    --animals

    AnimEliteList = {"Character.animals_bouncer2_hmelee2_hammer_mba_rare", "Character.animals_bouncer2_hmelee2_fists_mba_rare", "Character.animals_elite2_hmelee2_fists_mba_rare", "Character.animals_elite2_hmelee2_hammer_mba_rare", "Character.animals_elite2_ranged3_burya_mba_rare", "Character.animals_grunt2_hmelee2_fists_wba_rare", "Character.animals_grunt2_hmelee2_hammer_wba_rare", "Character.animals_grunt2_shotgun2_igla_wba_rare", "Character.animals_grunt2_shotgun2_testera_wba_rare", "Character.animals_grunt3_gunner2_defender_mb_rare", "Character.cvi_animals_elite2_hmelee2_fists_mba_rare", "Character.cvi_animals_grunt2_shotgun2_igla_wba_rare", "Character.dtn_animals_bouncer2_hmelee2_hammer_mba_rare", "Character.dtn_animals_elite2_ranged3_burya_mba_rare", "Character.dtn_animals_elite_medium_range_m_medium", "Character.dtn_animals_grunt2_shotgun2_igla_wba_rare", "Character.gang_retaliation_enemies_animals_hmelee2_fists_wba_rare_dtn_03", "Character.lch_animals_elite2_hmelee2_hammer_mba_rare", "Character.ma_pac_wwd_01_animal_sheila", "Character.q110_animals_mall_entrance_zone_female", "Character.q110_animals_mall_west_wing_zone_officer", "Character.q110_mall_animals_grunt2_hmelee2_fists_wba_rare", "Character.q110_mall_animals_grunt2_hmelee2_hammer_wba_rare", "Character.q110_mall_animals_grunt2_shotgun2_igla_wba_rare", "Character.sa_ep1_courier_loop_enemies_animals_hmelee2_fists_wba_rare", "Character.spr_animals_grunt2_hmelee2_hammer_wba_rare", "Character.spr_animals_grunt2_shotgun2_igla_wba_rare", "Character.spr_animals_grunt3_gunner2_defender_mb_rare", "Character.sq012_animal_bouncer_short_range", "Character.sq012_animal_hammer", "Character.sq012_animal_officer", "Character.sq012_animal_officer_beta_female", "Character.sq012_animal_shotgun_beta", "Character.sts_hey_spr_06_animals_ranged", "Character.sts_pac_cvi_02_animals_melee_woman", "Character.wwd_animals_elite2_hmelee2_hammer_mba_rare", "Character.wwd_animals_grunt2_hmelee2_fists_wba_rare", "Character.wwd_animals_grunt2_shotgun2_igla_wba_rare", "Character.sts_cct_dtn_02_bouncer_melee", "Character.sts_cct_dtn_02_bouncer_melee_female", "Character.sts_cct_dtn_02_bouncer_short_melee_f", "Character.sts_cct_dtn_02_officer", "Character.dtn_03_enemy_keycard"}
	for i,v in ipairs(AnimEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end





    createConstantStatModifier("CannotUseCombatStimStat", "Multiplier", "BaseStats.CanUseCombatStims", 0)
	addToList("Character.mq025_rhino.statModifiers", "CannotUseCombatStimStat")

    setArchetypeData("Rhino", {"BerserkAbilityGrp", "T3HeavyMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp", "BleedImmuneAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "Character.valentinos_grunt3_fmelee2_knife_ma_rare_inline5", true)
    TweakDB:SetFlat("Character.mq025_rhino.archetypeData", "RhinoArchetypeData")
    --TweakDB:SetFlat("Character.mq025_rhino.archetypeData", "Character.animals_bouncer2_melee2_fists_mb_inline0")
    TweakDB:SetFlat("Character.mq025_rhino.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq025_rhino.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "NPCStatPreset.Mq025_RhinoDamage", "NPCStatPreset.Mq025_RhinoHealth", "Character.Boss_Poise_Primary_Stat_ModGroup"})
    TweakDB:SetFlat("NPCStatPreset.Mq025_RhinoHealth_inline1.value", 1)


    setArchetypeData("Razor", {"Sandy2AbilityGrp", "BerserkAbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalHighAbilityGrp", "BleedImmuneAbilityGrp", "TacticalAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "Character.animals_bouncer3_hmelee3_fists_mba_elite_inline1", true)
    TweakDB:SetFlat("Character.mq025_razor.archetypeData", "RazorArchetypeData")
    TweakDB:SetFlat("Character.mq025_razor.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "Character.BaseAnimalStats", "NPCStatPreset.Mq025_RazorDamage", "NPCStatPreset.Mq025_RazorHealth", "Character.Boss_Poise_Primary_Stat_ModGroup"})
    TweakDB:SetFlat("Character.mq025_razor.skipDisplayArchetype", true)
    TweakDB:SetFlat("NPCStatPreset.Mq025_RazorHealth_inline1.value", 1)
	addToList("Character.mq025_razor.statModifiers", "CannotUseCombatStimStat")



    setArchetypeData("Ozob", {"SandyAbilityGrp", "BerserkAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp", "TacticalAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "Character.animals_bouncer2_melee2_fists_mb_inline1", true)
    TweakDB:SetFlat("Character.mq025_ozob_fist_fight.archetypeData", "OzobArchetypeData")
    TweakDB:SetFlat("Character.mq025_ozob_fist_fight.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq025_ozob_fist_fight.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "NPCStatPreset.Mq025_OzobDamage", "NPCStatPreset.Mq025_OzobHealth", "Character.Boss_Poise_Primary_Stat_ModGroup"})
    TweakDB:SetFlat("NPCStatPreset.Mq025_OzobHealth_inline1.value", 1)
	addToList("Character.mq025_ozob_fist_fight.statModifiers", "CannotUseCombatStimStat")


    --heavyweight 22500 wrangler 22514 techjock 22513
    --TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_melee_woman.displayName", LocKey(22500ull))



    cloneNPCDataMinimal("Character.animals_bouncer3_hmelee3_fists_mba_elite", "Character.sq012_animal_elite_hard")
    cloneNPCDataMinimalWithoutVisual("Character.animals_elite2_hmelee2_hammer_mba_rare", "Character.sq012_animal_hammer")
    TweakDB:SetFlat("Character.sq012_animal_hammer.displayName", LocKey(22500ull))
    TweakDB:SetFlat("Character.sq012_animal_hammer.skipDisplayArchetype", true)




    cloneNPCDataMinimal("Character.animals_elite3_gunner3_hmg_mba_elite", "Character.sts_pac_cvi_02_animals_handgun_officer")
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_handgun_officer.displayName", LocKey(22514ull))
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_handgun_officer.skipDisplayArchetype", true)


    cloneNPCDataMinimal("Character.animals_grunt2_hmelee2_hammer_wba_rare", "Character.sts_pac_cvi_02_animals_melee_woman")--two wrongs make a right
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_melee_woman.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_melee_woman.displayName", LocKey(22514ull))
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_melee_woman.visualTags", {"Animals", "Big", "Lvl1", "Grunt"})
    --ThickskullHash = ToCName{ hash_lo = 0xBE751DBB, hash_hi = 0x3EE538BE }
    --TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_melee_woman.appearanceName", ThickskullHash)



    cloneNPCDataMinimalWithoutVisual("Character.animals_elite2_shotgun3_testera_wba_elite", "Character.sts_pac_cvi_02_animals_fast_shotgun")
    setArchetypeData("AnimalsTechjock", {"BerserkAbilityGrp", "T2TechieAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalHighAbilityGrp", "BleedImmuneAbilityGrp", "TacticalAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "ArchetypeType.TechieT3", true)
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_fast_shotgun.archetypeData", "AnimalsTechjockArchetypeData")
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_fast_shotgun.displayName", LocKey(22513ull))
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_fast_shotgun.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_fast_shotgun.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")

    --TweakDB:SetFlat("Character.sts_pac_cvi_02_animals_fast_shotgun.visualTags", {"Animals", "Big", "Lvl1", "Grunt"})



    TweakDB:SetFlat("Character.ma_pac_cvi_05_animals_grunt1_ranged1_pulsar_mb_Paul_Roberts.archetypeData", "Character.animals_grunt2_ranged2_pulsar_mb_inline4")




    --for my son gig
    TweakDB:SetFlat("Character.wwd_05_target.archetypeData", "RazorArchetypeData")
    TweakDB:SetFlat("Character.wwd_05_enemy_handgunner_reprimand.displayName", LocKey(22513ull))
    TweakDB:SetFlat("Character.wwd_05_enemy_handgunner_reprimand.skipDisplayArchetype", true)
    cloneNPCDataMinimal("Character.sts_pac_cvi_02_animals_fast_shotgun", "Character.wwd_05_enemy_handgunner_reprimand")
    TweakDB:SetFlat("Character.wwd_05_enemy_officer.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.wwd_05_target.rarity", "NPCRarity.Boss")
    addToList("Character.wwd_05_target.tags", "MaxTac_NotPrevention")

    cloneNPCDataMinimal("Character.animals_grunt2_ranged2_pulsar_mb", "Character.wwd_05_enemy_handgunner")




    --i walk the line
    cloneNPCDataMinimal("Character.animals_elite2_ranged3_burya_mba_rare", "Character.q110_animals_mall_west_wing_zone_officer")


    TweakDB:SetFlat("Character.q110_animals_mall_entrance_zone_melee.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q110_animals_mall_entrance_zone_melee2h.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q110_animals_mall_west_wing_zone_fists.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q110_animals_mall_workout_zone_melee.rarity", "NPCRarity.Elite")




    TweakDB:SetFlat("Character.q110_mall_animals_bouncer3_hmelee3_fists_mba_elite.rarity", "NPCRarity.Elite")
    --TweakDB:SetFlat("Character.q110_mall_animals_bouncer3_hmelee3_fists_mba_elite.displayName", LocKey(22860ull))


    cloneNPCDataMinimalWithoutVisual("Character.animals_bouncer3_hmelee3_fists_mba_elite", "Character.q110_animals_mall_entrance_zone_melee2h_pizza_guy")
    TweakDB:SetFlat("Character.q110_animals_mall_entrance_zone_melee2h_pizza_guy.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_animals_mall_entrance_zone_melee2h_pizza_guy.displayName", LocKey(22860ull))

    cloneNPCDataMinimalWithoutVisual("Character.animals_elite3_gunner3_hmg_mba_elite", "Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare")
    TechieHash2 = ToCName{ hash_lo = 0x55D063DC, hash_hi = 0x02C69A7D }
    --TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.appearanceName", TechieHash2)
    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.displayName", LocKey(22510ull))
    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.fullDisplayName", LocKey(22510ull))
    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.rarity", "NPCRarity.Boss")
    addToList("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.tags", "Cyberpsycho")

    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.entityTemplatePath", "ep1\\characters\\entities\\gang\\gang__ep1_animals_mm.ent")

    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.objectActions", {"QuickHack.GrenadeHackBase", "QuickHack.BaseBlindHack", "QuickHack.BaseWeaponMalfunctionHack", "QuickHack.BaseLocomotionMalfunctionHack", "QuickHack.BaseOverheatHack", "QuickHack.OverloadBaseHack", "QuickHack.BrainMeltBaseHack", "QuickHack.BaseCyberwareMalfunctionHack", "QuickHack.SystemCollapseHackBase", "QuickHack.ChimeraMadnessHackBase", "QuickHack.BaseMemoryWipeHack", "QuickHack.BaseBlackWallHack", "QuickHack.SuicideHackBase", "QuickHack.BaseCommsCallInHack", "QuickHack.BaseCommsNoiseHack", "QuickHack.BasePingHack", "QuickHack.BaseContagionHack", "QuickHack.BaseWhistleHack", "QuickHack.RemoteBreach", "Takedown.NewPerkFinisher", "Takedown.NewPerkFinisherBlunt"})

	setArchetypeData("Q110CustomBoss", {"SandyAbilityGrp", "BerserkAbilityGrp", "T3FastRangedAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalHighAbilityGrp", "BleedImmuneAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "Character.animals_elite3_gunner3_hmg_mba_elite_inline3", true)
    TweakDB:SetFlat("Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare.archetypeData", "Q110CustomBossArchetypeData")


    cloneNPCDataMinimal("Character.animals_grunt3_gunner2_defender_mb_rare", "Character.q110_mall_animals_aftervan_grunt1_ranged1_pulsar_mb")

    cloneNPCDataMinimal("Character.animals_elite2_hmelee2_hammer_mba_rare", "Character.q110_mall_animals_grunt1_melee1_fists_mb")
    TweakDB:SetFlat("Character.q110_mall_animals_grunt1_melee1_fists_mb.displayName", LocKey(22514ull))
    TweakDB:SetFlat("Character.q110_mall_animals_grunt1_melee1_fists_mb.skipDisplayArchetype", true)

    cloneNPCDataMinimalWithoutVisual("Character.sts_pac_cvi_02_animals_fast_shotgun", "Character.q110_animals_mall_workout_zone")
    TweakDB:SetFlat("Character.q110_animals_mall_workout_zone.displayName", LocKey(22513ull))
    TweakDB:SetFlat("Character.q110_animals_mall_workout_zone.skipDisplayArchetype", true)
    TechieHash3 = ToCName{ hash_lo = 0xB9510E19, hash_hi = 0xAB1A5475 }
    TweakDB:SetFlat("Character.q110_animals_mall_workout_zone.appearanceName", TechieHash3)


    cloneNPCDataMinimal("Character.animals_elite3_shotgun3_carnage_mba_elite", "Character.q110_mall_animals_bouncer2_hmelee2_fists_mba_rare")
    TweakDB:SetFlat("Character.q110_mall_animals_bouncer2_hmelee2_fists_mba_rare.displayName", LocKey(22514ull))
    TweakDB:SetFlat("Character.q110_mall_animals_bouncer2_hmelee2_fists_mba_rare.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_mall_animals_bouncer2_hmelee2_fists_mba_rare.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.q110_mall_animals_grunt2_hmelee2_hammer_wba_rare.displayName", LocKey(22500ull))
    TweakDB:SetFlat("Character.q110_mall_animals_grunt2_hmelee2_hammer_wba_rare.fullDisplayName", LocKey(22500ull))
    TweakDB:SetFlat("Character.q110_mall_animals_grunt2_hmelee2_hammer_wba_rare.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.q110_mall_animals_grunt2_hmelee2_hammer_wba_rare.skipDisplayArchetype", true)


    --inconvenient killer
    AnimSkipList = {"Character.sts_cct_dtn_02_bouncer_main_door", "Character.sts_cct_dtn_02_bouncer_melee", "Character.sts_cct_dtn_02_bouncer_melee_drunked", "Character.sts_cct_dtn_02_bouncer_melee_female", "Character.sts_cct_dtn_02_bouncer_short_melee_f", "Character.sts_cct_dtn_02_bouncer_short_range", "Character.sts_cct_dtn_02_bouncer_smg", "Character.sts_cct_dtn_02_officer"}
    for i,v in ipairs(AnimSkipList) do
        TweakDB:SetFlat(v..".displayName", TweakDB:GetFlat("Character.animals_elite2_ranged3_burya_mba_rare.displayName"))
        TweakDB:SetFlat(v..".fullDisplayName", TweakDB:GetFlat("Character.animals_elite2_ranged3_burya_mba_rare.fullDisplayName"))
        TweakDB:SetFlat(v..".skipDisplayArchetype", false)
    end



    cloneNPCDataMinimal("Character.animals_grunt3_gunner2_defender_mb_rare", "Character.sts_cct_dtn_02_bouncer_melee")
    TechieHash1 = ToCName{ hash_lo = 0xB9510E19, hash_hi = 0xAB1A5475 }
    TweakDB:SetFlat("Character.sts_cct_dtn_02_bouncer_melee.appearanceName", TechieHash1)







    --SCAVS


    ScavEliteList = {"Character.bls_se_scavenger_elite2_shotgun_igla_ma", "Character.bls_se_scavenger_strong3_gunner2_defender_mb_rare", "Character.bou_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.bou_scavenger_elite2_shotgun_igla_ma", "Character.bou_scavenger_elite2_shotgun_tactician_ma", "Character.bou_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.bou_scavenger_fast3_fmelee3_machete_wa_elite", "Character.bou_scavenger_strong3_gunner2_defender_mb_rare", "Character.con_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.con_scavenger_elite2_shotgun_igla_ma", "Character.con_scavenger_elite2_shotgun_tactician_ma", "Character.con_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.con_scavenger_fast3_fmelee3_machete_wa_elite", "Character.con_scavenger_strong3_gunner2_defender_mb_rare", "Character.cvi_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.cvi_scavenger_elite2_shotgun_igla_ma", "Character.cvi_scavenger_elite2_shotgun_tactician_ma", "Character.cvi_scavenger_fast3_fmelee3_machete_wa_elite", "Character.cvi_scavenger_strong3_gunner2_defender_mb_rare", "Character.dtn_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.dtn_scavenger_elite2_shotgun_tactician_ma", "Character.ep1_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.ep1_scavenger_elite2_shotgun_igla_ma", "Character.ep1_scavenger_elite2_shotgun_tactician_ma", "Character.ep1_scavenger_strong3_gunner2_defender_mb_rare", "Character.high_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.high_scavenger_elite2_shotgun_igla_ma", "Character.high_scavenger_elite2_shotgun_tactician_ma", "Character.high_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.high_scavenger_fast3_fmelee3_machete_wa_elite", "Character.high_scavenger_strong3_gunner2_defender_mb_rare", "Character.hpark_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.hpark_scavenger_elite2_shotgun_igla_ma", "Character.hpark_scavenger_elite2_shotgun_tactician_ma", "Character.hpark_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.hpark_scavenger_fast3_fmelee3_machete_wa_elite", "Character.hpark_scavenger_strong3_gunner2_defender_mb_rare", "Character.kab_scavenger_elite2_shotgun_igla_ma", "Character.kab_scavenger_elite2_shotgun_tactician_ma", "Character.kab_scavenger_strong3_gunner2_defender_mb_rare", "Character.lch_scavenger_elite2_shotgun_tactician_ma", "Character.lch_scavenger_strong3_gunner2_defender_mb_rare", "Character.ma_pac_cvi_09_scavenger_fast3_fmelee3_machete_wa_elite_Misha_Orlova", "Character.ma_wat_nid_12_shard_scav", "Character.ma_wbr_jpn_07_scavenger_mb", "Character.mon_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.mon_scavenger_elite2_shotgun_igla_ma", "Character.mon_scavenger_elite2_shotgun_tactician_ma", "Character.mon_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.mon_scavenger_fast3_fmelee3_machete_wa_elite", "Character.mon_scavenger_strong3_gunner2_defender_mb_rare", "Character.mq002_scavenger_LMG", "Character.mq002_scavenger_leader", "Character.mq036_scavenger_LMG", "Character.mq036_scavenger_regular_smg_wa", "Character.mq036_scavenger_shotgunner", "Character.mq301_ambush_scav_butcher3_hmelee2_machete_mb_rare", "Character.mq301_ambush_scav_elite2_shotgun_igla_ma", "Character.mq301_ambush_scav_elite2_shotgun_tactician_ma", "Character.mq301_ambush_scav_elite_melee", "Character.mq301_ambush_scav_soldier_shotgun", "Character.mq301_ambush_scav_strong3_gunner2_defender_mb_rare", "Character.mq303_scav_2", "Character.mq303_scav_4", "Character.mq306_scavenger_elite2_shotgun_tactician_ma", "Character.nid_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.nid_scavenger_elite2_shotgun_igla_ma", "Character.nid_scavenger_elite2_shotgun_tactician_ma", "Character.nid_scavenger_fast3_fmelee3_machete_wa_elite", "Character.nid_scavenger_strong3_gunner2_defender_mb_rare", "Character.q105_bds_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.q105_bds_scavenger_elite2_shotgun_tactician_ma", "Character.q105_bds_scavenger_strong3_gunner2_defender_mb_rare", "Character.q302_caliente_scav_elite_melee", "Character.q302_caliente_scav_fast_melee", "Character.q302_caliente_scav_hmg", "Character.q302_caliente_scav_soldier_shotgun", "Character.rcr_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.rcr_scavenger_elite2_shotgun_tactician_ma", "Character.rcr_scavenger_strong3_gunner2_defender_mb_rare", "Character.rey_scavengers_fast_elite_short_range_w_hard", "Character.rey_scavengers_strong_elite_medium_range_m_medium", "Character.rey_scavengers_strong_elite_medium_range_w_hard", "Character.rey_scavengers_strong_short_range_w_hard", "Character.sa_ep1_courier_loop_enemies_scav_elite2_shotgun_igla_ma", "Character.sa_ep1_courier_loop_enemies_scav_fmelee2rare_knife_ma", "Character.scavenger_butcher3_hmelee2_machete_mb_rare", "Character.scavenger_elite2_shotgun_igla_ma", "Character.scavenger_elite2_shotgun_tactician_ma", "Character.scavenger_fast3_fmelee3_machete_wa_elite", "Character.scavenger_strong3_gunner2_defender_mb_rare", "Character.spr_scavenger_elite2_shotgun_tactician_ma", "Character.sta_scavenger_butcher3_hmelee2_machete_mb_rare", "Character.sta_scavenger_elite2_shotgun_igla_ma", "Character.sta_scavenger_elite2_shotgun_tactician_ma", "Character.sta_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.sta_scavenger_fast3_fmelee3_machete_wa_elite", "Character.sta_scavenger_strong3_gunner2_defender_mb_rare", "Character.sts_ep1_03_scavenger_elite2_shotgun_igla_ma", "Character.sts_ep1_03_scavenger_strong3_gunner2_defender_mb_rare", "Character.sts_ep1_04_scavenger_elite2_shotgun_igla_ma", "Character.sts_ep1_04_scavenger_elite2_shotgun_tactician_ma", "Character.sts_ep1_04_scavenger_strong3_gunner2_defender_mb_rare", "Character.sts_ep1_08_scavenger_elite2_shotgun_igla_ma", "Character.sts_wat_kab_101_enemy_scav_hmg", "Character.sts_wat_kab_101_enemy_scav_officer_shotgun2", "Character.sts_wat_kab_101_enemy_scav_shotgun", "Character.wwd_scavenger_elite2_shotgun_igla_ma", "Character.wwd_scavenger_elite2_shotgun_tactician_ma", "Character.wwd_scavenger_fast3_fmelee3_machete_wa_elite", "Character.wwd_scavenger_strong3_gunner2_defender_mb_rare", "Character.sts_wat_kab_05_enemy_ganger_officer", "Character.sts_wat_kab_05_enemy_ganger_shotgun_tier2", "Character.sts_wat_kab_05_enemy_melee", "Character.q105_bds_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.q105_bds_scavenger_grunt1_melee1_pipewrench_ma", "Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.mq002_scavenger_sniper"}
	for i,v in ipairs(ScavEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end





    ScavTechieHash1 = ToCName{ hash_lo = 0xFF2F4317, hash_hi = 0xC319E91C }
    ScavTechieHash2 = ToCName{ hash_lo = 0xFF2F44CA, hash_hi = 0xC319EA1C }
    ScavTechieHash3 = ToCName{ hash_lo = 0xFF2F467D, hash_hi = 0xC319EB1C }
    ScavTechieHash4 = ToCName{ hash_lo = 0xFF2F3A98, hash_hi = 0xC319E41C }

    --last login
    cloneNPCDataMinimal("Character.scavenger_butcher3_hmelee2_machete_mb_rare", "Character.sts_wat_kab_05_enemy_short_range_m")

    --sweet dreams
    cloneNPCDataMinimal("Character.scavenger_fast3_fmelee3_machete_wa_elite", "Character.mq036_scavenger_regular_smg_wa")
    TweakDB:SetFlat("Character.mq036_scavenger_regular_smg_wa.primaryEquipment", "Character.maelstrom_fast_fmelee3_mantis_wa_elite_inline2")


    cloneNPCDataMinimal("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.q105_bds_scavenger_grunt1_melee1_pipewrench_ma")


    cloneNPCDataMinimal("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.dtn_scavenger_grunt2_melee2_knife_ma")

    cloneNPCDataMinimal("Character.scavenger_elite2_shotgun_igla_ma", "Character.rey_scavengers_fast_elite_short_range_w_hard")

    cloneNPCDataMinimal("Character.scavenger_elite2_shotgun_igla_ma", "Character.rey_scavengers_strong_elite_medium_range_w_hard")

    TweakDB:SetFlat("Character.rey_scavengers_grunt_medium_range_w_hard.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.rey_scavengers_grunt_medium_range_w_hard.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.rey_scavengers_grunt_medium_range_w_hard.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.rey_scavengers_grunt_medium_range_w_hard.appearanceName", ScavTechieHash1)

    cloneNPCDataMinimalWithoutVisual("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.wwd_scavenger_grunt2_melee2_knife_ma")
    cloneNPCDataMinimalWithoutVisual("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.wwd_scavenger_grunt2_melee2_knife_wa")


    cloneNPCDataMinimalWithoutVisual("Character.scavenger_elite2_shotgun_igla_ma", "Character.wwd_scavenger_grunt2_ranged2_pulsar_wa")
    TweakDB:SetFlat("Character.wwd_scavenger_grunt2_ranged2_pulsar_wa.visualTags", {"Scavengers", "Fast", "Lvl3"})


    --TweakDB:SetFlat("Character.q105_bd_scavenger_f_floor0_handgun.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.mq002_scavenger_LMG.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.mq002_scavenger_leader.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.mq002_scavenger_netrunner.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.mq002_scavenger_smg.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.mq002_scavenger_sniper.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq002_scavenger_LMG.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq002_scavenger_leader.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq002_scavenger_netrunner.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq002_scavenger_smg.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq002_scavenger_sniper.displayName", LocKey(0ull))
    cloneNPCDataMinimalWithoutVisual("Character.rey_scavengers_grunt_medium_range_w_hard", "Character.mq002_scavenger_netrunner")

    ScavHyenaHash1 = ToCName{ hash_lo = 0x09B6E8FF, hash_hi = 0x39ABD87D }
    TweakDB:SetFlat("Character.mq002_scavenger_netrunner.appearanceName", ScavHyenaHash1)
    TweakDB:SetFlat("Character.mq002_scavenger_netrunner.visualTags", {"Scavengers", "Lvl3", "Fast"})

    cloneNPCDataMinimal("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.q105_bds_scavenger_grunt1_melee1_pipewrench_ma")


    TweakDB:SetFlat("Character.rcr_scavenger_grunt1_melee1_fists_ma.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.rcr_scavenger_grunt1_melee1_fists_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.rcr_scavenger_grunt1_melee1_fists_ma.appearanceName", ScavTechieHash1)
    TweakDB:SetFlat("Character.rcr_scavenger_grunt1_melee1_fists_ma.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.wwd_scavenger_grunt2_ranged2_copperhead_ma.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.wwd_scavenger_grunt2_ranged2_copperhead_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.wwd_scavenger_grunt2_ranged2_copperhead_ma.appearanceName", ScavTechieHash2)
    TweakDB:SetFlat("Character.wwd_scavenger_grunt2_ranged2_copperhead_ma.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.cvi_scavenger_grunt1_melee1_fists_ma.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.cvi_scavenger_grunt1_melee1_fists_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.cvi_scavenger_grunt1_melee1_fists_ma.appearanceName", ScavTechieHash3)
    TweakDB:SetFlat("Character.cvi_scavenger_grunt1_melee1_fists_ma.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.dtn_scavenger_grunt1_melee1_fists_ma.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.dtn_scavenger_grunt1_melee1_fists_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.dtn_scavenger_grunt1_melee1_fists_ma.appearanceName", ScavTechieHash4)
    TweakDB:SetFlat("Character.dtn_scavenger_grunt1_melee1_fists_ma.rarity", "NPCRarity.Elite")



    --Character.ep1_scavenger_elite3_sniper2_grad_ma_inline0 Character.scavenger_elite3_sniper2_grad_ma_inline0

    createEquipmentWeaponGrp("ScavSniperKolac", "Items.Preset_Kolac_Default", 10, 1, false)
    addToList("Character.scavenger_elite3_sniper2_grad_ma_inline5.pool", "ScavSniperKolacEquipItemPoolEntry")
    addToList("Character.ep1_scavenger_elite3_sniper2_grad_ma_inline5.pool", "ScavSniperKolacEquipItemPoolEntry")






    --6SG



    SixthStreetEliteList = {"Character.arr_sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.arr_sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.arr_sixthstreet_prepers3_shotgun3_carnage_ma_rare", "Character.arr_sixthstreet_sniper2_sniper2_grad_ma_rare", "Character.arr_sixthstreet_sniper2_sniper2_sor22_ma_rare", "Character.gang_retaliation_enemies_sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.gang_retaliation_enemies_sixthstreet_menace1_fmelee2_baton_wa_rare_arr_11", "Character.gang_retaliation_enemies_sixthstreet_menace1_fmelee2_baton_wa_rare_rcr_03", "Character.gang_retaliation_enemies_sixthstreet_prepers3_shotgun3_carnage_ma_arr_11_boss", "Character.gang_retaliation_enemies_sixthstreet_shotgun3_carnage_ma_rare", "Character.gang_retaliation_enemies_sixthstreet_shotgun3_carnage_ma_rare_arr_11", "Character.gang_retaliation_enemies_sixthstreet_shotgun3_carnage_ma_rare_rcr_03", "Character.gle_sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.gle_sixthstreet_menace1_fshotgun2_tactician_wa_rare", "Character.gle_sixthstreet_sniper2_sniper2_grad_ma_rare", "Character.rcr_sixth_street_sniper_long_range_m_medium", "Character.rcr_sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.rcr_sixthstreet_menace1_fshotgun2_tactician_wa_rare", "Character.rcr_sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.rcr_sixthstreet_prepers3_shotgun3_carnage_ma_rare", "Character.rcr_sixthstreet_sniper2_sniper2_grad_ma_rare", "Character.sa_ep1_courier_loop_enemies_sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.sa_ep1_courier_loop_enemies_sixthstreet_shotgun3_carnage_ma_rare", "Character.sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.sixthstreet_menace1_fshotgun2_tactician_wa_rare", "Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.sixthstreet_prepers3_shotgun3_carnage_ma_rare", "Character.sixthstreet_sniper2_sniper2_grad_ma_rare", "Character.sixthstreet_sniper2_sniper2_sor22_ma_rare", "Character.mq008_6th_street_female"}
	for i,v in ipairs(SixthStreetEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end



    TweakDB:SetFlat("Character.sixthstreet_veteran3_ranged2_ajax_ma_inline4.type", "ArchetypeType.FastRangedT2")
    SixthJarheadList = {"Character.arr_sixthstreet_veteran3_ranged2_ajax_ma", "Character.gle_sixthstreet_veteran3_ranged2_ajax_ma", "Character.hil_sixthstreet_veteran3_ranged2_ajax_ma", "Character.rcr_sixthstreet_veteran3_ranged2_ajax_ma", "Character.sixthstreet_veteran3_ranged2_ajax_ma", "Character.sts_std_arr_06_sixthstreet_veteran3_ranged2_ajax_ma", "Character.rcr_04_enemy_rifle", "Character.sts_std_rcr_03_gangers_ajax", "Character.sts_wbr_hil_06_officer", "Character.courier_sixthstreet_enemy_rifle_ma", "Character.gang_retaliation_enemies_sixthstreet_veteran3_ajax_ma", "Character.gang_retaliation_enemies_sixthstreet_veteran3_ajax_ma_arr_11", "Character.gang_retaliation_enemies_sixthstreet_veteran3_ajax_ma_rcr_03", "Character.sa_ep1_courier_loop_enemies_sixthstreet_veteran3_ajax_ma"}
    for i,v in ipairs(SixthJarheadList) do
        TweakDB:SetFlat(v..".displayName", LocKey(42668ull))
        TweakDB:SetFlat(v..".skipDisplayArchetype", true)
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end
    --6sg jarhead 42668

    TweakDB:SetFlat("Character.sts_std_arr_06_sixthstreet_veteran3_ranged2_ajax_ma_James.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.ma_std_arr_01_forrest.rarity", "NPCRarity.Elite")


    setArchetypeData("SixthStreetNetrunner", {"T2NetrunnerIconOnlyAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "ICEAbilityGrp"}, {}, {"6SGResStatModifierGrp"}, "Character.maelstrom_netrunner_netrunner2_lexington_ma_inline5", true)

    TweakDB:SetFlat("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare.rarity", "NPCRarity.Elite")
    cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.ma_hey_gle_09_sixthstreet_hooligan_ranged1_saratoga_ma_Quincy_Rivers")


    TweakDB:SetFlat("Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma.archetypeData", "SixthStreetOfficerArchetypeData")--give this guy dual wield
    TweakDB:SetFlat("Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma.rarity", "NPCRarity.Boss")
    addToList("Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma.tags", "Cyberpsycho")

    TweakDB:SetFlat("Character.rcr_sixthstreet_officer_officer_overture_ma.archetypeData", "SixthStreetOfficerArchetypeData")
    TweakDB:SetFlat("Character.sixthstreet_officer_officer_overture_ma.archetypeData", "SixthStreetOfficerArchetypeData")
    TweakDB:SetFlat("Character.rcr_sixthstreet_officer_officer_overture_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sixthstreet_officer_officer_overture_ma.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.rcr_sixthstreet_officer_officer_overture_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sixthstreet_officer_officer_overture_ma.skipDisplayArchetype", true)

    TweakDB:SetFlat("Character.rcr_sixthstreet_officer_officer_overture_ma.displayName", LocKey(48859ull))
    TweakDB:SetFlat("Character.sixthstreet_officer_officer_overture_ma.displayName", LocKey(48859ull))

    TweakDB:CreateRecord("DualBasePoolEntry", "gamedataNPCEquipmentItemsPoolEntry_Record")--required for equipment function
    TweakDB:SetFlat("DualBasePoolEntry.minLevel", 0)
    TweakDB:SetFlat("DualBasePoolEntry.weight", 10)



    createEquipmentWeaponGrp("DualWieldOverLibMilPrimary", "Items.Preset_Overture_Military", 0, 10, true, "Items.Preset_Liberty_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverLibPimpPrimary", "Items.Preset_Overture_Pimp", 0, 10, true, "Items.Preset_Liberty_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverLibNeonPrimary", "Items.Preset_Overture_Neon", 0, 10, true, "Items.Preset_Liberty_Neon_Left_Hand")

    createEquipmentWeaponGrp("DualWieldOverNueMilPrimary", "Items.Preset_Overture_Military", 0, 10, true, "Items.Preset_Nue_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverNuePimpPrimary", "Items.Preset_Overture_Pimp", 0, 10, true, "Items.Preset_Nue_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverNueNeonPrimary", "Items.Preset_Overture_Neon", 0, 10, true, "Items.Preset_Nue_Neon_Left_Hand")

    createEquipmentWeaponGrp("DualWieldOverUniMilPrimary", "Items.Preset_Overture_Military", 0, 10, true, "Items.Preset_Unity_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverUniPimpPrimary", "Items.Preset_Overture_Pimp", 0, 10, true, "Items.Preset_Unity_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverUniNeonPrimary", "Items.Preset_Overture_Neon", 0, 10, true, "Items.Preset_Unity_Neon_Left_Hand")

    createEquipmentWeaponGrp("DualWieldOverLexMilPrimary", "Items.Preset_Overture_Military", 0, 10, true, "Items.Preset_Lexington_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverLexPimpPrimary", "Items.Preset_Overture_Pimp", 0, 10, true, "Items.Preset_Lexington_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverLexNeonPrimary", "Items.Preset_Overture_Neon", 0, 10, true, "Items.Preset_Lexington_Neon_Left_Hand")

    createEquipmentWeaponGrp("DualWieldOverOmaMilPrimary", "Items.Preset_Overture_Military", 0, 10, true, "Items.Preset_Omaha_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverOmaPimpPrimary", "Items.Preset_Overture_Pimp", 0, 10, true, "Items.Preset_Omaha_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOverOmaNeonPrimary", "Items.Preset_Overture_Neon", 0, 10, true, "Items.Preset_Omaha_Neon_Left_Hand")

    --[[
    TweakDB:CloneRecord("DualOvertureLibertyPimpPoolEntry", "DualBasePoolEntry")
    TweakDB:SetFlat("DualOvertureLibertyPimpPoolEntry.items", {"OmahaDefaultPoolEntry", "OmahaMilitaryPoolEntry", "OmahaPimpPoolEntry", "OmahaNeonPoolEntry"})

    TweakDB:CreateRecord("DualWieldPrimaryEquipItemPoolLeft", "gamedataNPCEquipmentItemPool_Record")
    TweakDB:SetFlat("DualWieldPrimaryEquipItemPoolLeft.pool", {"OmahaDefaultPoolEntry", "OmahaMilitaryPoolEntry", "OmahaPimpPoolEntry", "OmahaNeonPoolEntry"})
    TweakDB:CreateRecord("DualWieldPrimaryEquipItemPoolRight", "gamedataNPCEquipmentItemPool_Record")
    TweakDB:SetFlat("DualWieldPrimaryEquipItemPoolRight.pool", {"OmahaDefaultPoolEntry", "OmahaMilitaryPoolEntry", "OmahaPimpPoolEntry", "OmahaNeonPoolEntry"})
    ]]

    TweakDB:SetFlat("DualWieldOverLibMilPrimaryEquipItemPool.pool", {"DualWieldOverLibMilPrimaryEquipItemPoolEntry", "DualWieldOverLibPimpPrimaryEquipItemPoolEntry", "DualWieldOverLibNeonPrimaryEquipItemPoolEntry", "DualWieldOverNueMilPrimaryEquipItemPoolEntry", "DualWieldOverNuePimpPrimaryEquipItemPoolEntry", "DualWieldOverNueNeonPrimaryEquipItemPoolEntry", "DualWieldOverUniMilPrimaryEquipItemPoolEntry", "DualWieldOverUniPimpPrimaryEquipItemPoolEntry", "DualWieldOverUniNeonPrimaryEquipItemPoolEntry", "DualWieldOverLexMilPrimaryEquipItemPoolEntry", "DualWieldOverLexPimpPrimaryEquipItemPoolEntry", "DualWieldOverLexNeonPrimaryEquipItemPoolEntry", "DualWieldOverOmaMilPrimaryEquipItemPoolEntry", "DualWieldOverOmaPimpPrimaryEquipItemPoolEntry", "DualWieldOverOmaNeonPrimaryEquipItemPoolEntry"})


    for i,v in ipairs({"Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma", "Character.rcr_sixthstreet_officer_officer_overture_ma", "Character.sixthstreet_officer_officer_overture_ma"}) do
        TweakDB:SetFlat(v..".primaryEquipment", "DualWieldOverLibMilPrimaryEquipGrp")
    end

    TweakDB:SetFlat("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.arr_sixthstreet_prepers3_grenadier2_nova_ma_rare.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.rcr_sixthstreet_prepers3_grenadier2_nova_ma_rare.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")




    TweakDB:SetFlat("Character.sixthstreet_menace1_fmelee2_baton_wa_rare_inline5.localizedName", TweakDB:GetFlat("Character.sixthstreet_menace1_fshotgun2_tactician_wa_rare_inline5.localizedName"))




    --more techies

    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.gle_sixthstreet_hooligan_ranged1_nova_wa")
    TweakDB:SetFlat("Character.gle_sixthstreet_hooligan_ranged1_nova_wa.visualTags", {"SixthStreet"})
    --cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.rcr_sixthstreet_hooligan_ranged1_saratoga_wa")
    --TweakDB:SetFlat("Character.rcr_sixthstreet_hooligan_ranged1_saratoga_wa.primaryEquipment", "TechieGroupFem")
    --cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.arr_sixthstreet_hooligan_ranged1_saratoga_ma")
    cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.hil_sixthstreet_hooligan_ranged1_nova_ma")

    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.rcr_sixth_street_grunt_short_range_w_easy")
    TweakDB:SetFlat("Character.rcr_sixth_street_grunt_short_range_w_easy.visualTags", {"SixthStreet"})

    cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.rey_sixthstreet_hooligan_ranged1_nova_ma")

    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.rcr_04_enemy_handgun_wa")--error 404 gig



    --serious side effects
    cloneNPCDataMinimal("Character.sixthstreet_patrol2_ranged2_ajax_wa", "Character.sts_std_arr_01_sixthstreet_hooligan_ranged1_nova_wa")



    --stadium love
    cloneNPCDataMinimal("Character.sixthstreet_menace1_fshotgun2_tactician_wa_rare", "Character.mq008_6th_street_female")
    cloneNPCDataMinimal("Character.sixthstreet_menace1_shotgun2_tactician_ma", "Character.mq008_6th_street_male")
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_veteran3_ranged2_ajax_ma", "Character.mq008_6th_street_representative")
    TweakDB:SetFlat("Character.mq008_6th_street_representative.rarity", "NPCRarity.Boss")
    addToList("Character.mq008_6th_street_representative.tags", "MaxTac_NotPrevention")
    addToList("Character.mq008_6th_street_representative.tags", "Cyberpsycho")
    addToList("Character.mq008_6th_street_representative.abilities", "Ability.CanGuardBreak")
    
    TweakDB:SetFlat("Character.mq008_6th_street_representative.fullDisplayName", TweakDB:GetFlat("Character.mq008_6th_street_representative.displayName"))
    TweakDB:SetFlat("Character.mq008_6th_street_female.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_male.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_comp1.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_comp2.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_comp3.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_comp4.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_civ_judge_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq008_6th_street_civ_judge_wa.skipDisplayArchetype", true)
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_patrol2_ranged2_ajax_wa", "Character.mq008_6th_street_comp1")--walker



    --family heirloom
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_patrol2_ranged2_ajax_wa", "Character.sts_wbr_hil_06_6th_street_ganger_wa")
    cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.sts_wbr_hil_06_6th_street_marksman_ma")
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_prepers3_shotgun3_carnage_ma_rare", "Character.sts_wbr_hil_06_wyatt_alken")
    cloneNPCDataMinimal("Character.sixthstreet_veteran3_ranged2_ajax_ma", "Character.sts_wbr_hil_06_officer")
    --cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_patrol2_ranged2_ajax_wa", "Character.sts_wbr_hil_06_6th_street_ganger")
    WyattHash = ToCName{ hash_lo = 0x31157C59, hash_hi = 0x91F198EB }
    TweakDB:SetFlat("Character.sts_wbr_hil_06_wyatt_alken.appearanceName", WyattHash)

    TweakDB:SetFlat("Character.sts_wbr_hil_06_6th_street_ganger.rarity", "NPCRarity.Elite")

    --nasty hangover
    cloneNPCDataMinimal("Character.sixthstreet_officer_officer_overture_ma", "Character.sts_std_arr_06_sixthstreet_hooligan_ranged1_saratoga_ma_Jeff")

    cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.sts_std_arr_06_sixthstreet_menace1_shotgun2_igla_ma")
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_menace1_fshotgun2_tactician_wa_rare", "Character.sts_std_arr_06_sixthstreet_patrol2_ranged2_ajax_wa_Patricia")
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_sniper2_sniper2_grad_ma_rare", "Character.sts_std_arr_06_sixthstreet_patrol2_ranged2_ajax_wa")

    TweakDB:SetFlat("Character.sts_std_arr_06_sixthstreet_patrol2_ranged2_ajax_wa.visualTags", {"SixthStreet"})
    TweakDB:SetFlat("Character.sts_std_arr_06_sixthstreet_veteran3_ranged2_ajax_ma_James.skipDisplayArchetype", true)




    --hacking the hacker
    TweakDB:SetFlat("Character.sts_std_arr_11_6thStreet_ganger_netrunner.archetypeData", "SixthStreetNetrunnerArchetypeData")
    TweakDB:SetFlat("Character.sts_std_arr_11_6thStreet_ganger_netrunner.actionMap", "GangNetrunner.Map")
    TweakDB:SetFlat("Character.sts_std_arr_11_lucius.archetypeData", "Character.sixthstreet_prepers3_grenadier2_nova_ma_rare_inline0")
    TweakDB:SetFlat("Character.sts_std_arr_11_lucius.rarity", "NPCRarity.Boss")
    addToList("Character.sts_std_arr_11_lucius.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_std_arr_11_lucius.abilities", "Ability.CanGuardBreak")

	TweakDB:CloneRecord("WorkingOspreyWeaponItem", "Items.Preset_Osprey_Default")
	TweakDB:SetFlat("WorkingOspreyWeaponItem.audioName", "wea_set_testera")
    TweakDB:SetFlat("WorkingOspreyWeaponItem.primaryTriggerMode", "TriggerMode.SemiAuto")
    TweakDB:SetFlat("WorkingOspreyWeaponItem.secondaryTriggerMode", "TriggerMode.SemiAuto")
    TweakDB:SetFlat("WorkingOspreyWeaponItem.triggerModes", {"TriggerMode.SemiAuto"})

    createEquipmentWeaponGrp("LuciusOspreyPrimary", "WorkingOspreyWeaponItem", 0, 10, false)
    TweakDB:SetFlat("Character.sts_std_arr_11_lucius.primaryEquipment", "LuciusOspreyPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sts_std_arr_11_lucius.dropsWeaponOnDeath", false)

    TweakDB:SetFlat("Character.sts_std_arr_11_officer.rarity", "NPCRarity.Elite")


    --life's work
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.sts_hey_gle_06_6th_street_short")
    TweakDB:SetFlat("Character.sts_hey_gle_06_6th_street_officer.rarity", "NPCRarity.Elite")


    --going away party
    cloneNPCDataMinimal("Character.sixthstreet_prepers3_grenadier2_nova_ma_rare", "Character.sts_std_rcr_03_gangers_melee_med")
    cloneNPCDataMinimal("Character.sixthstreet_patrol2_shotgun3_satara_ma_elite", "Character.sts_std_rcr_03_gangers_officer")
    cloneNPCDataMinimal("Character.sixthstreet_veteran3_ranged2_ajax_ma", "Character.sts_std_rcr_03_gangers_dave")
    --TweakDB:SetFlat("Character.sts_std_rcr_03_gangers_dave.rarity", "NPCRarity.Boss")
    --TweakDB:SetFlat("Character.sts_std_rcr_03_gangers_dave.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))


    setArchetypeData("Buck", {"KerezAbilityGrp", "T3HeavyMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalNormalAbilityGrp", "BleedImmuneAbilityGrp", "TacticalAbilityGrp"}, {}, {"6SGResStatModifierGrp"}, "ArchetypeType.HeavyMeleeT2", true)
    TweakDB:SetFlat("Character.mq025_buck.archetypeData", "BuckArchetypeData")
    TweakDB:SetFlat("NPCStatPreset.Mq025_BuckHealth_inline1.value", 1)
    TweakDB:SetFlat("Character.mq025_buck.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "NPCStatPreset.Mq025_BuckDamage", "NPCStatPreset.Mq025_BuckHealth", "Character.Boss_Poise_Primary_Stat_ModGroup"})
    TweakDB:SetFlat("Character.mq025_6th_friendly.skipDisplayArchetype", true)


	addToList("Character.mq025_buck.statModifiers", "CannotUseCombatStimStat")








    --Wrai


    WraiEliteList = {"Character.bls_se_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.bls_se_wraiths_warrior3_ranged3_quasar_wa_rare", "Character.bls_se_wraiths_warrior3_shotgun3_palica_ma_elite", "Character.bls_se_wraiths_warrior3_shotgun3_satara_ma_elite", "Character.gang_retaliation_enemies_wraiths_ranged3_quasar_wa_rare", "Character.gang_retaliation_enemies_wraiths_ranged3_quasar_wa_rare_ina_02", "Character.ina_02_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.ina_03_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.ina_03_wraiths_warrior3_shotgun3_palica_ma_elite", "Character.q103_wraiths_sniper", "Character.rcr_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.rcr_wraiths_warrior3_ranged3_quasar_wa_rare", "Character.rcr_wraiths_warrior3_shotgun3_palica_ma_elite", "Character.sa_ep1_courier_loop_enemies_wraiths_ranged3_quasar_wa_rare", "Character.sq021_wraith_handgun_officer", "Character.sts_bls_ina_08_wraith_melee_grunt_hard_m", "Character.sts_bls_ina_08_wraith_sniper_ma", "Character.wraiths_ghost2_sniper2_achilles_ma_rare", "Character.wraiths_warrior3_melee3_hammer_wa_rare", "Character.wraiths_warrior3_ranged3_quasar_wa_rare", "Character.wraiths_warrior3_shotgun3_palica_ma_elite", "Character.wraiths_warrior3_shotgun3_satara_ma_elite", "Character.wwd_wraiths_warrior3_ranged3_quasar_wa_rare", "Character.wwd_wraiths_warrior3_shotgun3_palica_ma_elite", "Character.q103_raffen_shiv_boss_alpha", "Character.q103_raffen_shiv_sniper_male"}
	for i,v in ipairs(WraiEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end



    TweakDB:SetFlat("Character.rcr_wraiths_strongarms_hmelee3_fists_mb_elite.archetypeData", "WraiHeavyMeleeArchetypeData")
    TweakDB:SetFlat("Character.wraiths_strongarms_hmelee3_fists_mb_elite.archetypeData", "WraiHeavyMeleeArchetypeData")



    TweakDB:SetFlat("Character.wraiths_warrior3_melee3_hammer_wa_rare_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastMeleeT3.enumName"))
    TweakDB:SetFlat("Character.wraiths_ghost2_sniper2_achilles_ma_rare_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastSniperT3.enumName"))
    TweakDB:SetFlat("Character.wraiths_ghost2_sniper2_achilles_ma_rare_inline1.localizedName", "")



    TweakDB:SetFlat("Character.q103_raffen_nash.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q103_raffen_nash.rarity", "NPCRarity.Boss")
    addToList("Character.q103_raffen_nash.tags", "MaxTac_NotPrevention")
    addToList("Character.q103_raffen_nash.tags", "Cyberpsycho")
    TweakDB:SetFlat("Character.q103_raffen_nash.fullDisplayName", TweakDB:GetFlat("Character.q103_raffen_nash.displayName"))

    --spector LocKey(22858ull) shade 22856 ghost 22851

    TweakDB:SetFlat("Character.q103_raffen_shiv_boss_alpha.archetypeData", "Character.wraiths_ghost2_sniper2_achilles_ma_rare_inline0")
    TweakDB:SetFlat("Character.q103_raffen_shiv_boss_alpha.displayName", LocKey(22851ull))
    TweakDB:SetFlat("Character.q103_raffen_shiv_boss_alpha.skipDisplayArchetype", true)


    TweakDB:SetFlat("Character.q103_wraiths_handgun_inline0.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_handgun_inline1.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_netrunner_inline0.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_netrunner_inline1.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_rifle_ma_inline0.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_rifle_ma_inline1.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_shotgun_tech_ma_inline0.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_shotgun_tech_ma_inline1.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_smg_ma_inline0.value", 1)
    TweakDB:SetFlat("Character.q103_wraiths_smg_ma_inline1.value", 1)

    TweakDB:SetFlat("Character.q103_wraiths_shotgun_tech_ma.rarity", "NPCRarity.Elite")


    --the hunt
    cloneNPCDataMinimal("Character.wraiths_warrior3_ranged3_quasar_wa_rare", "Character.sq021_wraith_handgun_officer")


    --trevor gig
    cloneNPCDataMinimalWithoutVisual("Character.wraiths_warrior3_melee3_hammer_wa_rare", "Character.sts_bls_ina_08_wraith_melee_grunt_hard_m")
    TweakDB:SetFlat("Character.sts_bls_ina_08_wraith_melee_grunt_hard_m.visualTags", {"Wraiths", "Prisoner"})


    TweakDB:SetFlat("Character.sts_bls_ina_08_wraith_shotgun_ma.rarity", "NPCRarity.Elite")





    --riders on the storm
    cloneNPCDataMinimalWithoutVisual("Character.wraiths_strongarms_hmelee3_fists_mb_elite", "Character.sq004_raffen_shiv_boss_alpha")
    cloneNPCDataMinimalWithoutVisual("Character.wraiths_strong_gunner3_hmg_mb_elite", "Character.sq004_raffen_shiv_boss_gamma")

    cloneNPCDataMinimal("Character.wraiths_prisoner_fmelee3_fists_ma_elite", "Character.sq004_raffen_shiv_ganger_beta")
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta.displayName", LocKey(22858ull))
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta.primaryEquipment", "Character.arasaka_ninja_fmelee3_mantis_ma_elite_inline2")
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta.skipDisplayArchetype", true)


    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta_female.archetypeData", "WraithTechieArchetypeData")
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta_female.displayName", LocKey(22856ull))
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta_female.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta_female.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_beta_female.rarity", "NPCRarity.Elite")


    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_alpha.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_gamma.skipDisplayArchetype", true)

    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_alpha.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_gamma.rarity", "NPCRarity.Boss")
    addToList("Character.sq004_raffen_shiv_boss_alpha.tags", "Cyberpsycho")
    addToList("Character.sq004_raffen_shiv_boss_gamma.tags", "Cyberpsycho")
    addToList("Character.sq004_raffen_shiv_boss_alpha.abilities", "Ability.CanGuardBreak")
    addToList("Character.sq004_raffen_shiv_boss_gamma.abilities", "Ability.CanGuardBreak")


    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_alpha.fullDisplayName", LocKey(44226ull))

    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_gamma.displayName", LocKey(46603ull))
    TweakDB:SetFlat("Character.sq004_raffen_shiv_boss_gamma.fullDisplayName", LocKey(46603ull))

    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_sniper.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sq004_raffen_shiv_ganger_shotgunner.rarity", "NPCRarity.Elite")


    --cloneNPCDataMinimal("Character.wraiths_warrior3_melee3_hammer_wa_rare", "Character.bls_se_wraiths_grunt2_melee2_crowbar_wa")
    cloneNPCDataMinimal("Character.wraiths_warrior3_melee3_hammer_wa_rare", "Character.nid_wraiths_grunt2_ranged2_copperhead_wa")



    --big pete
    TweakDB:SetFlat("Character.ina_02_new_big_pete.archetypeData", "WraithTechieArchetypeData")
    TweakDB:SetFlat("Character.ina_02_new_big_pete.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")


    TweakDB:SetFlat("Character.ina_02_officer.archetypeData", "Character.wraiths_warrior3_ranged3_quasar_wa_rare_inline4")
    TweakDB:SetFlat("Character.ina_02_officer.displayName", LocKey(22856ull))
    TweakDB:SetFlat("Character.ina_02_officer.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.ina_02_officer.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.ina_02_melee_hard.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.ina_06_wraiths_operator3_shotgun2_crusher_ma_rare.rarity", "NPCRarity.Elite")


    --iris tanner gig
    TweakDB:SetFlat("Character.ina_06_gangers_officer.archetypeData", "WraiHeavyMeleeArchetypeData")
    cloneNPCDataMinimal("Character.wraiths_prisoner_fmelee3_fists_ma_elite", "Character.ina_06_gangers_melee_elite")
    TweakDB:SetFlat("Character.ina_06_gangers_melee_elite.displayName", LocKey(22858ull))
    TweakDB:SetFlat("Character.ina_06_gangers_melee_elite.primaryEquipment", "Character.arasaka_ninja_fmelee3_mantis_ma_elite_inline2")
    TweakDB:SetFlat("Character.ina_06_gangers_melee_elite.skipDisplayArchetype", true)


    --george from assault
    TweakDB:SetFlat("Character.ma_bls_ina_se5_12_george.archetypeData", "Character.wraiths_warrior3_melee3_hammer_wa_rare_inline0")
    TweakDB:SetFlat("Character.ma_bls_ina_se5_12_george.rarity", "NPCRarity.Elite")



    WraiSniperList = {"Character.bls_se_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.ina_02_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.ina_03_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.rcr_wraiths_ghost2_sniper2_achilles_ma_rare", "Character.sts_bls_ina_08_wraith_sniper_ma", "Character.wraiths_ghost2_sniper2_achilles_ma_rare", "Character.q103_raffen_shiv_sniper_male", "Character.sq004_raffen_shiv_ganger_sniper"}
    for i,v in ipairs(WraiSniperList) do
        TweakDB:SetFlat(v..".displayName", LocKey(22851ull))
    end











    --VDB


    VDBEliteList = {"Character.bou_voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.con_voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.high_voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.hpark_voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.mon_voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.mws_gang_retaliation_enemies_voodoo_sidekick_2", "Character.q303_voodoo_boy_guard_baseball_ma", "Character.sta_voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.voodooboys_grunt1_fmelee2rare_baseball_ma_rare"}
	for i,v in ipairs(VDBEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end


    
    cloneNPCDataMinimalWithoutVisual("Character.voodooboys_grunt1_ranged2_saratoga_wa", "Character.mws_gang_retaliation_enemies_voodoo_female")





    cloneNPCDataMinimal("Character.voodooboys_grunt3coat_shotgun3_zhuo_ma_elite", "Character.q110_esc_officer_voodooboys_grunt1coat_shotgun2_palica_ma")

    cloneNPCDataMinimalWithoutVisual("Character.voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.cvi_voodooboys_grunt1_ranged2_sidewinder_wa")

    TweakDB:SetFlat("Character.q110_esc_officer_voodooboys_grunt1coat_shotgun2_palica_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_esc_reinforcementcaller_voodooboys_netrunner2_netrunner2_lexington_wa_rare.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_esc_voodooboys_grunt1_ranged2_saratoga_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_esc_voodooboys_grunt1_ranged2_sidewinder_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q110_esc_voodooboys_netrunner3_netrunner3_quasar_wa_elite.skipDisplayArchetype", true)







    setArchetypeData("Brigitte", {"T3NetrunnerIconOnlyAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "CortexAbilityGrp", "ICEAbilityGrp", "GraphiteAbilityGrp", "ResetImmuneAbilityGrp", "MemWipeImmuneAbilityGrp", "CamoAbilityGrp", "SmokeNadeAbilityGrp", "FlashNadeAbilityGrp"}, {}, {"VDBResStatModifierGrp", "VDBHackResStatModifierGrp"}, "Character.voodooboys_netrunner3_netrunner3_quasar_wa_elite_inline1", true)
    TweakDB:SetFlat("Character.Voodoo_Queen.archetypeData", "BrigitteArchetypeData")
    TweakDB:SetFlat("Character.Voodoo_Queen.rarity", "NPCRarity.Boss")
    addToList("Character.Voodoo_Queen.tags", "MaxTac_NotPrevention")
    addToList("Character.Voodoo_Queen.tags", "Cyberpsycho")
    TweakDB:SetFlat("Character.Voodoo_Queen.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup"})

    createLegendaryWeapon("Items.Preset_Grit_Pimp")
    createEquipmentWeaponGrp("BrigitteGritPrimary", "Items.Preset_Grit_Pimp_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.Voodoo_Queen.primaryEquipment", "BrigitteGritPrimaryEquipGrp")


    setArchetypeData("ElderNetrunner", {"T3NetrunnerIconOnlyAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "CortexAbilityGrp", "ICEAbilityGrp", "GraphiteAbilityGrp", "ResetImmuneAbilityGrp", "MemWipeImmuneAbilityGrp"}, {}, {"VDBResStatModifierGrp", "VDBHackResStatModifierGrp"}, "Character.voodooboys_netrunner3_netrunner3_quasar_wa_elite_inline1", true)
    TweakDB:SetFlat("Character.q110_vdb_elder_1.archetypeData", "ElderNetrunnerArchetypeData")
    TweakDB:SetFlat("Character.q110_vdb_elder_2.archetypeData", "ElderNetrunnerArchetypeData")
    TweakDB:SetFlat("Character.q110_vdb_elder_3.archetypeData", "ElderNetrunnerArchetypeData")
    TweakDB:SetFlat("Character.q110_vdb_elder_4.archetypeData", "ElderNetrunnerArchetypeData")
    TweakDB:SetFlat("Character.q110_vdb_elder_5.archetypeData", "ElderNetrunnerArchetypeData")





    --placide temp cortex ability
    TweakDB:CreateRecord("PlacideAbilityGrp", "gamedataGameplayAbilityGroup_Record")
	PlacideAbilityGrp = {"Ability.HasChargeJump", "Ability.CanGuardBreak", "Ability.CanDash", "Ability.CanUseCombatStims", "Ability.IsTier3Archetype", "Ability.HasDodge", "Ability.CanParry", "Ability.CanBlock", "Ability.CanUseCovers", "Ability.CanCatchUpDistance", "Ability.CanCatchUp", "Ability.CanUseGrenades", "Ability.CanSprintHarass", "Ability.IsShotgunnerArchetype", "CounterImmuneAbility"}
	TweakDB:SetFlat("PlacideAbilityGrp.abilities", PlacideAbilityGrp)

    setArchetypeData("Placide", {"Sandy2AbilityGrp", "KerezAbilityGrp", "PlacideAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp", "CortexAbilityGrp", "ICEAbilityGrp", "GraphiteAbilityGrp", "ResetImmuneAbilityGrp"}, {}, {"VDBResStatModifierGrp", "VDBHackResStatModifierGrp"}, "", true)

    TweakDB:SetFlat("Character.Placide.archetypeData", "PlacideArchetypeData")

    TweakDB:SetFlat("Character.Placide.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.CanUseCuttingGrenades", "Ability.IsDefensive"})


    createLegendaryWeapon("Items.Preset_Tactician_Neon")
    createLegendaryWeapon("Items.Preset_Kukri_Voodoo")
    TweakDB:SetFlat("Character.Placide_inline6.item", "Items.Preset_Tactician_Neon_Legendary")
    TweakDB:SetFlat("Character.Placide_inline7.item", "Items.Preset_Kukri_Voodoo_Legendary")

    TweakDB:SetFlat("WeaponConditions.RangedHybridPrimaryWeaponRangedUnequipCondition_inline1.AND", {"Condition.TargetBelow4m", "Condition.NotTargetInSafeZone", "Condition.TargetHasMeleeWeapon", "Condition.NotInStatesShoot", "Condition.NotInStatesEquip"})

    TweakDB:SetFlat("WeaponConditions.RangedHybridPrimaryWeaponMeleeEquipCondition_inline0.AND", {"Condition.TargetBelow4m", "Condition.NotTargetInSafeZone", "Condition.TargetHasMeleeWeapon", "Condition.NotInStatesShoot", "Condition.NotInStatesEquip"})



    --VALEN



    ValenEliteList = {"Character.arr_valentinos_elite2_ranged3_dual_ma_rare", "Character.gang_retaliation_enemies_valentinos_ranged3_dual_ma_rare_gle_04", "Character.gang_retaliation_enemies_valentinos_ranged3_dual_ma_rare_rey_02", "Character.gang_retaliation_enemies_valentinos_fmelee2_machete_ma_rare_gle_04", "Character.gang_retaliation_enemies_valentinos_fmelee2_machete_ma_rare_rey_02", "Character.gle_valentinos_grunt3_fmelee2_knife_ma_rare", "Character.gle_valentinos_grunt3_fmelee2_machete_ma_rare", "Character.gle_valentinos_grunt4_hmelee2_fists_mb_rare", "Character.gle_valentinos_grunt4_hmelee2_knife_mb_rare", "Character.rey_valentinos_grunt3_fmelee2_machete_ma_rare", "Character.rey_valentinos_grunt4_hmelee2_fists_mb_rare", "Character.rey_valentinos_grunt4_hmelee2_knife_mb_rare", "Character.sa_ep1_courier_loop_enemies_valentinos_fmelee2_machete_ma_rare", "Character.sa_ep1_courier_loop_enemies_valentinos_shotgun2_igla_ma_rare", "Character.spr_valentinos_elite2_ranged3_dual_ma_rare", "Character.spr_valentinos_grunt3_fmelee2_machete_ma_rare", "Character.spr_valentinos_grunt4_hmelee2_fists_mb_rare", "Character.spr_valentinos_grunt4_hmelee2_knife_mb_rare", "Character.sts_hey_rey_08_valentions_dual", "Character.sts_hey_rey_08_valentions_melee_big", "Character.valentinos_elite2_ranged3_dual_ma_rare", "Character.valentinos_grunt3_fmelee2_knife_ma_rare", "Character.valentinos_grunt3_fmelee2_machete_ma_rare", "Character.valentinos_grunt4_hmelee2_fists_mb_rare", "Character.valentinos_grunt4_hmelee2_knife_mb_rare"}
	for i,v in ipairs(ValenEliteList) do
		TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
	end




    --valen inquisidor 22772, bravo 22776

    --fast ranged use lvl 2 and elite tag for male

    ValenEliteHash1 = ToCName{ hash_lo = 0x8EDE1422, hash_hi = 0x66F5E907 }
    ValenEliteHash2 = ToCName{ hash_lo = 0x8EDE126F, hash_hi = 0x66F5E807 }
    ValenEliteHash3 = ToCName{ hash_lo = 0x8EDE10BC, hash_hi = 0x66F5E707 }
    ValenEliteHash4 = ToCName{ hash_lo = 0x8EDE0F09, hash_hi = 0x66F5E607 }
    ValenEliteHash5 = ToCName{ hash_lo = 0x8EDE0D56, hash_hi = 0x66F5E507 }
    ValenEliteHash6 = ToCName{ hash_lo = 0x8EDE0BA3, hash_hi = 0x66F5E407 }


    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman.archetypeData", "ValenT2FastRangedArchetypeData")
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman.displayName", LocKey(22776ull))
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman.visualTags", {"Valentinos", "Lvl2", "Elite"})
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman_wa.archetypeData", "ValenT2FastRangedArchetypeData")
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman_wa.appearanceName", ValenEliteHash1)
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman_wa.displayName", LocKey(22776ull))
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.gle_04_valentinos_fast_rifleman_wa.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.ma_hey_gle_02_valentinos_grunt2_ranged2_ajax_ma_Rogelio_Cruz.archetypeData", "Character.valentinos_grunt2_ranged2_ajax_ma_inline0")



    --gustavo gig
    TweakDB:SetFlat("Character.sts_hey_rey_01_valentions_apartment_rifleman.archetypeData", "ValenT2FastRangedArchetypeData")
    TweakDB:SetFlat("Character.sts_hey_rey_01_valentions_apartment_rifleman.visualTags", {"Valentinos", "Elite", "Lvl2"})
    TweakDB:SetFlat("Character.sts_hey_rey_01_valentions_apartment_rifleman.displayName", LocKey(22776ull))
    TweakDB:SetFlat("Character.sts_hey_rey_01_valentions_apartment_rifleman.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_hey_rey_01_valentions_apartment_rifleman.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.sq018_rey_01_gustavo.archetypeData", "ValenT2FastRangedArchetypeData")
    TweakDB:SetFlat("Character.sts_hey_rey_01_gustavo.archetypeData", "ValenT2FastRangedArchetypeData")
    TweakDB:SetFlat("Character.sts_hey_rey_01_gustavo.rarity", "NPCRarity.Elite")

    TweakDB:SetFlat("Character.sts_hey_rey_01_officer.rarity", "NPCRarity.Elite")


    --dicky twister?
    cloneNPCDataMinimal("Character.valentinos_grunt2_melee2_knife_wa", "Character.sts_hey_rey_02_valentinos_grunt1_ranged1_nue_wa_Lena_dominguez")
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_grunt1_ranged1_nue_wa_Lena_dominguez.archetypeData", "Character.valentinos_shotgun3_shotgun3_testera_ma_elite_inline0")
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_grunt1_ranged1_nue_wa_Lena_dominguez.primaryEquipment", "Character.valentinos_shotgun3_shotgun3_testera_ma_elite_inline2")
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_grunt1_ranged1_nue_wa_Lena_dominguez.appearanceName", ValenEliteHash3)
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_grunt1_ranged1_nue_wa_Lena_dominguez.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.valentinos_sniper_sniper3_grad_wa_elite", "Character.sts_hey_rey_02_valentinos_officer_officer_overture_ma")--originally a man but for some reason he has a female voice
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_officer_officer_overture_ma.archetypeData", "ValenT2FastRangedArchetypeData")
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_officer_officer_overture_ma.appearanceName", ValenEliteHash2)

    createLegendaryWeapon("Items.Preset_Burya_Neon")
    createEquipmentWeaponGrp("ValenOfficerBuryaPrimary", "Items.Preset_Burya_Neon_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_officer_officer_overture_ma.primaryEquipment", "ValenOfficerBuryaPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sts_hey_rey_02_valentinos_officer_officer_overture_ma.skipDisplayArchetype", true)





    --karubo
    TweakDB:SetFlat("Character.sts_hey_rey_08_valentions_dual.primaryEquipment", "DualWieldOverLibMilPrimaryEquipGrp")
    cloneNPCDataMinimal("Character.valentinos_grunt2_ranged2_ajax_wa", "Character.sts_hey_rey_08_valentions_rifle")

    TweakDB:SetFlat("Character.sts_hey_rey_08_karubo.archetypeData", "ValenDualWieldArchetypeData")
    TweakDB:SetFlat("Character.sts_hey_rey_08_karubo.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sts_hey_rey_08_karubo.rarity", "NPCRarity.Boss")
    addToList("Character.sts_hey_rey_08_karubo.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_hey_rey_08_karubo.tags", "Cyberpsycho")
    addToList("Character.sts_hey_rey_08_karubo.abilities", "Ability.CanGuardBreak")
    

    cloneNPCDataMinimal("Character.valentinos_elite3_ranged3_dual_ma_elite", "Character.dtn_valentinos_grunt1_melee1_knife_ma")
    cloneNPCDataMinimal("Character.gle_04_valentinos_fast_rifleman_wa", "Character.dtn_valentinos_grunt1_melee1_knife_wa")

    TweakDB:SetFlat("Character.sts_hey_rey_08_chief.rarity", "NPCRarity.Elite")



    setArchetypeData("Cesar", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "StunImmuneAbilityGrp"}, {}, {"ValenResStatModifierGrp"}, "Character.valentinos_grunt3_fmelee2_knife_ma_rare_inline5", true)
    TweakDB:SetFlat("Character.mq025_cesar.archetypeData", "CesarArchetypeData")
    TweakDB:SetFlat("Character.mq025_cesar.skipDisplayArchetype", true)
    TweakDB:SetFlat("NPCStatPreset.Mq025_CesarHealth_inline1.value", 1)
    TweakDB:SetFlat("Character.mq025_cesar.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "NPCStatPreset.Mq025_CesarDamage", "NPCStatPreset.Mq025_CesarHealth", "Character.Boss_Poise_Primary_Stat_ModGroup"})
	addToList("Character.mq025_cesar.statModifiers", "CannotUseCombatStimStat")


    TweakDB:SetFlat("Character.mq017_streetkid_thomas.archetypeData", "Character.valentinos_shotgun3_shotgun3_testera_ma_elite_inline0")
    TweakDB:SetFlat("Character.mq017_streetkid_thomas.primaryEquipment", "DualWieldOverLibMilPrimaryEquipGrp")--kirk quest
    TweakDB:SetFlat("Character.mq017_streetkid_thomas.visualTags", {"Valentinos", "Elite", "Lvl2"})
    TweakDB:SetFlat("Character.mq017_streetkid_thomas.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.gle_04_valentinos_fast_rifleman", "Character.mq017_streetkid_thug")
    TweakDB:SetFlat("Character.mq017_streetkid_thug.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.mq017_streetkid_thug.displayName", LocKey(22772ull))
    TweakDB:SetFlat("Character.mq017_streetkid_thug.rarity", "NPCRarity.Elite")

    --going up or down gig
    TweakDB:SetFlat("Character.sts_hey_gle_05_el_gallo.rarity", "NPCRarity.Boss")
    addToList("Character.sts_hey_gle_05_el_gallo.tags", "MaxTac_NotPrevention")
    --TweakDB:SetFlat("Character.sts_hey_gle_05_el_gallo.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.sts_hey_gle_05_el_gallo.skipDisplayArchetype", true)
    addToList("Character.sts_hey_gle_05_el_gallo.tags", "Cyberpsycho")
    addToList("Character.sts_hey_gle_05_el_gallo.abilities", "Ability.CanGuardBreak")



    --jeopardy gig
    cloneNPCDataMinimal("Character.valentinos_grunt2_melee2_machete_ma", "Character.sts_hey_rey_06_enemy_baseball_bat")
    TweakDB:SetFlat("Character.sts_hey_rey_06_enemy_baseball_bat.skipDisplayArchetype", true)
    cloneNPCDataMinimal("Character.valentinos_grunt2_ranged2_ajax_wa", "Character.sts_hey_rey_06_enemy_rifle_wa")
    cloneNPCDataMinimal("Character.valentinos_grunt2_ranged2_overture_ma", "Character.sts_hey_rey_06_enemy_rifle")

    TweakDB:SetFlat("Character.sts_hey_rey_06_enemy_shotgun.rarity", "NPCRarity.Elite")


    TweakDB:SetFlat("Character.sts_hey_spr_01_jose.skipDisplayArchetype", true)--on a tight leash gig
    TweakDB:SetFlat("Character.sts_hey_spr_01_jose.rarity", "NPCRarity.Boss")
    addToList("Character.sts_hey_spr_01_jose.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_hey_spr_01_jose.tags", "Cyberpsycho")


    cloneNPCDataMinimal("Character.valentinos_grunt2_melee2_machete_wa", "Character.sts_hey_spr_01_officer")--set the female model first, then overwrite with t3 archetype and mantis 
    cloneNPCDataMinimalWithoutVisual("Character.valentinos_grunt3_fmelee2_knife_ma_rare", "Character.sts_hey_spr_01_officer")
    TweakDB:SetFlat("Character.sts_hey_spr_01_officer.archetypeData", "CesarArchetypeData")
    TweakDB:SetFlat("Character.sts_hey_spr_01_officer.primaryEquipment", "Character.arasaka_ninja_fmelee3_mantis_ma_elite_inline2")
    TweakDB:SetFlat("Character.sts_hey_spr_01_officer.appearanceName", ValenEliteHash5)
    TweakDB:SetFlat("Character.sts_hey_spr_01_officer.rarity", "NPCRarity.Elite")



    cloneNPCDataMinimal("Character.valentinos_shotgun3_shotgun3_testera_ma_elite", "Character.spr_03_valentinos_man_Pablo")--lord giveth gig
    TweakDB:SetFlat("Character.spr_03_valentinos_man_Pablo.rarity", "NPCRarity.Boss")
    addToList("Character.spr_03_valentinos_man_Pablo.tags", "MaxTac_NotPrevention")
    addToList("Character.spr_03_valentinos_man_Pablo.tags", "Cyberpsycho")
    --TweakDB:SetFlat("Character.spr_03_valentinos_man_Pablo.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.spr_03_valentinos_man_Pablo.entityTemplatePath", TweakDB:GetFlat("Character.ma_hey_rey_06_outpost_miniboss.entityTemplatePath"))
    TweakDB:SetFlat("Character.spr_03_valentinos_man_Pablo.visualTags", TweakDB:GetFlat("Character.ma_hey_rey_06_outpost_miniboss.visualTags"))
    PabloHash = ToCName{ hash_lo = 0x55B6A043, hash_hi = 0x96D8BB3E }
    TweakDB:SetFlat("Character.spr_03_valentinos_man_Pablo.appearanceName", PabloHash)

    createLegendaryWeapon("Items.Preset_Pozhar_Pimp")
    createEquipmentWeaponGrp("PabloPozharPrimary", "Items.Preset_Pozhar_Pimp_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.spr_03_valentinos_man_Pablo.primaryEquipment", "PabloPozharPrimaryEquipGrp")















    --ARASAKA

    AraTechieHash1 = ToCName{ hash_lo = 0xB74F1E40, hash_hi = 0x6E11BAB7 }
    AraTechieHash2 = ToCName{ hash_lo = 0xB74F2359, hash_hi = 0x6E11BDB7 }
    AraTechieHash3 = ToCName{ hash_lo = 0xB74F21A6, hash_hi = 0x6E11BCB7 }


    cloneNPCDataMinimal("Character.arasaka_cyborg_fshotgun3_zhuo_ma_elite", "Character.q112_arasaka_agent_rifle_flashlight_officer")--works
    TweakDB:SetFlat("Character.q112_arasaka_agent_rifle_flashlight_officer.fullDisplayName", LocKey(48880ull))
    TweakDB:SetFlat("Character.q112_arasaka_agent_rifle_flashlight_officer.rarity", "NPCRarity.Boss")
    addToList("Character.q112_arasaka_agent_rifle_flashlight_officer.tags", "Cyberpsycho")
    addToList("Character.q112_arasaka_agent_rifle_flashlight_officer.tags", "MaxTac_NotPrevention")

    Q112EscapeArasakaOfficerHash = ToCName{ hash_lo = 0x54F70E53, hash_hi = 0xA755050C }
    TweakDB:SetFlat("Character.q112_arasaka_agent_rifle_flashlight_officer.appearanceName", Q112EscapeArasakaOfficerHash)

    createEquipmentWeaponGrp("Q112EscapeOfficerPrimary", "YashaSatara", 0, 10, false)
    TweakDB:SetFlat("Character.q112_arasaka_agent_rifle_flashlight_officer.primaryEquipment", "Q112EscapeOfficerPrimaryEquipGrp")



    --Character.q112_arasaka_agent_massive at entrances
    --Character.q112_arasaka_agent_netrunner at 1st floor
    --Character.q112_arasaka_agent_rifle_flashlight_officer 1st floor heading towards players right
    --Character.q112_arasaka_agent_rifle 3 guys attacking takemura
    --Character.q112_arasaka_agent_rifle_flashlight 1st and 2nd floor reinforcement
    --Character.q112_arasaka_agent_shotgunner all around


    --cloneNPCDataMinimal("Character.arasaka_ninja_fmelee3_mantis_ma_elite", "Character.q112_infiltration_arasaka_guard_officer_ninja")--try to add ninja

    cloneNPCDataMinimal("Character.arasaka_rare2_gunner3_hmg_mm_elite", "Character.q112_infiltration_arasaka_guard_officer_ninja")--use fist because nachtigall doesnt have mantis anim

    setArchetypeData("Q112WarehouseOfficer", {"Sandy1AbilityGrp", "T3FastRangedAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalHighAbilityGrp", "ThermoAbilityGrp", "KersAbilityGrp", "SmokeNadeAbilityGrp", "ShockAbilityGrp", "BleedImmuneAbilityGrp", "TacticalAbilityGrp"}, {}, {"AraResStatModifierGrp", "AraHackResStatModifierGrp"}, "ArchetypeType.FastMeleeT3", true)
    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.archetypeData", "Q112WarehouseOfficerArchetypeData")

    --addToList("Character.q112_infiltration_arasaka_guard_officer_ninja.abilities", "Ability.SandevistanDashShoot")

    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.rarity", "NPCRarity.Boss")
    addToList("Character.q112_infiltration_arasaka_guard_officer_ninja.tags", "MaxTac_NotPrevention")
    addToList("Character.q112_infiltration_arasaka_guard_officer_ninja.tags", "Cyberpsycho")

    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.displayName", LocKey(48893ull))
    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.fullDisplayName", LocKey(48893ull))
    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.displayName", LocKey(504ull))
    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.fullDisplayName", LocKey(504ull))
    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.fullDisplayName", TweakDB:GetFlat("Character.q113_smasher_arasaka_mantis.displayName"))
    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.skipDisplayArchetype", false)
    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    --TweakDB:SetFlat("Character.q112_arasaka_netrunner.skipDisplayArchetype", true)


	--TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.entityTemplatePath", "base\\quest\\tertiary_characters\\ghost_nachtigall.ent")
	Q112InfiltrateArasakaOfficerHash = ToCName{ hash_lo = 0x94C258B8, hash_hi = 0x394CBF04 }
    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.appearanceName", Q112InfiltrateArasakaOfficerHash)

    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.CanUseCuttingGrenades", "Ability.CanUseFlashbangGrenades", "Ability.IsReckless"})

    --Q112WarehouseOfficerHash = ToCName{ hash_lo = 0xF319ED1E, hash_hi = 0xEB48A43E }
    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.appearanceName", Q112WarehouseOfficerHash)

    --bennett
    --john_davis
    --kurtz
    --sec_low_m_02_enus_40_fat
    --sec_high_m_07_bra_40
    NachtigallVO = ToCName{ hash_lo = 0x8A2E5642, hash_hi = 0xDFD09352 }
    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.voiceTag", NachtigallVO)

    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.objectActions", {"QuickHack.BossGrenadeHackBase", "QuickHack.BossBaseBlindHack", "QuickHack.BossBaseWeaponMalfunctionHack", "QuickHack.BossBaseLocomotionMalfunctionHack", "QuickHack.BossBaseOverheatHack", "QuickHack.BossOverloadBaseHack", "QuickHack.BossBrainMeltBaseHack", "QuickHack.BossBaseCyberwareMalfunctionHack", "QuickHack.BossSystemCollapseHackBase", "QuickHack.ChimeraMadnessHackBase", "QuickHack.BossMemoryWipeHackBase", "QuickHack.BossBaseBlackWallHack", "QuickHack.BossSuicideHackBase", "QuickHack.BaseCommsCallInHack", "QuickHack.BaseCommsNoiseHack", "QuickHack.BasePingHack", "QuickHack.BaseContagionHack", "QuickHack.BaseWhistleHack", "QuickHack.RemoteBreach", "Takedown.NewPerkFinisher", "Takedown.NewPerkFinisherBlunt"})


    TweakDB:SetFlat("Character.q112_infiltration_arasaka_guard_officer_ninja.objectActions", {"QuickHack.GrenadeHackBase", "QuickHack.BaseBlindHack", "QuickHack.BaseWeaponMalfunctionHack", "QuickHack.BaseLocomotionMalfunctionHack", "QuickHack.BaseOverheatHack", "QuickHack.OverloadBaseHack", "QuickHack.BrainMeltBaseHack", "QuickHack.BaseCyberwareMalfunctionHack", "QuickHack.SystemCollapseHackBase", "QuickHack.ChimeraMadnessHackBase", "QuickHack.BaseMemoryWipeHack", "QuickHack.BaseBlackWallHack", "QuickHack.SuicideHackBase", "QuickHack.BaseCommsCallInHack", "QuickHack.BaseCommsNoiseHack", "QuickHack.BasePingHack", "QuickHack.BaseContagionHack", "QuickHack.BaseWhistleHack", "QuickHack.RemoteBreach", "Takedown.NewPerkFinisher", "Takedown.NewPerkFinisherBlunt"})



    TweakDB:SetFlat("Character.q113_takemura_allies.archetypeData", "Character.arasaka_soldier1_ranged3_masamune_mah_rare_inline4")
    cloneNPCDataMinimal("Character.arasaka_cyborg_franged3_shingen_wa_elite", "Character.q113_top_atrium_rifleman2")
    cloneNPCDataMinimal("Character.arasaka_ninja_fmelee3_katana_wa_elite", "Character.q113_top_atrium_riflewoman")


    TweakDB:SetFlat("Character.q113_estate_mansion_guard_ninja.rarity", "NPCRarity.Boss")
    --addToList("Character.q113_estate_mansion_guard_ninja.tags", "MaxTac_NotPrevention")
    TweakDB:SetFlat("Character.q113_estate_mansion_guard_ninja.tags", {"MaxTac_NotPrevention"})--break hold
    addToList("Character.q113_estate_mansion_guard_ninja.tags", "Cyberpsycho")
    TweakDB:SetFlat("Character.q113_estate_mansion_guard_ninja.displayName", LocKey(44204ull))
    TweakDB:SetFlat("Character.q113_estate_mansion_guard_ninja.fullDisplayName", LocKey(44204ull))
    TweakDB:SetFlat("Character.q113_estate_mansion_guard_ninja.skipDisplayArchetype", true)



    --turn nonboss mechs from dftr into boss
    --TweakDB:SetFlat("Character.q115_lobby_arasaka_mech.rarity", "NPCRarity.Boss")
    --TweakDB:SetFlat("Character.q115_solo_nest_arasaka_mech_test.rarity", "NPCRarity.Boss")
    --TweakDB:SetFlat("Character.q115_lobby_arasaka_mech.fullDisplayName", LocKey(48886ull))
    --TweakDB:SetFlat("Character.q115_solo_nest_arasaka_mech_test.fullDisplayName", LocKey(48886ull))

    --normal riflemen
    --Character.q115_lobby_arasaka_rifleman_normal(used multiple times so dont modify)
    --Character.q115_lobby_arasaka_rifleman_elite has break hold? Other enemies seem to have it too
    --Character.q115_lobby_arasaka_handgunner_normal(used once)
    --Character.q115_lobby_arasaka_shotgunner_normal
    --Character.q115_lobby_arasaka_rifleman_elite_with_lift_token
    --Character.q115_lobby_arasaka_rifleman_normal
    --Character.q115_lobby_arasaka_shotgunner_large(2 at nest entrace)
    --Character.q115_lobby_arasaka_shotgunner_elite(1 at nest)
    --Character.q115_lobby_arasaka_heavy_gunner_elite
    --Character.q115_solo_nest_arasaka_droid_fodder
    --Character.q115_solo_nest_arasaka_fists_massive(1 in nest)
    --Character.q115_lobby_arasaka_ninja_mantis_elite(same guy in lobby and nest?) Takedown works on him for some reason
    --Character.q115_lobby_arasaka_katana_rare_wa lobby and nest? Takedown doesnt work
    --Character.q115_solo_nest_arasaka_heavy_gunner_elite 2 when opening nest mainframe



    --nonelites from main quests into elites
    for i,v in ipairs({"Character.q113_ceo_floor_officer", "Character.q113_ceo_floor_rifleman", "Character.q113_ceo_floor_shotgunner", "Character.q113_estate_mansion_female_guard_rifleman", "Character.q113_estate_mansion_guard_shotgunner", "Character.q113_estate_mansion_guard_sniper", "Character.q113_top_atrium_massive", "Character.q113_top_atrium_officer", "Character.q113_top_atrium_sumo", "Character.q115_arasaka_atrium_melee_knife", "Character.q115_arasaka_atrium_officer", "Character.q115_arasaka_atrium_shotgunner_agent_rare", "Character.q115_arasaka_jungle_shotgunner_ma_rare", "Character.q115_arasaka_nest_officer", "Character.q115_arasaka_security_squad_one_reinf", "Character.q115_atrium_heavy_melee_fists", "Character.q115_lobby_arasaka_katana_rare_wa", "Character.q115_lobby_arasaka_rifleman_elite", "Character.q115_lobby_arasaka_rifleman_elite_with_lift_token", "Character.q115_lobby_arasaka_shotgunner_large", "Character.q115_lobby_arasaka_shotgunner_normal", "Character.q115_nest_arasaka_deployment_elite", "Character.q115_solo_nest_arasaka_sniper", "Character.q112_arasaka_agent_rifle", "Character.q112_arasaka_agent_rifle_flashlight", "Character.q112_arasaka_agent_rifle_flashlight_no_reaction", "Character.q112_arasaka_agent_shotgunner", "Character.q112_arasaka_sniper_01_officer", "Character.q112_arasaka_sniper_02", "Character.q112_arasaka_sniper_03", "Character.q112_infiltration_arasaka_guard_officer", "Character.q112_infiltration_arasaka_shotgunner2", "Character.q112_infiltration_arasaka_sniper", "Character.q112_parade_officer_soldier1_ranged3_masamune_mah_rare", "Character.q112_parade_soldier_ranged_reinf", "Character.q112_parade_soldier_shotgunner_reinf"}) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end


    for i,v in ipairs({"Character.q113_arasaka_jungle_elite_shotgunner", "Character.q113_arasaka_jungle_massive", "Character.q113_arasaka_jungle_sumo", "Character.q113_arasaka_jungle_terminator", "Character.q113_arasaka_jungle_terminator_officer", "Character.q113_ceo_floor_handgunner", "Character.q113_ceo_floor_officer", "Character.q113_ceo_floor_rifleman", "Character.q113_ceo_floor_shotgunner", "Character.q113_jungle_guard_friendly", "Character.q113_jungle_guard_friendly_female", "Character.q113_top_atrium_massive", "Character.q113_top_atrium_officer", "Character.q113_top_atrium_rifleman", "Character.q113_top_atrium_rifleman2", "Character.q113_top_atrium_riflewoman", "Character.q113_top_atrium_sumo", "Character.q113_estate_mansion_female_guard_rifleman", "Character.q113_estate_mansion_guard_ninja", "Character.q113_estate_mansion_guard_officer", "Character.q113_estate_mansion_guard_rifleman", "Character.q113_estate_mansion_guard_shotgunner", "Character.q113_estate_mansion_guard_sniper", "Character.q113_estate_mansion_netrunner", "Character.q113_takemura_allies", "Character.q114_arasaka_manufacturing_guard", "Character.q114_arasaka_manufacturing_handgunner", "Character.q114_arasaka_manufacturing_handgunner", "Character.q114_arasaka_manufacturing_shotgunner", "Character.q114_arasaka_manufacturing_takedown_guard", "Character.q114_arasaka_manufacturing_takedown_guard_f", "Character.q112_arasaka_agent_massive", "Character.q112_arasaka_agent_netrunner", "Character.q112_arasaka_agent_officer", "Character.q112_arasaka_agent_rifle", "Character.q112_arasaka_agent_rifle_flashlight", "Character.q112_arasaka_agent_shotgunner"}) do
        TweakDB:SetFlat(v..".displayName", LocKey(0ull))
    end



    --yuki agent to use rifle
    TweakDB:SetFlat("Character.arasaka_agent_franged2_yukimura_wa_rare_inline1.pool", {"Character.ArasakaSMGPool_inline0", "Character.ArasakaSMGPool_inline2"})

    TweakDB:SetFlat("Character.q113_top_atrium_arasaka_drone.affiliation", "Factions.Arasaka")



    cloneNPCDataMinimal("Character.arasaka_cyborg_fshotgun3_zhuo_ma_elite", "Character.q115_arasaka_jungle_commander_bodyguard")
    createEquipmentWeaponGrp("CyborgDemoGrenadeLauncherPrimary", "Items.Preset_Authority_Default", 0, 10, false)
    TweakDB:SetFlat("Character.q115_arasaka_jungle_commander_bodyguard.primaryEquipment", "CyborgDemoGrenadeLauncherPrimaryEquipGrp")
    TweakDB:SetFlat("Character.arasaka_cyborg_fshotgun3_zhuo_ma_elite.dropsWeaponOnDeath", false)

    cloneNPCDataMinimal("Character.arasaka_cyborg_franged3_shingen_wa_elite", "Character.q115_arasaka_security_squad_two_reinf")--one of the fem executioners is in the jungle by weyland crash
    TweakDB:SetFlat("Character.q115_arasaka_jungle_officer.rarity", "NPCRarity.Boss")
    addToList("Character.q115_arasaka_jungle_officer.tags", "MaxTac_NotPrevention")
    addToList("Character.q115_arasaka_jungle_officer.tags", "Cyberpsycho")
    --TweakDB:SetFlat("Character.q115_arasaka_jungle_officer.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.q115_arasaka_jungle_officer.fullDisplayName", TweakDB:GetFlat("Character.q114_arasaka_manufacturing_officer.displayName"))



    TweakDB:SetFlat("Character.q115_arasaka_atrium_melee_mantis_blades.rarity", "NPCRarity.Boss")--combat reinforcement from rogue ending
    addToList("Character.q115_arasaka_atrium_melee_mantis_blades.tags", "MaxTac_NotPrevention")
    addToList("Character.q115_arasaka_atrium_melee_mantis_blades.tags", "Cyberpsycho")
    --TweakDB:SetFlat("Character.q115_arasaka_atrium_melee_mantis_blades.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.q115_arasaka_atrium_melee_mantis_blades.fullDisplayName", TweakDB:GetFlat("Character.q114_arasaka_manufacturing_officer.displayName"))
    addToList("Character.q115_arasaka_atrium_melee_mantis_blades.abilities", "Ability.HasSystemCollapseImmunity")
    TweakDB:SetFlat("Character.q115_arasaka_atrium_melee_mantis_blades.appearanceName", AraTechieHash3)
    TweakDB:SetFlat("Character.q115_arasaka_atrium_melee_mantis_blades.skipDisplayArchetype", true)


    TweakDB:SetFlat("Character.q115_lobby_arasaka_ninja_mantis_elite.rarity", "NPCRarity.Boss")
    addToList("Character.q115_lobby_arasaka_ninja_mantis_elite.tags", "MaxTac_NotPrevention")
    addToList("Character.q115_lobby_arasaka_ninja_mantis_elite.tags", "Cyberpsycho")
    --TweakDB:SetFlat("Character.q115_lobby_arasaka_ninja_mantis_elite.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.q115_lobby_arasaka_ninja_mantis_elite.fullDisplayName", TweakDB:GetFlat("Character.q114_arasaka_manufacturing_officer.displayName"))
    TweakDB:SetFlat("Character.q115_lobby_arasaka_ninja_mantis_elite.skipDisplayArchetype", true)
    addToList("Character.q115_lobby_arasaka_ninja_mantis_elite.abilities", "Ability.HasSystemCollapseImmunity")


    cloneNPCDataMinimal("Character.arasaka_ranger1_ranged2_shingen_ma", "Character.q114_arasaka_manufacturing_handgunner")



    cloneNPCDataMinimalWithoutVisual("Character.arasaka_cyborg_fshotgun3_zhuo_ma_elite", "Character.q114_arasaka_manufacturing_soldier_shotgunner_rare")--after saul lifts the lockdown
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_soldier_shotgunner_rare.displayName", LocKey(22585ull))
    ArasakaCommanderAtriumHash = ToCName{ hash_lo = 0x91E4F380, hash_hi = 0x275BFE8A }
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_soldier_shotgunner_rare.appearanceName", ArasakaCommanderAtriumHash)
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_soldier_shotgunner_rare.entityTemplatePath", TweakDB:GetFlat("Character.q115_arasaka_jungle_officer.entityTemplatePath"))


    cloneNPCDataMinimalWithoutVisual("Character.arasaka_ranger1_ranged2_masamune_ma", "Character.q115_lobby_arasaka_handgunner_normal")
    cloneNPCDataMinimal("Character.arasaka_cyborg_franged3_shingen_wa_elite", "Character.q114_arasaka_manufacturing_sniper_rare")



    cloneNPCDataMinimal("Character.arasaka_cyborg_franged3_shingen_ma_elite", "Character.q005_arasaka_kill_squad_4_officer")
    TweakDB:SetFlat("Character.q005_arasaka_kill_squad_4_officer.displayName", LocKey(22583ull))
    TweakDB:SetFlat("Character.q005_arasaka_kill_squad_4_officer.appearanceName", AraTechieHash1)
    TweakDB:SetFlat("Character.q005_arasaka_kill_squad_4_officer.archetypeData", "ArasakaTechieArchetypeData")
    TweakDB:SetFlat("Character.q005_arasaka_kill_squad_4_officer.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q005_arasaka_kill_squad_4_officer.skipDisplayArchetype", true)




    TweakDB:SetFlat("Character.arasaka_cyborg_fshotgun3_zhuo_ma_elite_inline5.localizedName", "")
    TweakDB:SetFlat("Character.arasaka_cyborg_fshotgun3_zhuo_ma_elite.displayName", LocKey(22585ull))
    TweakDB:SetFlat("Character.arasaka_cyborg_grenadier3_yukimura_ma_elite.displayName", LocKey(22585ull))
    TweakDB:SetFlat("Character.cpz_arasaka_cyborg_fshotgun3_zhuo_ma_elite.displayName", LocKey(22585ull))
    TweakDB:SetFlat("Character.cpz_arasaka_cyborg_grenadier3_yukimura_ma_elite.displayName", LocKey(22585ull))
    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_shotgunner.displayName", LocKey(22585ull))
    --TweakDB:SetFlat("Character.q112_infiltration_arasaka_shotgunner.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q115_arasaka_jungle_commander_bodyguard.displayName", LocKey(22585ull))


    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.appearanceName", AraTechieHash2)
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.archetypeData", "ArasakaTechieArchetypeData")
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.rarity", "NPCRarity.Boss")
    addToList("Character.q114_arasaka_manufacturing_officer.tags", "MaxTac_NotPrevention")
    addToList("Character.q114_arasaka_manufacturing_officer.tags", "Cyberpsycho")
    --TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.displayName", LocKey(22583ull))
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_officer.fullDisplayName", LocKey(22583ull))


    --arasaka field techie 22583, cyborg demo expert 22585, samurai 22567
    --corpo__arasaka_mah_soldier_elite_lvl2_01 corpo__arasaka_mah_soldier_elite_lvl1_01 corpo__arasaka_mah_soldier_elite_lvl1_02 Soldier Arasaka_Kiji
    cloneNPCDataMinimal("Character.arasaka_soldier1_ranged3_masamune_mah_rare", "Character.arr_arasaka_ranger1_melee2_knife_ma")

    ArasakaWhite1Hash = ToCName{ hash_lo = 0xB7FE8DB0, hash_hi = 0xB1C90175 }
    ArasakaWhite2Hash = ToCName{ hash_lo = 0xB7FE92C9, hash_hi = 0xB1C90475 }
    ArasakaWhite3Hash = ToCName{ hash_lo = 0x1C950707, hash_hi = 0x5B63596E }

    TweakDB:SetFlat("Character.arr_arasaka_ranger1_melee2_knife_ma.appearanceName", ArasakaWhite1Hash)
    TweakDB:SetFlat("Character.arr_arasaka_soldier2_shotgun2_tactician_mah_rare.appearanceName", ArasakaWhite2Hash)
    TweakDB:SetFlat("Character.arr_arasaka_terminator_shotgun3_zhuo_mah_elite.appearanceName", ArasakaWhite3Hash)



    --all armored soldiers are elite, some of the agents from areas like cpz and nok also elite
    AraEliteList = {"Character.arasaka_sumo_hmelee2_fists_mb_rare", "Character.arasaka_sumo_hmelee2_hammer_mb_rare", "Character.arasaka_tank2_gunner2_defender_mb_rare", "Character.cpz_arasaka_strong_elite_melee_m_hard", "Character.nok_arasaka_sumo_hmelee2_fists_mb_rare", "Character.nok_arasaka_sumo_hmelee2_fists_mb_rare", "Character.q005_arasaka_kill_squad_4_security_saburos", "Character.q112_arasaka_agent_massive", "Character.q112_infiltration_arasaka_LMG", "Character.q112_infiltration_arasaka_sumo", "Character.q113_arasaka_jungle_sumo", "Character.q113_arasaka_jungle_terminator_officer", "Character.q115_arasaka_heavy_squad_two", "Character.q115_arasaka_jungle_lmg", "Character.arasaka_sniper_sniper3_ashura_ma_elite", "Character.arasaka_sniper_sniper3_nekomata_ma_elite", "Character.arasaka_soldier1_ranged3_masamune_mah_rare", "Character.arasaka_soldier2_shotgun2_tactician_mah_rare", "Character.arr_arasaka_soldier2_shotgun2_tactician_mah_rare", "Character.cpz_arasaka_agent_fshotgun2_tactician_ma_rare", "Character.cpz_arasaka_bodyguard_ranged3_kenshin_mb_rare", "Character.cpz_arasaka_bodyguard_ranged3_masamune_mb_rare", "Character.hil_arasaka_agent_fshotgun2_tactician_wa_rare", "Character.hil_arasaka_sniper_sniper3_ashura_ma_elite", "Character.nid_arasaka_sniper_sniper3_nekomata_ma_elite", "Character.nok_arasaka_agent_fshotgun2_tactician_ma_rare", "Character.nok_arasaka_fast_sniper_long_range_m_hard", "Character.nok_arasaka_fast_sniper_long_range_m_medium", "Character.nok_arasaka_strong_elite_bodyguard_medium_range_m_medium", "Character.nok_arasaka_strong_elite_medium_range_m_hard", "Character.nok_arasaka_strong_elite_medium_range_m_medium", "Character.waterfront_arasaka_agent_fshotgun2_tactician_ma_rare"}
    for i,v in ipairs(AraEliteList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end










    --MILITECH

    TweakDB:SetFlat("Character.prevention_militech_sniper_ma_inline5.enumName", TweakDB:GetFlat("ArchetypeType.FastSniperT3.enumName"))
    TweakDB:SetFlat("Character.prevention_militech_shotgun_mah_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastShotgunnerT3.enumName"))
    TweakDB:SetFlat("Character.militech_tech_grenadier2_omaha_ma_rare_inline1.enumName", TweakDB:GetFlat("ArchetypeType.TechieT3.enumName"))
    TweakDB:SetFlat("Character.militech_tech_franged2_omaha_ma_rare_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastRangedT3.enumName"))
    TweakDB:SetFlat("Character.militech_soldier3_shotgun3_crusher_mah_elite_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastShotgunnerT3.enumName"))
    TweakDB:SetFlat("Character.militech_recon_sniper2_achilles_ma_rare_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastSniperT3.enumName"))
    TweakDB:SetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare_inline5.enumName", TweakDB:GetFlat("ArchetypeType.FastShotgunnerT2.enumName"))
    TweakDB:SetFlat("Character.ina_04_militech_officer_inline1.enumName", TweakDB:GetFlat("ArchetypeType.FastRangedT3.enumName"))


    TweakDB:SetFlat("Character.ina_04_militech_strongarms_hmelee3_fists_mb_elite.archetypeData", "MilitechT3HeavyMeleeArchetypeData")
    TweakDB:SetFlat("Character.sts_bls_ina_05_militech_strongarms_hmelee3_fists_mb_elite.archetypeData", "MilitechT3HeavyMeleeArchetypeData")
    TweakDB:SetFlat("Character.bls_se_militech_strongarms_hmelee3_fists_mb_elite.archetypeData", "MilitechT3HeavyMeleeArchetypeData")
    TweakDB:SetFlat("Character.militech_strongarms_hmelee3_fists_mb_elite.archetypeData", "MilitechT3HeavyMeleeArchetypeData")



    for i,v in ipairs({"Character.ina_04_long_hard", "Character.ina_04_militech_enforcer2_shotgun2_tactician_mah_rare", "Character.bls_se_militech_enforcer2_shotgun2_tactician_mah_rare", "Character.cpz_militech_enforcer2_shotgun2_tactician_mah_rare", "Character.gle_militech_enforcer2_shotgun2_tactician_mah_rare", "Character.militech_enforcer2_shotgun2_tactician_mah_rare"}) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end


    --female militech soldiers
    TweakDB:SetFlat("Character.ma_hey_gle_13_militech_ranger2_ranged2_ajax_ma_Elizabeth_Roider.entityTemplatePath", "ep1\\characters\\entities\\corpo\\corpo__ep1_militech_wa.ent")
    TweakDB:SetFlat("Character.hil_militech_ranger1_ranged1_saratoga_ma.entityTemplatePath", "ep1\\characters\\entities\\corpo\\corpo__ep1_militech_wa.ent")
    TweakDB:SetFlat("Character.dtn_militech_ranger2_ranged2_ajax_ma.entityTemplatePath", "ep1\\characters\\entities\\corpo\\corpo__ep1_militech_wa.ent")
    TweakDB:SetFlat("Character.ma_hey_gle_13_militech_ranger2_ranged2_ajax_ma_Elizabeth_Roider.visualTags", {"Militech", "Lvl2", "Ranger"})
    TweakDB:SetFlat("Character.hil_militech_ranger1_ranged1_saratoga_ma.visualTags", {"Militech", "Lvl2", "Ranger"})
    TweakDB:SetFlat("Character.dtn_militech_ranger2_ranged2_ajax_ma.visualTags", {"Militech", "Lvl2", "Ranger"})


    --new equip grp for commando
    createEquipmentWeaponGrp("DualWieldOmaMilPrimary", "Items.Preset_Omaha_Military", 0, 10, true, "Items.Preset_Omaha_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOmaPimpPrimary", "Items.Preset_Omaha_Pimp", 0, 10, true, "Items.Preset_Omaha_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldOmaNeonPrimary", "Items.Preset_Omaha_Neon", 0, 10, true, "Items.Preset_Omaha_Neon_Left_Hand")

    createEquipmentWeaponGrp("DualWieldLexMilPrimary", "Items.Preset_Lexington_Military", 0, 10, true, "Items.Preset_Lexington_Military_Left_Hand")
    createEquipmentWeaponGrp("DualWieldLexPimpPrimary", "Items.Preset_Lexington_Pimp", 0, 10, true, "Items.Preset_Lexington_Pimp_Left_Hand")
    createEquipmentWeaponGrp("DualWieldLexNeonPrimary", "Items.Preset_Lexington_Neon", 0, 10, true, "Items.Preset_Lexington_Neon_Left_Hand")


    TweakDB:SetFlat("DualWieldOmaMilPrimaryEquipItemPool.pool", {"DualWieldOmaMilPrimaryEquipItemPoolEntry", "DualWieldOmaPimpPrimaryEquipItemPoolEntry", "DualWieldOmaNeonPrimaryEquipItemPoolEntry", "DualWieldLexMilPrimaryEquipItemPoolEntry", "DualWieldLexPimpPrimaryEquipItemPoolEntry", "DualWieldLexNeonPrimaryEquipItemPoolEntry"})


    TweakDB:SetFlat("Character.bls_se_militech_tech_franged2_omaha_ma_rare.primaryEquipment", "DualWieldOmaMilPrimaryEquipGrp")
    TweakDB:SetFlat("Character.dtn_militech_tech_franged2_omaha_ma_rare.primaryEquipment", "DualWieldOmaMilPrimaryEquipGrp")
    TweakDB:SetFlat("Character.militech_tech_franged2_omaha_ma_rare.primaryEquipment", "DualWieldOmaMilPrimaryEquipGrp")

    TweakDB:SetFlat("Character.bls_se_militech_tech_franged2_omaha_ma_rare.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.dtn_militech_tech_franged2_omaha_ma_rare.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.militech_tech_franged2_omaha_ma_rare.rarity", "NPCRarity.Elite")



    --reuse one of the generic techie equip grp for mili techie
    TweakDB:SetFlat("TechieHerculesPrimaryEquipItemPool.pool", {"TechieTiconDefaultPrimaryEquipItemPoolEntry", "TechieTiconMilitaryPrimaryEquipItemPoolEntry", "TechieTiconPimpPrimaryEquipItemPoolEntry", "TechieTiconNeonPrimaryEquipItemPoolEntry", "TechieQuasarDefaultPrimaryEquipItemPoolEntry", "TechieQuasarMilitaryPrimaryEquipItemPoolEntry", "TechieQuasarPimpPrimaryEquipItemPoolEntry", "TechieQuasarNeonPrimaryEquipItemPoolEntry", "TechieGritDefaultPrimaryEquipItemPoolEntry", "TechieGritMilitaryPrimaryEquipItemPoolEntry", "TechieGritPimpPrimaryEquipItemPoolEntry", "TechieGritNeonPrimaryEquipItemPoolEntry", "TechieKolacPrimaryEquipItemPoolEntry", "TechieAuthorityPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.hil_militech_tech_grenadier2_omaha_ma_rare.primaryEquipment", "TechieHerculesPrimaryEquipGrp")
    TweakDB:SetFlat("Character.militech_tech_grenadier2_omaha_ma_rare.primaryEquipment", "TechieHerculesPrimaryEquipGrp")

    TweakDB:SetFlat("Character.hil_militech_tech_grenadier2_omaha_ma_rare.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.militech_tech_grenadier2_omaha_ma_rare.rarity", "NPCRarity.Elite")




    --radar love
    TweakDB:SetFlat("Character.ina_04_militech_officer.primaryEquipment", "Character.militech_ranger2_ranged2_ajax_ma_inline0")
    TweakDB:SetFlat("Character.ina_04_militech_officer.rarity", "NPCRarity.Elite")
    cloneNPCDataMinimalWithoutVisual("Character.ina_04_militech_officer", "Character.militech_officer_officer_omaha_ma")
    TweakDB:SetFlat("Character.ina_04_militech_officer.entityTemplatePath", "base\\characters\\entities\\corpo\\corpo__militech_ma.ent")
    TweakDB:SetFlat("Character.ina_04_militech_officer.visualTags", {"Militech", "Lvl3"})

    cloneNPCDataMinimalWithoutVisual("Character.ina_04_militech_officer", "Character.ma_hey_gle_13_militech_ranger2_ranged2_ajax_ma_Elizabeth_Roider")



    --space oddity
    cloneNPCDataMinimal("Character.militech_enforcer2_shotgun2_tactician_mah_rare", "Character.mq003_militech_intercept_hard")
    cloneNPCDataMinimal("Character.hil_militech_tech_grenadier2_omaha_ma_rare", "Character.mq003_militech_intercept_normal")
    cloneNPCDataMinimalWithoutVisual("Character.militech_enforcer3_gunner3_HMG_mb_elite", "Character.mq003_militech_intercept_big")

    TweakDB:SetFlat("Character.mq003_militech_intercept_hard.rarity", "NPCRarity.Elite")



    --pickup
    TweakDB:SetFlat("Character.q003_militech_bodyguard.archetypeData", "MilitechT3HeavyMeleeArchetypeData")
    TweakDB:SetFlat("Character.q003_militech_soldier.archetypeData", "Character.militech_soldier3_shotgun3_crusher_mah_elite_inline0")




    --nomad ending
    cloneNPCDataMinimal("Character.ina_04_militech_officer", "Character.q114_militech_response_officer")
    --TweakDB:SetFlat("Character.q114_militech_response_officer.archetypeData", "Character.ina_04_militech_officer_inline0")
    --TweakDB:SetFlat("Character.militech_officer_officer_omaha_ma_inline0.equipmentItems", {"Character.prevention_militech_rifle_ma_inline3"})
    TweakDB:SetFlat("Character.q114_female_nomad_inline0.value", 1)
    TweakDB:SetFlat("Character.q114_female_nomad_non_combat_inline0.value", 1)
    TweakDB:SetFlat("Character.q114_male_nomad_inline0.value", 1)
    TweakDB:SetFlat("Character.q114_male_nomad_non_combat_inline0.value", 1)

    --TweakDB:SetFlat("Character.q114_female_nomad.archetypeData", "AldoT3RangedArchetype")
    --TweakDB:SetFlat("Character.q114_male_nomad.archetypeData", "AldoT3RangedArchetype")
    --TweakDB:SetFlat("Character.Saul.archetypeData", "AldoT3DualArchetype")
    --TweakDB:SetFlat("Character.Saul.primaryEquipment", "DualPistolVariety3Group")
    cloneNPCDataMinimal("Character.dtn_militech_tech_franged2_omaha_ma_rare", "Character.q114_militech_delta_gamma_rifle")--from the av that lands?
    --TweakDB:SetFlat("Character.q114_militech_delta_gamma_rifle.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.Saul.primaryEquipment", "DualPistolVariety3Group")


    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_observer.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_shotgunner.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_arasaka_manufacturing_takedown_guard_f.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_militech_broadcast.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_militech_response_sniper.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_militech_delta_gamma_HMG.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_militech_delta_gamma_shotgun.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_militech_guard_officer.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q114_militech_response_sniper.rarity", "NPCRarity.Elite")






    TweakDB:SetFlat("Character.Saul.primaryEquipment", "DualWieldOverLibMilPrimaryEquipGrp")
    TweakDB:SetFlat("Character.Saul.archetypeData", "ValenDualWieldArchetypeData")




    --panam quest
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.archetypeData", "Character.ina_04_militech_officer_inline0")
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.rarity", "NPCRarity.Boss")
    addToList("Character.sq027_militech_escort_officer.tags", "Cyberpsycho")
    cloneNPCDataMinimal("Character.militech_soldier3_shotgun3_crusher_mah_elite", "Character.sq027_militech_escort")


    cloneNPCDataMinimal("Character.hil_militech_tech_grenadier2_omaha_ma_rare", "Character.sq027_militech_escort_driver")


    
    MiliSkipList = {"Character.sq027_militech_escort", "Character.sq027_militech_escort_driver", "Character.sq027_militech_escort_officer"}
    for i,v in ipairs(MiliSkipList) do
        TweakDB:SetFlat(v..".displayName", TweakDB:GetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare.displayName"))
        --TweakDB:SetFlat(v..".skipDisplayArchetype", true)
    end


    TweakDB:SetFlat("Character.sq027_militech_escort_officer.displayName", LocKey(32476ull))
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.fullDisplayName", LocKey(32476ull))
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.skipDisplayArchetype", true)

    SQ027OfficerHash = ToCName{ hash_lo = 0xE62BEE29, hash_hi = 0x4BBC2B84 }
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.appearanceName", SQ027OfficerHash)

    createEquipmentWeaponGrp("SQ027OfficerPrimary", "Borg4aWeapon", 0, 10, false)
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.primaryEquipment", "SQ027OfficerPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sq027_militech_escort_officer.dropsWeaponOnDeath", false)

    --cuckoo nest
    cloneNPCDataMinimal("Character.ina_04_militech_officer", "Character.rcr_02_enemy_security_officer")
    cloneNPCDataMinimalWithoutVisual("Character.militech_ranger1_ranged1_saratoga_ma", "Character.rcr_02_enemy_security_keycard")
    cloneNPCDataMinimalWithoutVisual("Character.militech_ranger1_ranged1_saratoga_ma", "Character.rcr_02_enemy_security_keycard_entrance")
    cloneNPCDataMinimalWithoutVisual("Character.militech_ranger1_ranged1_saratoga_ma", "Character.rcr_02_enemy_security")
    TweakDB:SetFlat("Character.rcr_02_doctor.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.rcr_02_doctor_wheelchair.skipDisplayArchetype", true)



    --serial suicide gig
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_ajax.archetypeData", "Character.militech_ranger2_ranged2_ajax_ma_inline4")
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_droid_shotgun.archetypeData", "Character.militech_android_android2_crusher_ma_inline4")
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security.archetypeData", "Character.militech_ranger1_ranged1_saratoga_ma_inline0")

    cloneNPCDataMinimal("Character.hil_militech_tech_grenadier2_omaha_ma_rare", "Character.sts_cct_cpz_01_enemy_security_officer")
    cloneNPCDataMinimal("Character.militech_enforcer2_shotgun2_tactician_mah_rare", "Character.sts_cct_cpz_01_enemy_security_omaha_hg")

    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_omaha_hg.rarity", "NPCRarity.Elite")


    --guinea pigs
    cloneNPCDataMinimalWithoutVisual("Character.ina_04_militech_officer", "Character.sts_dtn_04_security_officer")
    cloneNPCDataMinimalWithoutVisual("Character.militech_ranger2_ranged2_ajax_ma", "Character.sts_dtn_04_security")
    TweakDB:SetFlat("Character.sts_dtn_04_security.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_dtn_04_security_officer.visualTags", {"Militech", "Recon", "Lvl3"})


    --frolics of councilwoman cole
    cloneNPCDataMinimal("Character.militech_soldier3_shotgun3_crusher_mah_elite", "Character.sts_cct_dtn_05_enemy_security_shotgun")




    --goodbye night city gig
    cloneNPCDataMinimal("Character.ina_04_militech_officer", "Character.sts_bls_ina_05_oficer")
    TweakDB:SetFlat("Character.sts_bls_ina_05_oficer.fullDisplayName", TweakDB:GetFlat("Character.q114_militech_response_officer.displayName"))
    cloneNPCDataMinimal("Character.hil_militech_tech_grenadier2_omaha_ma_rare", "Character.sts_bls_ina_05_miltech_security_saratoga_ma")




    --concrete cage gig
    TweakDB:SetFlat("Character.sts_wat_kab_01_drone_security.archetypeData", "DroneArchetype")
    cloneNPCDataMinimal("Character.militech_enforcer2_shotgun2_tactician_mah_rare", "Character.sts_wat_kab_01_enemy_medium_range_m_bouncer")
    --TweakDB:SetFlat("Character.sts_wat_kab_01_tiny_mike.archetypeData", "RogueArchetype")
    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_hmg.displayName", TweakDB:GetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare.displayName"))
    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_medium_range_m.displayName", TweakDB:GetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare.displayName"))
    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_medium_range_m_bouncer.displayName", TweakDB:GetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare.displayName"))
    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_medium_range_w.displayName", TweakDB:GetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare.displayName"))
    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_officer.displayName", TweakDB:GetFlat("Character.militech_enforcer2_shotgun2_tactician_mah_rare.displayName"))
    cloneNPCDataMinimal("Character.hil_militech_tech_grenadier2_omaha_ma_rare", "Character.sts_wat_kab_01_enemy_medium_range_w")

    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_medium_range_m_bouncer.rarity", "NPCRarity.Elite")

    --border guards
    TweakDB:SetFlat("Character.max_border_guards.archetypeData", "Character.ina_04_militech_officer_inline0")
    TweakDB:SetFlat("Character.max_border_guards.displayName", TweakDB:GetFlat("Character.prevention_border_guards.displayName"))
    TweakDB:SetFlat("Character.max_border_guards.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.max_border_guards_baton.archetypeData", "MilitechT3HeavyMeleeArchetypeData")
    TweakDB:SetFlat("Character.max_border_guards_baton.displayName", TweakDB:GetFlat("Character.prevention_border_guards.displayName"))
    TweakDB:SetFlat("Character.max_border_guards_baton.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.max_border_guards_shotgun.archetypeData", "Character.militech_enforcer2_shotgun2_tactician_mah_rare_inline4")
    TweakDB:SetFlat("Character.max_border_guards_shotgun.displayName", TweakDB:GetFlat("Character.prevention_border_guards.displayName"))
    TweakDB:SetFlat("Character.max_border_guards_shotgun.skipDisplayArchetype", true)

    cloneNPCDataMinimalWithoutVisual("Character.ina_04_militech_officer", "Character.prevention_border_guards")
    cloneNPCDataMinimalWithoutVisual("Character.max_border_guards_shotgun", "Character.prevention_border_guards_shotgun")
    TweakDB:SetFlat("Character.prevention_border_guards.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.prevention_border_guards_shotgun.skipDisplayArchetype", true)


    --more techies/commando
    cloneNPCDataMinimal("Character.ina_04_militech_officer", "Character.cpz_militech_fast_elite_medium_range_m_medium")




    MiliEliteHash1 = ToCName{ hash_lo = 0x3F095C8A, hash_hi = 0xFDD0C2E7 }
    MiliEliteHash2 = ToCName{ hash_lo = 0x3F095AD7, hash_hi = 0xFDD0C1E7 }


    TweakDB:SetFlat("Character.sts_wat_kab_01_enemy_officer.appearanceName", MiliEliteHash2)

    TweakDB:SetFlat("Character.bls_se_militech_soldier3_shotgun3_crusher_mah_elite.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.bls_se_militech_strong_elite_short_range_m_medium.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.cpz_militech_soldier3_shotgun3_crusher_mah_elite.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.dtn_militech_soldier3_shotgun3_crusher_mah_elite.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.hil_militech_soldier3_shotgun3_crusher_mah_elite.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.militech_soldier3_shotgun3_crusher_mah_elite.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.prevention_militech_shotgun_mah.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.q114_militech_delta_gamma_shotgun.visualTags", {"Militech"})
    --TweakDB:SetFlat("Character.sq027_militech_escort_driver.visualTags", {"Militech"})
    TweakDB:SetFlat("Character.sts_bls_ina_05_militech_soldier3_shotgun3_crusher_mah_elite.visualTags", {"Militech"})




    setArchetypeData("Krauser", {"Sandy2AbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp", "ThermoAbilityGrp", "SmokeNadeAbilityGrp", "BleedImmuneAbilityGrp", "TacticalAbilityGrp", "ResetImmuneAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"MiliResStatModifierGrp", "MiliHackResStatModifierGrp"}, "ArchetypeType.FastMeleeT3", true)

    --elite rapid
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.archetypeData", "KrauserArchetypeData")
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.displayName", LocKey(42630ull))
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.fullDisplayName", LocKey(42630ull))
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.entityTemplatePath", "base\\characters\\entities\\corpo\\corpo__militech_mah.ent")
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.appearanceName", MiliEliteHash1)
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.rarity", "NPCRarity.Boss")
    addToList("Character.sts_cct_cpz_01_enemy_security_shotgun.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_cct_cpz_01_enemy_security_shotgun.tags", "Cyberpsycho")

    createLegendaryWeapon("Items.Preset_Neurotoxin_Knife_Military")
    createEquipmentWeaponGrp("KrauserNeuroPrimary", "Items.Preset_Neurotoxin_Knife_Military_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.sts_cct_cpz_01_enemy_security_shotgun.primaryEquipment", "KrauserNeuroPrimaryEquipGrp")





    MiliEliteList = {"Character.bls_se_militech_recon_sniper2_achilles_ma_rare", "Character.hil_militech_recon_sniper2_achilles_ma_rare", "Character.militech_recon_sniper2_achilles_ma_rare", "Character.prevention_militech_sniper_ma", "Character.q114_militech_response_officer", "Character.sa_ep1_courier_loop_enemies_militech_franged2_omaha_ma_rare", "Character.wat_roadblock_militech_recon_sniper2_achilles_ma_rare", "Character.sts_cct_dtn_05_enemy_security_officer", "Character.sts_bls_ina_05_miltech_sniper"}
    for i,v in ipairs(MiliEliteList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end


    for i,v in ipairs({"Character.q114_militech_alfa_beta_smg", "Character.q114_militech_canyon_guard_rifle", "Character.q114_militech_delta_gamma_HMG", "Character.q114_militech_delta_gamma_rifle", "Character.q114_militech_delta_gamma_shotgun", "Character.q114_militech_response_sniper"}) do
        TweakDB:SetFlat(v..".displayName", LocKey(0ull))
    end







    --CORPO




    for i,v in ipairs({"Character.ma_std_rcr_03_captain", "Character.security_enforcer3_shotgun2_tactician_mb_rare"}) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end

    cloneNPCDataMinimal("Character.security_netrunner_netrunner2_lexington_ma_rare", "Character.cpz_security_netrunner_m_hard")


    --eye for an eye
    cloneNPCDataMinimalWithoutVisual("Character.generic_grunt_ranged1_pulsar_ma", "Character.gle_01_security")
    cloneNPCDataMinimal("Character.security_netrunner_netrunner2_lexington_ma_rare", "Character.gle_01_security_officer")


    cloneNPCDataMinimal("Character.security_blackmasked3_fmelee3_katana_mb_elite", "Character.security_officer_officer_nue_ma")


    TweakDB:SetFlat("Character.sq006_conspiracy_soldier.archetypeData", "Character.security_security2_ranged2_ajax_ma_inline0")--dream on
    TweakDB:SetFlat("Character.sq006_conspiracy_soldier.rarity", "NPCRarity.Elite")


    TweakDB:SetFlat("Character.ina_11_guard_sniper.archetypeData", "Character.security_security2_ranged2_ajax_ma_inline0")--sparring partner gig
    cloneNPCDataMinimal("Character.generic_grunt_ranged1_pulsar_ma", "Character.ina_11_guard_rifle")



    TweakDB:SetFlat("Character.sts_std_rcr_01_vic_vega.archetypeData", "Character.security_security2_gunner2_defender_mb_rare_inline0")--union gig
    TweakDB:SetFlat("Character.sts_std_rcr_01_vic_vega.primaryEquipment", "Character.security_security2_gunner2_defender_mb_rare_inline2")
    cloneNPCDataMinimal("Character.security_netrunner_netrunner2_lexington_ma_rare", "Character.sts_std_rcr_01_enemy_security_big")
    TweakDB:SetFlat("Character.sts_std_rcr_01_enemy_security_big.visualTags", {"Netrunner", "Generic"})
    TweakDB:SetFlat("Character.sts_std_rcr_01_vic_vega.rarity", "NPCRarity.Boss")
    addToList("Character.sts_std_rcr_01_vic_vega.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_std_rcr_01_vic_vega.tags", "Cyberpsycho")

    --more netrunners
    cloneNPCDataMinimal("Character.generic_netrunner_netrunner_chao_wa_rare", "Character.bls_se_security_guard1_ranged1_nue_wa")
    TweakDB:SetFlat("Character.bls_se_security_guard1_ranged1_nue_wa.visualTags", {"Security", "Lvl2"})

    --breaking news
    cloneNPCDataMinimal("Character.generic_netrunner_netrunner_chao_wa_rare", "Character.sts_std_arr_05_enemy_security_nue")


    --severance package
    cloneNPCDataMinimal("Character.security_netrunner_netrunner2_lexington_ma_rare", "Character.sts_std_arr_10_security")
    TweakDB:SetFlat("Character.sts_std_arr_10_security.visualTags", {"Netrunner", "Generic"})


    CorpoMaskHash = ToCName{ hash_lo = 0xE6E90EF4, hash_hi = 0x02E5A02A }
    CorpoMask2Hash = ToCName{ hash_lo = 0xF5F52009, hash_hi = 0xAD9BCC34 }
    CorpoBigMaskHash = ToCName{ hash_lo = 0xEF4AF0EC, hash_hi = 0x2DDBB58B }

    TweakDB:SetFlat("Character.sts_wbr_hil_101_enemy_security.appearanceName", CorpoMaskHash)
    TweakDB:SetFlat("Character.sts_wbr_hil_101_enemy_security_officer.appearanceName", CorpoMask2Hash)

    TweakDB:SetFlat("Character.cpz_security_enforcer3_shotgun2_tactician_mb_rare.appearanceName", CorpoBigMaskHash)
    TweakDB:SetFlat("Character.cpz_security_security2_ranged2_ajax_ma.appearanceName", CorpoMask2Hash)
    TweakDB:SetFlat("Character.cpz_security_security2_ranged2_saratoga_ma.appearanceName", CorpoMaskHash)
    TweakDB:SetFlat("Character.cpz_security_security2_ranged2_saratoga_ma.archetypeData", "Character.security_security2_ranged2_ajax_ma_inline0")

    TweakDB:SetFlat("Character.sts_wbr_hil_101_enemy_security.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_wbr_hil_101_enemy_security_officer.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.cpz_security_security2_ranged2_ajax_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.cpz_security_security2_ranged2_saratoga_ma.rarity", "NPCRarity.Elite")

    for i,v in ipairs({"Character.sts_wbr_hil_101_enemy_security", "Character.sts_wbr_hil_101_enemy_security_officer", "Character.cpz_security_enforcer3_shotgun2_tactician_mb_rare", "Character.cpz_security_security2_ranged2_ajax_ma", "Character.cpz_security_security2_ranged2_saratoga_ma"}) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end


    --more diversity in appearances

    TweakDB:SetFlat("Character.bls_se_security_blackmasked3_fmelee3_katana_mb_elite.visualTags", {"Big", "Generic"})
    TweakDB:SetFlat("Character.bls_se_security_enforcer3_shotgun2_tactician_mb_rare.visualTags", {"Big", "Generic"})

    TweakDB:SetFlat("Character.dtn_security_enforcer3_shotgun2_tactician_mb_rare.visualTags", {"Big", "Generic"})
    TweakDB:SetFlat("Character.hil_security_enforcer3_shotgun2_tactician_mb_rare.visualTags", {"Big", "Generic"})
    TweakDB:SetFlat("Character.rcr_security_enforcer3_shotgun2_tactician_mb_rare.visualTags", {"Big", "Generic"})

    TweakDB:SetFlat("Character.arr_security_security2_gunner2_defender_mb_rare.visualTags", {"Big", "Generic"})
    TweakDB:SetFlat("Character.nok_security_security2_gunner2_defender_mb_rare.visualTags", {"Big", "Generic"})


    cloneNPCDataMinimal("Character.security_grunt1_melee1_baton_wa", "Character.hil_security_grunt1_melee1_baton_ma")
    cloneNPCDataMinimal("Character.security_grunt1_melee1_baton_wa", "Character.rcr_security_grunt1_melee1_baton_ma")
    TweakDB:SetFlat("Character.hil_security_grunt1_melee1_baton_ma.visualTags", {"Generic"})
    TweakDB:SetFlat("Character.rcr_security_grunt1_melee1_baton_ma.visualTags", {"Generic"})

    cloneNPCDataMinimal("Character.security_guard1_ranged1_nue_wa", "Character.cpz_security_guard1_ranged1_nue_ma")
    TweakDB:SetFlat("Character.cpz_security_guard1_ranged1_nue_ma.visualTags", {"Generic"})


    TweakDB:SetFlat("Character.cpz_security_security2_melee2_baton_wa.visualTags", {"Generic"})
    TweakDB:SetFlat("Character.hil_security_security2_melee2_baton_wa.visualTags", {"Generic"})

    cloneNPCDataMinimal("Character.security_security2_ranged2_saratoga_wa", "Character.arr_security_security2_ranged2_saratoga_ma")
    TweakDB:SetFlat("Character.arr_security_security2_ranged2_saratoga_ma.visualTags", {"Generic"})


    for i,v in ipairs({"Character.arr_security_security2_ranged2_ajax_wa", "Character.hil_security_security2_ranged2_ajax_wa", "Character.nok_security_security2_ranged2_ajax_wa", "Character.security_security2_ranged2_ajax_wa", "Character.sts_std_arr_12_security_security2_ranged2_ajax_wa", "Character.hil_security_security2_ranged2_saratoga_wa", "Character.security_security2_ranged2_saratoga_wa", "Character.sts_std_arr_12_security_security2_ranged2_saratoga_wa"}) do
        TweakDB:SetFlat(v..".visualTags", {"Generic"})
    end


    for i,v in ipairs({"Character.bls_se_security_security2_ranged2_ajax_ma", "Character.sts_std_arr_12_security_security2_ranged2_ajax_ma", "Character.rcr_security_security2_ranged2_ajax_ma"}) do
        TweakDB:SetFlat(v..".visualTags", {"Generic", "Lvl2"})
    end


    TweakDB:SetFlat("Character.rcr_security_guard1_ranged1_nue_ma.visualTags", {"Generic"})
    TweakDB:SetFlat("Character.sts_std_arr_12_security_guard1_ranged1_nue_ma.visualTags", {"Generic"})

    TweakDB:SetFlat("Character.rcr_security_guard1_ranged1_nue_ma.visualTags", {"Generic"})
    TweakDB:SetFlat("Character.lch_security_security2_melee2_baton_ma.visualTags", {"Generic"})

    TweakDB:SetFlat("Character.hil_security_security2_ranged2_saratoga_ma.visualTags", {"Generic"})


    CorpoNetrunnerList = {"Character.cpz_security_netrunner_m_hard", "Character.gle_01_security_officer", "Character.sts_std_rcr_01_enemy_security_big", "Character.bls_se_security_guard1_ranged1_nue_wa", "Character.sts_std_arr_05_enemy_security_nue", "Character.sts_std_arr_10_security", "Character.dtn_security_netrunner_netrunner2_lexington_ma_rare", "Character.hil_security_netrunner_netrunner2_lexington_ma_rare", "Character.rcr_security_netrunner_netrunner2_lexington_ma_rare", "Character.security_netrunner_netrunner2_lexington_ma_rare"}
    for i,v in ipairs(CorpoNetrunnerList) do
        TweakDB:SetFlat(v..".actionMap", "CorpoNetrunner.Map")
    end


    TweakDB:SetFlat("Character.sts_std_arr_12_security_chase_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_chase_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_guard1_ranged1_nue_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_guard1_ranged1_nue_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_guard1_ranged1_saratoga_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_security2_ranged2_ajax_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_security2_ranged2_ajax_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_12_security_security2_ranged2_saratoga_wa.skipDisplayArchetype", true)



    CorpoEliteList = {"Character.arr_security_enforcer3_shotgun2_tactician_mb_rare", "Character.arr_security_security2_gunner2_defender_mb_rare", "Character.bls_se_security_enforcer3_shotgun2_tactician_mb_rare", "Character.cpz_security_enforcer3_shotgun2_tactician_mb_rare", "Character.dtn_security_enforcer3_shotgun2_tactician_mb_rare", "Character.dtn_security_security1_hmelee2_fists_mb_rare", "Character.gle_01_security_shotgun", "Character.hil_security_enforcer3_shotgun2_tactician_mb_rare", "Character.hil_security_security1_hmelee2_fists_mb_rare", "Character.hil_security_security2_gunner2_defender_mb_rare", "Character.nok_security_enforcer3_shotgun2_tactician_mb_rare", "Character.nok_security_security2_gunner2_defender_mb_rare", "Character.rcr_security_enforcer3_shotgun2_tactician_mb_rare", "Character.rcr_security_security2_gunner2_defender_mb_rare", "Character.security_security1_hmelee2_fists_mb_rare", "Character.security_security2_gunner2_defender_mb_rare", "Character.sts_cct_arr_05_enemy_security_keycard_melee", "Character.sts_std_arr_05_enemy_security_shotgun", "Character.sts_std_arr_10_security_shotgun_mb", "Character.sts_std_rcr_01_enemy_security_shotgun", "Character.ina_11_guard_officer"}
    for i,v in ipairs(CorpoEliteList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end






    --KANGTAO

    TweakDB:SetFlat("Character.gle_kangtao_officer_grenadier3_mah_elite.primaryEquipment", "Character.kangtao_ranger1_ranged2_dian_ma_inline2")
    TweakDB:SetFlat("Character.kangtao_officer_grenadier3_mah_elite.primaryEquipment", "Character.kangtao_ranger1_ranged2_dian_ma_inline2")
    TweakDB:SetFlat("Character.q104_gas_station_kangtao_officer.primaryEquipment", "Character.kangtao_ranger1_ranged2_dian_ma_inline2")
    --TweakDB:SetFlat("Character.gle_kangtao_officer_grenadier3_mah_elite.rarity", "NPCRarity.Boss")
    --TweakDB:SetFlat("Character.kangtao_officer_grenadier3_mah_elite.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.q104_gas_station_kangtao_officer.rarity", "NPCRarity.Boss")
    --TweakDB:SetFlat("Character.gle_kangtao_officer_grenadier3_mah_elite.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    --TweakDB:SetFlat("Character.kangtao_officer_grenadier3_mah_elite.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    --TweakDB:SetFlat("Character.q104_gas_station_kangtao_officer.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.q104_gas_station_kangtao_officer.fullDisplayName", TweakDB:GetFlat("Character.q104_gas_station_kangtao_officer.displayName"))
    --TweakDB:SetFlat("Character.gle_kangtao_officer_grenadier3_mah_elite.skipDisplayArchetype", true)
    --TweakDB:SetFlat("Character.kangtao_officer_grenadier3_mah_elite.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q104_gas_station_kangtao_officer.skipDisplayArchetype", true)
    addToList("Character.q104_gas_station_kangtao_officer.tags", "MaxTac_NotPrevention")
    addToList("Character.q104_gas_station_kangtao_officer.tags", "Cyberpsycho")


    for i,v in ipairs({"Character.q104_arasaka_operator_shotgun", "Character.q104_arasaka_operator_sniper", "Character.q104_gas_station_kangtao_shotgun_tier2", "Character.cpz_kangtao_soldier2_shotgun2_zhuo_mah_rare", "Character.gle_kangtao_soldier2_shotgun2_zhuo_mah_rare", "Character.kangtao_soldier2_shotgun2_zhuo_mah_rare", "Character.sa_ep1_courier_loop_enemies_kangtao_shotgun2_zhuo_mah_rare", "Character.sts_std_arr_06_kangtao_ranger1_ranged2_dian_ma"}) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end


    --life during wartime
    cloneNPCDataMinimal("Character.kangtao_officer_grenadier3_mah_elite", "Character.q104_arasaka_operator_leader")
    cloneNPCDataMinimal("Character.kangtao_officer_grenadier3_mah_elite", "Character.q104_arasaka_operator_smg_officer")



    --nasty hangover
    TweakDB:SetFlat("Character.sts_std_arr_06_kangtao_ranger1_ranged2_dian_ma.skipDisplayArchetype", true)
    cloneNPCDataMinimalWithoutVisual("Character.kangtao_officer_grenadier3_mah_elite", "Character.sts_std_arr_06_sec_chief")
    --TweakDB:SetFlat("Character.sts_std_arr_06_sec_chief.rarity", "NPCRarity.Boss")
    --TweakDB:SetFlat("Character.sts_std_arr_06_sec_chief.tags", TweakDB:GetFlat("Character.ma_wat_kab_02_cyberpsycho.tags"))
    TweakDB:SetFlat("Character.sts_std_arr_06_sixthstreet_hooligan_ranged1_saratoga_ma_Jeff.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_std_arr_06_sixthstreet_patrol2_ranged2_ajax_wa_Patricia.skipDisplayArchetype", true)


    KangTaoHash = ToCName{ hash_lo = 0x2D94E413, hash_hi = 0x227865F9 }
    TweakDB:SetFlat("Character.q104_gas_station_kangtao_officer.appearanceName", KangTaoHash)


    KangEliteList = {"Character.cpz_kangtao_soldier2_shotgun3_zhuo_mah_elite", "Character.kangtao_soldier2_shotgun3_zhuo_mah_elite", "Character.q104_gas_station_kangtao_shotgun_tier3"}
    for i,v in ipairs(KangEliteList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end








    --NPCD

    PoliceCopperhead = {"Character.mq005_police_officer_01", "Character.mq005_police_officer_03", "Character.mq010_policewoman", "Character.prevention_police_rifle_ma", "Character.prevention_police_rifle_wa"}
    for i,v in ipairs(PoliceCopperhead) do
        TweakDB:SetFlat(v..".archetypeData", "Character.ncpd_police_ranged2_copperhead_ma_inline4")
    end

    TweakDB:SetFlat("Character.mq005_police_officer_02.archetypeData", "Character.ncpd_enforcer_shotgun2_tactician_ma_rare_inline4")
    TweakDB:SetFlat("Character.mq010_policeman.archetypeData", "Character.ncpd_enforcer_shotgun2_tactician_ma_rare_inline4")
    TweakDB:SetFlat("Character.prevention_enforcer_shotgun_ma.archetypeData", "Character.ncpd_enforcer_shotgun2_tactician_ma_rare_inline4")


    TweakDB:SetFlat("Character.prevention_biker_handgun_ma.archetypeData", "Character.ncpd_biker_ranged2_omaha_ma_inline4")
    TweakDB:SetFlat("Character.prevention_biker_rifle_ma.archetypeData", "Character.ncpd_biker_ranged2_omaha_ma_inline4")

    TweakDB:SetFlat("Character.prevention_enforcer_rifle_ma.archetypeData", "NCPDSwatRifleArchetypeData")
    TweakDB:SetFlat("Character.prevention_biker_shotgun_ma.archetypeData", "NCPDShotgunnerNormalArchetypeData")


    TweakDB:SetFlat("Character.prevention_police_handgun_ma.archetypeData", "Character.ncpd_police_ranged2_lexington_ma_inline4")
    TweakDB:SetFlat("Character.prevention_police_handgun_wa.archetypeData", "Character.ncpd_police_ranged2_lexington_ma_inline4")
    TweakDB:SetFlat("Character.prevention_police_shotgun_ma.archetypeData", "NCPDShotgunnerNormalArchetypeData")
    TweakDB:SetFlat("Character.prevention_police_shotgun_wa.archetypeData", "NCPDShotgunnerNormalArchetypeData")

    TweakDB:SetFlat("Character.prevention_android_rifle_ma.archetypeData", "Character.ncpd_android_android2_ajax_ma_inline4")


    PoliceSkipList = {"Character.prevention_enforcer_shotgun_ma", "Character.prevention_biker_handgun_ma", "Character.prevention_biker_rifle_ma", "Character.prevention_biker_shotgun_ma", "Character.prevention_police_handgun_ma", "Character.prevention_police_handgun_wa", "Character.prevention_police_shotgun_ma", "Character.prevention_police_shotgun_wa", "Character.prevention_police_rifle_ma", "Character.prevention_police_rifle_wa", "Character.prevention_android_rifle_ma"}
    for i,v in ipairs(PoliceSkipList) do
        TweakDB:SetFlat(v..".displayName", LocKey(0ull))
    end


    --scooter quest
    cloneNPCDataMinimalWithoutVisual("Character.ncpd_inspector_ranged1_lexington_ma", "Character.mq021_corpo")
    cloneNPCDataMinimalWithoutVisual("Character.ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.mq021_shotgun_corpo")
    TweakDB:SetFlat("Character.mq021_corpo.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq021_shotgun_corpo.displayName", LocKey(0ull))



    --bullets
    TweakDB:SetFlat("Character.mq030_cyberpsycho.archetypeData", "Character.animals_elite3_hmelee3_fists_mba_elite_inline0")


    TweakDB:SetFlat("Character.sq023_vasquez.archetypeData", "Character.generic_merc_ranged2_ajax_ma_inline4")--sinnerman
    TweakDB:SetFlat("Character.sq023_vasquez.primaryEquipment", "Character.ncpd_android_android2_ajax_ma_inline2")


    cloneNPCDataMinimalWithoutVisual("Character.netwatch_agent_netrunner3_omaha_elite", "Character.mq024_sandra_combatable")
    TweakDB:SetFlat("Character.mq024_sandra_combatable.actionMap", "GangNetrunner.Map")
    TweakDB:SetFlat("Character.mq024_sandra_combatable.skipDisplayArchetype", true)


    --scrolls before swine
    TweakDB:SetFlat("Character.sts_wat_nid_07_aaron.archetypeData", "Character.ncpd_police_ranged2_copperhead_ma_inline4")


    --TweakDB:SetFlat("Character.q110_netwatch_agent.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "HitReactionThresholdModifiers.Unstoppable"})




    NCPDEliteList = {"Character.prevention_enforcer_lmg_mb", "Character.arr_ncpd_hwp_gunner2_defender_mb_rare", "Character.cpz_ncpd_hwp_gunner2_defender_mb_rare", "Character.dtn_ncpd_hwp_gunner2_defender_mb_rare", "Character.gle_ncpd_hwp_gunner2_defender_mb_rare", "Character.hil_ncpd_hwp_gunner2_defender_mb_rare", "Character.jpn_ncpd_hwp_gunner2_defender_mb_rare", "Character.kab_ncpd_hwp_gunner2_defender_mb_rare", "Character.lch_ncpd_hwp_gunner2_defender_mb_rare", "Character.ncpd_hwp_gunner2_defender_mb_rare", "Character.nid_ncpd_hwp_gunner2_defender_mb_rare", "Character.nok_ncpd_hwp_gunner2_defender_mb_rare", "Character.rcr_ncpd_hwp_gunner2_defender_mb_rare", "Character.rey_ncpd_hwp_gunner2_defender_mb_rare", "Character.spr_ncpd_hwp_gunner2_defender_mb_rare", "Character.arr_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.cpz_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.dtn_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.gle_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.hil_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.jpn_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.kab_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.lch_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.nid_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.nok_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.rcr_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.rey_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.spr_ncpd_enforcer_shotgun2_tactician_ma_rare", "Character.prevention_police_shotgun_ma", "Character.prevention_enforcer_shotgun_ma", "Character.prevention_enforcer_rifle_ma"}
    for i,v in ipairs(NCPDEliteList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end






    MercNetrunnerList = {"Character.generic_netrunner_netrunner_chao_ma_rare", "Character.generic_netrunner_netrunner_chao_wa_rare", "Character.generic_netrunner_netrunner_chao_ma_rare_ow_city_scene", "Character.generic_netrunner_netrunner_chao_wa_rare_ow_city_scene", "Character.nid_generic_netrunner_netrunner_chao_ma_rare", "Character.nid_generic_netrunner_netrunner_chao_wa_rare"}
    for i,v in ipairs(MercNetrunnerList) do
        TweakDB:SetFlat(v..".actionMap", "CorpoNetrunner.Map")
    end


    TweakDB:SetFlat("Character.afterlife_rare_franged2_ajax_ma_rare_inline5.localizedName", TweakDB:GetFlat("Character.generic_shotgun_shotgun3_carnage_mb_elite_inline5.localizedName"))
    TweakDB:SetFlat("Character.afterlife_rare_franged2_ajax_wa_rare_inline5.localizedName", TweakDB:GetFlat("Character.generic_shotgun_shotgun3_carnage_mb_elite_inline5.localizedName"))
    TweakDB:SetFlat("Character.afterlife_rare_franged2_overture_wa_rare_inline5.localizedName", TweakDB:GetFlat("Character.generic_shotgun_shotgun3_carnage_mb_elite_inline5.localizedName"))
    --TweakDB:SetFlat("Character.afterlife_rare_fshotgun3_zhuo_mb_elite_inline5.localizedName", TweakDB:GetFlat("Character.generic_shotgun_fshotgun2_palica_ma_inline5.localizedName"))

    TweakDB:SetFlat("Character.afterlife_rare_franged2_saratoga_ma_rare_inline5.localizedName", TweakDB:GetFlat("Character.generic_merc_ranged2_ajax_wa_inline5.localizedName"))
    TweakDB:SetFlat("Character.afterlife_rare_franged2_saratoga_wa_rare_inline5.localizedName", TweakDB:GetFlat("Character.generic_merc_ranged2_ajax_wa_inline5.localizedName"))
    TweakDB:SetFlat("Character.afterlife_rare_gunner3_hmg_mb_elite_inline1.localizedName", TweakDB:GetFlat("Character.generic_gunner_gunner3_hmg_mb_elite_inline5.localizedName"))
    TweakDB:SetFlat("Character.afterlife_rare_sniper3_ashura_ma_elite_inline5.localizedName", TweakDB:GetFlat("Character.generic_sniper_sniper2_grad_ma_rare_inline5.localizedName"))
    TweakDB:SetFlat("Character.generic_fast_fmelee2_knife_wa_rare_inline5.localizedName", TweakDB:GetFlat("Character.wraiths_prisoner_fmelee3_fists_ma_elite_inline1.localizedName"))
    TweakDB:SetFlat("Character.generic_fast_fmelee2_machete_ma_rare_inline5.localizedName", TweakDB:GetFlat("Character.wraiths_prisoner_fmelee3_fists_ma_elite_inline1.localizedName"))

    TweakDB:SetFlat("Character.generic_fast_fmelee2_machete_ma_rare_inline5.localizedName", TweakDB:GetFlat("Character.wraiths_prisoner_fmelee3_fists_ma_elite_inline1.localizedName"))




    TweakDB:SetFlat("Character.afterlife_rare_fmelee3_katana_ma_elite_inline5.localizedName", "")
    TweakDB:SetFlat("Character.afterlife_rare_fmelee3_katana_wa_elite_inline5.localizedName", "")
    TweakDB:SetFlat("Character.afterlife_rare_fmelee3_mantis_ma_elite_inline1.localizedName", "")
    TweakDB:SetFlat("Character.afterlife_rare_fmelee3_mantis_wa_elite_inline1.localizedName", "")
    TweakDB:SetFlat("Character.afterlife_rare_fshotgun3_zhuo_mb_elite_inline5.localizedName", "")


    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.archetypeData", "Character.afterlife_rare_fmelee3_mantis_ma_elite_inline0")
    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.rarity", "NPCRarity.Boss")
    addToList("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.tags", "MaxTac_NotPrevention")
    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.entityTemplatePath", "ep1\\characters\\entities\\gang\\gang__ep1_cyberpunk_wa.ent")
    TracyHash = ToCName{ hash_lo = 0x45ED3335, hash_hi = 0xF397B23A }
    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.appearanceName", TracyHash)

    createLegendaryWeapon("Items.Preset_Grit_Neon")
    createEquipmentWeaponGrp("TracyGritSecondary", "Items.Preset_Grit_Neon_Legendary", 0, 10, false)

    createLegendaryWeapon("Items.Preset_Punk_Knife_Neon")
    createEquipmentWeaponGrp("TracyKnifePrimary", "Items.Preset_Punk_Knife_Neon_Legendary", 0, 10, false)
    TweakDB:SetFlat("TracyKnifePrimaryItems.Preset_Punk_Knife_Neon_LegendaryEquipItemRight.equipCondition", {"WeaponConditions.BaseMeleePrimaryWeaponEquipCondition"})
    TweakDB:SetFlat("TracyKnifePrimaryItems.Preset_Punk_Knife_Neon_LegendaryEquipItemRight.unequipCondition", {"WeaponConditions.BaseMeleePrimaryWeaponUnequipCondition"})

    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.primaryEquipment", "TracyKnifePrimaryEquipGrp")
    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.secondaryEquipment", "TracyGritSecondaryEquipGrp")

    TracyVO = ToCName{ hash_lo = 0xAE38071A, hash_hi = 0x59A6A25D }
    TweakDB:SetFlat("Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips.voiceTag", TracyVO)


    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.rarity", "NPCRarity.Boss")
    addToList("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.tags", "MaxTac_NotPrevention")
    addToList("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.tags", "Cyberpsycho")
    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.fullDisplayName", LocKey(22346ull))
    MercKatanaHash = ToCName{ hash_lo = 0x163C5CA5, hash_hi = 0x790DC9E1 }
    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.appearanceName", MercKatanaHash)
    MercSidekickHash = ToCName{ hash_lo = 0x163F747B, hash_hi = 0x79114EE1 }
    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_merc_generic_medium_range_m_medium.appearanceName", MercSidekickHash)

    MercKatanaVO = ToCName{ hash_lo = 0x0F73C483, hash_hi = 0xF9C12458 }
    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.voiceTag", MercKatanaVO)

    createEquipmentWeaponGrp("MercKatanaPrimary", "Items.Preset_Katana_E3", 0, 10, false)
    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.primaryEquipment", "MercKatanaPrimaryEquipGrp")
    addToList("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.abilities", "Ability.CanCauseBurn")

    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite.dropsWeaponOnDeath", false)

    TweakDB:SetFlat("Character.ma_pac_cvi_13_afterlife_merc_generic_medium_range_m_medium.rarity", "NPCRarity.Elite")


    createLegendaryWeapon("Items.Preset_Metel_Neon")
    createEquipmentWeaponGrp("MercMetelPrimary", "Items.Preset_Metel_Neon_Legendary", 0, 10, false)
    MercMetelList = {"Character.afterlife_merc_strong_short_range_w_easy", "Character.afterlife_merc_strong_short_range_w_hard", "Character.afterlife_merc_strong_short_range_w_medium", "Character.afterlife_rare_franged2_overture_wa_rare", "Character.afterlife_rare_franged2_overture_wa_rare"}
    for i,v in ipairs(MercMetelList) do
        TweakDB:SetFlat(v..".primaryEquipment", "MercMetelPrimaryEquipGrp")
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end



    MercMantisList = {"Character.afterlife_merc_fast_melee_m_hard", "Character.afterlife_merc_fast_melee_w_hard", "Character.afterlife_rare_fmelee3_mantis_ma_elite", "Character.afterlife_rare_fmelee3_mantis_wa_elite"}
    for i,v in ipairs(MercMantisList) do
        TweakDB:SetFlat(v..".displayName", LocKey(42620ull))
    end


    MercKatanaList = {"Character.afterlife_merc_fast_melee_m_medium", "Character.afterlife_merc_fast_melee_w_medium", "Character.afterlife_rare_fmelee3_katana_ma_elite", "Character.afterlife_rare_fmelee3_katana_wa_elite", "Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite"}
    for i,v in ipairs(MercKatanaList) do
        TweakDB:SetFlat(v..".displayName", LocKey(22346ull))
    end

    MercBruiserList = {"Character.afterlife_merc_strong_short_range_m_easy", "Character.afterlife_merc_strong_short_range_m_medium", "Character.afterlife_rare_fshotgun3_zhuo_mb_elite"}
    for i,v in ipairs(MercBruiserList) do
        TweakDB:SetFlat(v..".displayName", LocKey(22435ull))
    end


    --street samurai 22346, solo 42620, bruiser 22435













    --MOX

    TweakDB:SetFlat("Character.the_mox_1_ranged1_lexington_wa_inline0.type", "Character.the_mox_1_melee2_baseball_wa_inline5")
    TweakDB:SetFlat("Character.the_mox_1_ranged1_pulsar_wa_inline4.type", "Character.the_mox_1_melee2_baseball_wa_inline5")













    --barghest



    BargEliteList = {"Character.bou_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.bou_kurtz_recon_sniper2_achilles_ma_rare", "Character.bou_kurtz_tech_franged2_handgun_ma_rare", "Character.bou_kurtz_tech_franged2_handgun_wa_rare", "Character.combat_tower_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.combat_tower_kurtz_recon_sniper2_achilles_ma_rare", "Character.combat_tower_kurtz_tech_franged2_handgun_ma_rare", "Character.combat_tower_kurtz_tech_franged2_handgun_wa_rare", "Character.combat_zone_gate_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.combat_zone_gate_kurtz_recon_sniper2_achilles_ma_rare", "Character.combat_zone_gate_kurtz_tech_franged2_handgun_ma_rare", "Character.combat_zone_gate_kurtz_tech_franged2_handgun_wa_rare", "Character.con_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.con_kurtz_recon_sniper2_achilles_ma_rare", "Character.con_kurtz_tech_franged2_handgun_ma_rare", "Character.con_kurtz_tech_franged2_handgun_wa_rare", "Character.high_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.high_kurtz_recon_sniper2_achilles_ma_rare", "Character.high_kurtz_tech_franged2_handgun_ma_rare", "Character.high_kurtz_tech_franged2_handgun_wa_rare", "Character.hpark_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.hpark_kurtz_recon_sniper2_achilles_ma_rare", "Character.hpark_kurtz_tech_franged2_handgun_ma_rare", "Character.hpark_kurtz_tech_franged2_handgun_wa_rare", "Character.kurtz_recon_sniper2_achilles_ma_rare", "Character.kurtz_rifle_flashlight3_ma", "Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.kurtz_tech_franged2_handgun_ma_rare", "Character.mon_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.mon_kurtz_recon_sniper2_achilles_ma_rare", "Character.mon_kurtz_tech_franged2_handgun_ma_rare", "Character.mon_kurtz_tech_franged2_handgun_wa_rare", "Character.q304_stadium_kurtz_scene_sniper2_ma", "Character.sta_kurtz_elite3_shotgun3_shotgun_ma_elite", "Character.sta_kurtz_recon_sniper2_achilles_ma_rare", "Character.sta_kurtz_tech_franged2_handgun_ma_rare", "Character.sta_kurtz_tech_franged2_handgun_wa_rare", "Character.we_ep1_01_kurtz_recon_sniper2_achilles_ma_rare", "Character.we_ep1_01_kurtz_tech_franged2_handgun_ma_rare", "Character.bou_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.bou_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.combat_tower_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.combat_tower_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.combat_zone_gate_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.combat_zone_gate_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.con_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.con_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.high_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.high_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.hpark_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.hpark_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.hpark_kurtz_sa_ep1_37_burya_default", "Character.kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.kurtz_soldier2_shotgun2_shotgun_ma_rare", "Character.mon_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.mon_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.q304_stadium_kurtz_scene_netrunner2_lexington_ma", "Character.q304_stadium_kurtz_scene_netrunner2_lexington_ma", "Character.sa_ep1_courier_loop_enemies_kurtz_shotgun2_shotgun_ma_rare", "Character.sta_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.sta_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.sts_ep1_07_kurtz_enforcer2_shotgun2_tactician_ma_rare", "Character.sts_ep1_07_kurtz_ma_sniper", "Character.sts_ep1_07_kurtz_ranger_netrunner_ma_rare", "Character.sts_ep1_10_kurtz_elite2_shotgun2_shotgun_ma_rare", "Character.we_ep1_01_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.we_ep1_01_kurtz_soldier2_shotgun2_shotgun_ma_rare", "Character.q301_border_kurt_sniper", "Character.q301_crashsite_kurt_netrunner", "Character.q301_crashsite_kurt_soldier_shotgun", "Character.q301_crashsite_kurt_soldier_sniper", "Character.q301_crashsite_kurt_soldier_wa", "Character.q301_gate_reinforcements_kurt_netrunner", "Character.q301_shuttle_kurt_spec_shotgun", "Character.q301_shuttle_kurt_spec_sniper", "Character.q302_akebono_kurt_soldier_fast", "Character.q302_akebono_kurt_soldier_shotgun", "Character.q302_akebono_kurt_soldier_sniper", "Character.q302_ambush_kurt_soldier_shotgun", "Character.q302_oath_kurt_soldier_shotgun", "Character.q302_patrol_inVehicle_prevention_dogtown_rifle_ma", "Character.q302_patrol_inVehicle_prevention_dogtown_rifle_wa", "Character.q302_patrol_prevention_dogtown_droid_ma", "Character.q302_patrol_prevention_dogtown_rifle_ma", "Character.q302_patrol_prevention_dogtown_rifle_wa", "Character.q302_patrol_prevention_dogtown_shotgun_ma", "Character.q302_patrol_prevention_dogtown_shotgun_ma_barricade", "Character.q302_patrol_prevention_recon_sniper2_achilles_ma_rare", "Character.q302_spidertank_kurt_soldier_fast", "Character.q302_spidertank_kurt_soldier_ma", "Character.q302_spidertank_kurt_soldier_sniper", "Character.q302_spidertank_kurt_soldier_wa", "Character.q303_lobby_balcony_shooter", "Character.q303_lobby_balcony_sniper", "Character.q303_lobby_guard_fast_soldier_wa", "Character.q303_lobby_guard_rifle_soldier_paradise_ma", "Character.q303_lobby_guard_sniper_rare_ma", "Character.q303_lobby_guard_tech_consequence_ma", "Character.q303_lobby_prevention_guard_rifle_ma", "Character.q303_tech_floor_challange_03_sniper", "Character.q303_tech_floor_elevator_guard_02", "Character.q303_tech_floor_guard_shotgun_elite_ma", "Character.q303_tech_floor_guard_sniper_player_threat", "Character.q303_tech_floor_guard_sniper_rare_ma", "Character.q303_tech_floor_sniper_nest_guard_ma", "Character.q303_warehouse_guard_fast_ma", "Character.q304_stadium_kurt_scene_franged2_ma", "Character.q304_stadium_kurt_spec_pistol_escape_ma", "Character.q304_stadium_kurtz_scene_netrunner2_lexington_ma", "Character.q304_stadium_kurtz_scene_shotgun2_ma", "Character.q304_stadium_kurtz_scene_sniper2_ma", "Character.sts_ep1_06_enemy_handgun_rare_ma", "Character.sts_ep1_06_enemy_handgun_rare_suit_ma", "Character.sts_ep1_06_enemy_handgun_rare_suit_ma_outside_sts", "Character.sts_ep1_06_enemy_handgun_rare_suit_wa", "Character.sts_ep1_06_enemy_handgun_rare_suit_wa_outside_sts", "Character.sts_ep1_06_enemy_handgun_rare_wa", "Character.sts_ep1_06_enemy_handgun_rare_wa_outisde_sts", "Character.sts_ep1_06_enemy_netrunner_rare_ma", "Character.sts_ep1_06_enemy_netrunner_rare_suit_ma", "Character.sts_ep1_06_enemy_netrunner_rare_suit_ma_outside_sts", "Character.sts_ep1_06_enemy_shotgun_rare_ma", "Character.sts_ep1_06_enemy_shotgun_rare_ma_outisde_sts", "Character.sts_ep1_06_enemy_shotgun_rare_suit_ma", "Character.sts_ep1_06_enemy_shotgun_rare_suit_ma_outside_sts", "Character.sts_ep1_07_kurtz_ma_sniper", "Character.sts_ep1_07_kurtz_ranger_netrunner_ma_rare", "Character.sts_ep1_10_kurtz_elite2_shotgun2_shotgun_ma_rare"}
    for i,v in ipairs(BargEliteList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Elite")
    end








    --enemies to replace Character.q301_shuttle_kurt_spec_pistol Character.con_kurtz_grunt1_ranged1_handgun_ma Character.con_kurtz_grunt1_ranged1_handgun_wa
	--buff archetypes Character.q301_shuttle_ss_agent_ma Character.q301_shuttle_ss_agent_wa
	TweakDB:SetFlat("Character.q301_shuttle_kurt_spec_pistol.archetypeData", "BargTechieArchetypeData")
    TweakDB:SetFlat("Character.q301_shuttle_kurt_spec_pistol.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q301_shuttle_kurt_spec_pistol.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q301_shuttle_kurt_spec_pistol.visualTags", {"Lvl3", "Ranger", "Fast"})
	
	cloneNPCDataMinimalWithoutVisual("Character.ina_04_militech_officer", "Character.q301_shuttle_ss_agent_ma")
	cloneNPCDataMinimalWithoutVisual("Character.ina_04_militech_officer", "Character.q301_shuttle_ss_agent_wa")


	TweakDB:SetFlat("Character.q302_jacob.archetypeData", "Character.animals_grunt2_shotgun2_igla_wba_rare_inline4")
	TweakDB:SetFlat("Character.q302_james.archetypeData", "Character.afterlife_rare_franged2_ajax_wa_rare_inline4")

	TweakDB:SetFlat("Character.q302_jacob_inline1.value", 1)
	TweakDB:SetFlat("Character.q302_james_inline1.value", 1)


	--skip names Character.q302_patrol_prevention_dogtown_rifle_ma

	for i,v in ipairs({"Character.q301_border_ncpd_f", "Character.q301_border_ncpd_m"}) do
		TweakDB:SetFlat(v..".skipDisplayArchetype", true)
	end


	for i,v in ipairs({"Character.q302_patrol_inVehicle_prevention_dogtown_rifle_ma", "Character.q302_patrol_inVehicle_prevention_dogtown_rifle_wa", "Character.q302_patrol_prevention_dogtown_HMG_mb", "Character.q302_patrol_prevention_dogtown_HMG_mb_barricade", "Character.q302_patrol_prevention_dogtown_droid_ma", "Character.q302_patrol_prevention_dogtown_martial_fmelee3_fists_ma_rare", "Character.q302_patrol_prevention_dogtown_martial_hmelee3_fists_mb_elite", "Character.q302_patrol_prevention_dogtown_rifle_ma", "Character.q302_patrol_prevention_dogtown_rifle_wa", "Character.q302_patrol_prevention_dogtown_saratoga_ma", "Character.q302_patrol_prevention_dogtown_saratoga_wa", "Character.q302_patrol_prevention_dogtown_shotgun_ma", "Character.q302_patrol_prevention_dogtown_shotgun_ma_barricade", "Character.q302_patrol_prevention_recon_sniper2_achilles_ma_rare"}) do
		TweakDB:SetFlat(v..".displayName", LocKey(0ull))
	end



    --Character.airdrop_custom_kurtz_grunt1_ranged1_handgun_ma Character.airdrop_custom_kurtz_soldier1_ranged2_rifle_wa have blacksapphireskin

    --con is container zone, mon is between sapphire and cz and around stadium, bou is beside combat tower

    --Character.creepy_follower_pipewrench_female

    --Character.mon_scavenger_grunt1_melee1_fists_ma replacements
    --Character.bou_kurtz_grunt1_ranged1_handgun_ma involved in random event with civi
    --replace soldier1 ranged2rifle wa with sandy
    --Character.mon_kurtz_elite3_shotgun3_shotgun_ma_elite are using shotgun2 archetype instead of shotgun3


    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.bou_kurtz_elite3_shotgun3_shotgun_ma_elite")
    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.combat_tower_kurtz_elite3_shotgun3_shotgun_ma_elite")
    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.con_kurtz_elite3_shotgun3_shotgun_ma_elite")
    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.high_kurtz_elite3_shotgun3_shotgun_ma_elite")
    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.hpark_kurtz_elite3_shotgun3_shotgun_ma_elite")
    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.sta_kurtz_elite3_shotgun3_shotgun_ma_elite")

    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.q302_spidertank_kurt_soldier_shotgun")
    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.q301_gate_reinforcements_kurt_soldier_shotgun")

    --Character.kurtz_soldier1_generic_ranged2_rifle_wa Character.kurtz_soldier2_generic_ranged3_rifle_ma

    --Character.q301_border_kurt_soldier_front_wa Character.q301_border_kurt_soldier_gate_ma are sergeants with sandy

    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.q301_border_kurt_soldier_gate_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.q301_crashsite_kurt_soldier_wa")--crashsite is around barricade and av drops

	cloneNPCDataMinimalWithoutVisual("Character.kurtz_grunt1_ranged1_saratoga_wa", "Character.q301_border_kurt_soldier_side_wa")--side is near garage
	cloneNPCDataMinimalWithoutVisual("Character.kurtz_grunt1_ranged1_saratoga_ma", "Character.q301_border_kurt_soldier_side_ma")











    --Character.KurtzPrimaryTechHandgunPool_inline0 2 4 6 8

    createEquipmentWeaponGrp("BargCommandoAjaxKrauser", "Items.Preset_Ajax_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoCopperheadKrauser", "Items.Preset_Copperhead_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoKyubiKrauser", "Items.Preset_Kyubi_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoNekoKrauser", "Items.Preset_Nekomata_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoWardenKrauser", "Items.Preset_Warden_Krausser", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoMetelMili", "Items.Preset_Metel_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoMetelNeon", "Items.Preset_Metel_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoMetelPimp", "Items.Preset_Metel_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoWardenMili", "Items.Preset_Warden_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoWardenNeon", "Items.Preset_Warden_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoWardenPimp", "Items.Preset_Warden_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoBuryaMili", "Items.Preset_Burya_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoBuryaNeon", "Items.Preset_Burya_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoBuryaPimp", "Items.Preset_Burya_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoMasaMili", "Items.Preset_Masamune_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoMasaNeon", "Items.Preset_Masamune_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoMasaPimp", "Items.Preset_Masamune_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoAchilMili", "Items.Preset_Achilles_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoAchilNeon", "Items.Preset_Achilles_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoAchilPimp", "Items.Preset_Achilles_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoKyubiMili", "Items.Preset_Kyubi_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoKyubiNeon", "Items.Preset_Kyubi_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoKyubiPimp", "Items.Preset_Kyubi_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoSorMili", "Items.Preset_Sor22_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoSorNeon", "Items.Preset_Sor22_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoSorPimp", "Items.Preset_Sor22_Pimp", 0, 10, false)

    createEquipmentWeaponGrp("BargCommandoTiconMili", "Items.Preset_Ticon_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoTiconNeon", "Items.Preset_Ticon_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCommandoTiconPimp", "Items.Preset_Ticon_Pimp", 0, 10, false)


    --hercules removed because it does not break
    TweakDB:SetFlat("BargCommandoAjaxKrauserEquipItemPool.pool", {"BargCommandoAjaxKrauserEquipItemPoolEntry", "BargCommandoCopperheadKrauserEquipItemPoolEntry", "BargCommandoKyubiKrauserEquipItemPoolEntry", "BargCommandoNekoKrauserEquipItemPoolEntry", "BargCommandoWardenKrauserEquipItemPoolEntry", "BargCommandoMetelMiliEquipItemPoolEntry", "BargCommandoMetelNeonEquipItemPoolEntry", "BargCommandoMetelPimpEquipItemPoolEntry", "BargCommandoWardenMiliEquipItemPoolEntry", "BargCommandoWardenNeonEquipItemPoolEntry", "BargCommandoWardenPimpEquipItemPoolEntry", "BargCommandoBuryaMiliEquipItemPoolEntry", "BargCommandoBuryaNeonEquipItemPoolEntry", "BargCommandoBuryaPimpEquipItemPoolEntry", "BargCommandoMasaMiliEquipItemPoolEntry", "BargCommandoMasaNeonEquipItemPoolEntry", "BargCommandoMasaPimpEquipItemPoolEntry", "BargCommandoAchilMiliEquipItemPoolEntry", "BargCommandoAchilNeonEquipItemPoolEntry", "BargCommandoAchilPimpEquipItemPoolEntry", "BargCommandoKyubiMiliEquipItemPoolEntry", "BargCommandoKyubiNeonEquipItemPoolEntry", "BargCommandoKyubiPimpEquipItemPoolEntry", "BargCommandoSorMiliEquipItemPoolEntry", "BargCommandoSorNeonEquipItemPoolEntry", "BargCommandoSorPimpEquipItemPoolEntry", "BargCommandoTiconMiliEquipItemPoolEntry", "BargCommandoTiconNeonEquipItemPoolEntry", "BargCommandoTiconPimpEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.kurtz_tech_franged2_handgun_ma_rare_inline2.equipmentItems", {"BargCommandoAjaxKrauserEquipItemPool"})



    --more variety for dogtown prevention
    TweakDB:SetFlat("Character.prevention_dogtown_rifle_ma_inline1.equipmentItems", {"BargCommandoAjaxKrauserEquipItemPool"})
    TweakDB:SetFlat("Character.prevention_dogtown_rifle_wa_inline1.equipmentItems", {"BargCommandoAjaxKrauserEquipItemPool"})
    TweakDB:SetFlat("Character.prevention_dogtown_saratoga_ma_inline1.equipmentItems", {"BargCommandoAjaxKrauserEquipItemPool"})
    TweakDB:SetFlat("Character.prevention_dogtown_saratoga_wa_inline1.equipmentItems", {"BargCommandoAjaxKrauserEquipItemPool"})

    TweakDB:SetFlat("Character.prevention_dogtown_shotgun_ma_inline0.equipmentItems", {"Character.kurtz_soldier2_shotgun3_shotgun_ma_inline1"})

    TweakDB:SetFlat("Character.prevention_dogtown_shotgun_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.prevention_dogtown_rifle_wa.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.prevention_dogtown_rifle_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.prevention_dogtown_droid_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.prevention_dogtown_saratoga_ma.rarity", "NPCRarity.Rare")
    TweakDB:SetFlat("Character.prevention_dogtown_saratoga_wa.rarity", "NPCRarity.Rare")


    setArchetypeData("Dodger", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalNormalAbilityGrp", "TacticalAbilityGrp", "BleedImmuneAbilityGrp", "HarassAbilityGrp"}, {}, {"BargResStatModifierGrp"}, "ArchetypeType.FastRangedT3", true)
    TweakDB:SetFlat("Character.sts_ep1_10_dodger.archetypeData", "DodgerArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_10_dodger.skipDisplayArchetype", false)
    TweakDB:SetFlat("Character.sts_ep1_10_dodger.dropsWeaponOnDeath", true)
    TweakDB:SetFlat("Character.sts_ep1_10_dodger.rarity", "NPCRarity.Boss")
    addToList("Character.sts_ep1_10_dodger.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_ep1_10_dodger.tags", "Cyberpsycho")
    addToList("Character.sts_ep1_10_dodger.effectors", "Character.AllowTechWeaponDodgeEffector")
    --addToList("Character.sts_ep1_10_dodger.abilities", "Ability.SandevistanDashShoot")

    createLegendaryWeapon("Items.Preset_Overture_Military")
    --createLegendaryWeapon("Items.Preset_Unity_Military_Left_Hand")
    createEquipmentWeaponGrp("DodgerOvertureUnityDual", "Items.Preset_Overture_Military_Legendary", 0, 10, true, "Items.Preset_Unity_Military_Left_Hand")
    TweakDB:SetFlat("Character.sts_ep1_10_dodger.primaryEquipment", "DodgerOvertureUnityDualEquipGrp")

    DodgerVO = ToCName{ hash_lo = 0x19965CA6, hash_hi = 0x4D1A631A }
    TweakDB:SetFlat("Character.sts_ep1_10_dodger.voiceTag", DodgerVO)




    MurphyAbilityList = {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsBalanced"}
    setArchetypeData("MurphyTechie", {"Sandy2AbilityGrp", "KerezAbilityGrp", "T3FastTechieAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp", "TacticalAbilityGrp", "BleedImmuneAbilityGrp"}, {}, {"BargResStatModifierGrp"}, "ArchetypeType.TechieT3", true)

    TweakDB:SetFlat("Character.kruger.abilities", MurphyAbilityList)
    TweakDB:SetFlat("Character.kruger.archetypeData", "MurphyTechieArchetypeData")
    TweakDB:SetFlat("Character.kruger.skipDisplayArchetype", false)
    TweakDB:SetFlat("Character.kruger.rarity", "NPCRarity.Boss")
    addToList("Character.kruger.tags", "MaxTac_NotPrevention")
    addToList("Character.kruger.tags", "Cyberpsycho")

    TweakDB:SetFlat("Character.kruger_combat.abilities", MurphyAbilityList)
    TweakDB:SetFlat("Character.kruger_combat.archetypeData", "MurphyTechieArchetypeData")
    TweakDB:SetFlat("Character.kruger_combat.skipDisplayArchetype", false)
    TweakDB:SetFlat("Character.kruger_combat.rarity", "NPCRarity.Boss")
    addToList("Character.kruger_combat.tags", "MaxTac_NotPrevention")
    addToList("Character.kruger_combat.tags", "Cyberpsycho")

    TweakDB:SetFlat("Character.kruger.dropsWeaponOnDeath", false)
    TweakDB:SetFlat("Character.kruger_combat.dropsWeaponOnDeath", false)


    --metel cant dual wield	
    --name, weapon, minlvl, weight, dual, left
    createLegendaryWeapon("Items.Preset_Hercules_Default")
    createEquipmentWeaponGrp("MurphyHercules", "Items.Preset_Hercules_Default_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.kruger_combat.primaryEquipment", "MurphyHerculesEquipGrp")
    TweakDB:SetFlat("Character.kruger.primaryEquipment", "MurphyHerculesEquipGrp")


    MurphyVO = ToCName{ hash_lo = 0x1B585B17, hash_hi = 0x6DA8CDF2 }
    TweakDB:SetFlat("Character.kruger_combat.voiceTag", MurphyVO)
    TweakDB:SetFlat("Character.kruger.voiceTag", MurphyVO)



    setArchetypeData("Yuri", {"Sandy2AbilityGrp", "T3FastRangedAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalMedAbilityGrp", "TacticalAbilityGrp", "BleedImmuneAbilityGrp"}, {"ShootingPatterns.SmasherHMGCoverShootingPackage"}, {"BargResStatModifierGrp"}, "ArchetypeType.FastRangedT3", true)
    TweakDB:SetFlat("Character.jurij.archetypeData", "YuriArchetypeData")
    TweakDB:SetFlat("Character.jurij.skipDisplayArchetype", false)

    YuriVO = ToCName{ hash_lo = 0x866187AD, hash_hi = 0x4A39FF2C }
    TweakDB:SetFlat("Character.jurij.voiceTag", YuriVO)






    
    cloneNPCDataMinimalWithoutVisual("Character.q301_shuttle_kurt_spec_pistol", "Character.q302_ambush_kurt_soldier_fast")--techie with elite appearance
    cloneNPCDataMinimalWithoutVisual("Character.q301_shuttle_kurt_spec_pistol", "Character.q302_oath_kurt_soldier_fast")




	TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_wa.archetypeData", "BargTechieArchetypeData")--female techie with relaxed appearance list
    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_wa.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_wa.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_wa.visualTags", {})

    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_ma.archetypeData", "BargTechieArchetypeData")--male techie with relaxed appearance list except lvl3
    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.high_kurtz_grunt1_ranged1_handgun_ma.visualTags", {"Lvl1", "Lvl2"})

    cloneNPCDataMinimalWithoutVisual("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.high_kurtz_soldier1_ranged2_rifle_wa")


    cloneNPCDataMinimalWithoutVisual("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.airdrop_custom_kurtz_grunt1_ranged1_handgun_ma")
    cloneNPCDataMinimalWithoutVisual("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.airdrop_custom_kurtz_soldier1_ranged2_rifle_wa")

    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.combat_tower_kurtz_grunt1_ranged1_handgun_ma")
    cloneNPCDataMinimal("Character.high_kurtz_grunt1_ranged1_handgun_wa", "Character.combat_tower_kurtz_grunt1_ranged1_handgun_wa")


    cloneNPCDataMinimalWithoutVisual("Character.high_kurtz_grunt1_ranged1_handgun_ma", "Character.sts_ep1_10_nosy_guard")--dodger gig
    cloneNPCDataMinimal("Character.high_kurtz_grunt1_ranged1_handgun_ma", "Character.sts_ep1_10_dodger_goon_02")





	setArchetypeData("Paco", {"T3HeavyMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalNormalAbilityGrp"}, {}, {"BargResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.paco.archetypeData", "PacoArchetypeData")
    TweakDB:SetFlat("Character.paco.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsBalanced", "Ability.CanUseFlashbangGrenades"})

    TweakDB:SetFlat("Character.paco.statModifierGroups", {"Character.NPC_Base_Primary_Stat_ModGroup", "NPCStatPreset.AllDOTImmunity"})


    TweakDB:SetFlat("Character.jurij_inline13.value", 0)
    TweakDB:SetFlat("Character.jurij_inline21.value", 0)
    TweakDB:SetFlat("Character.jurij_inline6.value", 1)

    TweakDB:SetFlat("Character.jurij_inline10.statType", "")


    --added sandyvsandy to jurij combat root



    --ross
    setArchetypeData("Character.we_ep1_01_mini_boss_1st_phase_inline5", {"BerserkAbilityGrp", "T3HeavyRangedAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalHighAbilityGrp", "TacticalAbilityGrp", "BleedImmuneAbilityGrp", "LaserNadeAbilityGrp", "FragNadeAbilityGrp", "SmokeNadeAbilityGrp"}, {"ShootingPatterns.SmasherAutoShotgunFullAutoShootingPackage"}, {"BargResStatModifierGrp"}, "Character.kurtz_elite3_gunner3_HMG_mb_elite_inline1", false)

    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_1st_phase_ModGroup_inline0.value", 1.2)--hp default 1.2
    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_1st_phase_ModGroup_inline11.value", 10)--max dmg per hit 49

    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_1st_phase_inline4.item", "KurtShotgunWeaponItem")

    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_1st_phase.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsBalanced"})

    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_2nd_phase_Primary_Stat_ModGroup_inline2.value", 0)
    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_2nd_phase_Primary_Stat_ModGroup_inline3.value", 0)
    TweakDB:SetFlat("Character.we_ep1_01_mini_boss_2nd_phase_stats_inline0.value", 3.5)--hp default 2.5



    TweakDB:SetFlat("Character.we_ep1_01_kurtz_tech_franged2_handgun_ma_rare.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.we_ep1_01_kurtz_tech_franged2_handgun_ma_rare.fullDisplayName", LocKey(94499ull))
    addToList("Character.we_ep1_01_kurtz_tech_franged2_handgun_ma_rare.tags", "MaxTac_NotPrevention")
    addToList("Character.we_ep1_01_kurtz_tech_franged2_handgun_ma_rare.tags", "Cyberpsycho")


	--createRegenEffector("RossCentaurHeal", 0, 75, 0.3)
	--addToList("Character.we_ep1_01_mini_boss_2nd_phase.effectors", "RossCentaurHealModifyStatPoolEffector")



    for i,v in ipairs({"Character.sts_ep1_06_enemy_bouncer", "Character.sts_ep1_06_enemy_bouncer_outside_sts"}) do
        TweakDB:SetFlat(v..".skipDisplayArchetype", true)

    end



    cloneNPCDataMinimal("Character.high_kurtz_grunt1_ranged1_handgun_ma", "Character.q303_warehouse_guard_01")

    cloneNPCDataMinimal("Character.kurtz_soldier1_ranged2_rifle_ma", "Character.q303_lobby_guard_handgun_grunt_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier1_ranged2_rifle_wa", "Character.q303_lobby_guard_handgun_grunt_wa")
    cloneNPCDataMinimalWithoutVisual("Character.kurtz_soldier2_shotgun2_shotgun_ma_rare", "Character.q303_lobby_guard_tech_consequence_ma")--guy who instigates combat

    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.q303_lobby_guard_shotgun_elite_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.q303_lobby_reinforcement_rifle_soldier_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.q303_lobby_reinforcement_rifle_soldier_wa")


    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.combat_tower_kurtz_grunt1_ranged1_handgun_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.combat_tower_kurtz_soldier1_ranged2_rifle_wa")


    --Character.q304_stadium_kurt_soldier_sniper_escape_ma Character.q304_stadium_kurt_soldier_shotgun_escape_ma Character.q304_stadium_kurtz_rifle_flashlight_ma Character.q304_stadium_kurt_soldier_escape_ma Character.q304_stadium_kurt_soldier_HMG_escape_mb q304_stadium_kurt_soldier_escape_wa

    --Character.q304_stadium_kurt_spec_pistol_escape_ma 

    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.q304_stadium_kurt_soldier_shotgun_escape_ma")
    cloneNPCDataMinimal("Character.kurtz_recon_sniper2_achilles_ma_rare", "Character.q304_stadium_kurt_soldier_sniper_escape_ma")
    cloneNPCDataMinimal("Character.kurtz_tech_franged2_handgun_ma_rare", "Character.q304_stadium_kurt_soldier_fast_escape_ma")

    cloneNPCDataMinimal("Character.high_kurtz_grunt1_ranged1_handgun_wa", "Character.q304_stadium_kurt_grunt_escape_wa")
    cloneNPCDataMinimal("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.q304_stadium_kurt_soldier_escape_wa")
    cloneNPCDataMinimal("Character.kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.q304_stadium_kurt_spec_pistol_escape_ma")
    TweakDB:SetFlat("Character.q304_stadium_kurt_spec_pistol_escape_ma.actionMap", "GangNetrunner.Map")
    --appearance for Character.q304_stadium_kurt_soldier_fast_escape_ma
    --Character.q304_stadium_kurt_soldier_shotgun_escape_ma if necessary
    --Character.q304_stadium_kurt_soldier_sniper_escape_ma

    cloneNPCDataMinimal("Character.kurtz_rifle_flashlight_ma", "Character.q304_stadium_kurtz_rifle_flashlight_ma")--to increase variety because q304 uses different entity that has less variety
    cloneNPCDataMinimal("Character.kurtz_soldier1_ranged2_rifle_ma", "Character.q304_stadium_kurt_soldier_escape_ma")
    cloneNPCDataMinimal("Character.kurtz_elite3_gunner3_HMG_mb_elite", "Character.q304_stadium_kurt_soldier_HMG_escape_mb")
    TweakDB:SetFlat("Character.q304_stadium_kurtz_rifle_flashlight_ma.visualTags", {"Lvl1", "Soldier"})


    TweakDB:SetFlat("Character.q304_stadium_kurt_soldier_fast_escape_ma.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.q304_stadium_kurt_soldier_fast_escape_ma.fullDisplayName", LocKey(94499ull))
    addToList("Character.q304_stadium_kurt_soldier_fast_escape_ma.tags", "MaxTac_NotPrevention")
    addToList("Character.q304_stadium_kurt_soldier_fast_escape_ma.tags", "Cyberpsycho")


    BargSniper1Hash = ToCName{ hash_lo = 0x97582C08, hash_hi = 0xBEBADC1F }
    --TweakDB:SetFlat("Character.q304_stadium_kurt_soldier_sniper_escape_ma.appearanceName", BargSniper1Hash)

    BargPunisher1Hash = ToCName{ hash_lo = 0x6EE8AC9F, hash_hi = 0x71D5D548 }
    TweakDB:SetFlat("Character.q304_stadium_kurt_soldier_shotgun_escape_ma.appearanceName", BargPunisher1Hash)

    BargCommando1Hash = ToCName{ hash_lo = 0x846A21C9, hash_hi = 0x194904F5 }
    TweakDB:SetFlat("Character.q304_stadium_kurt_soldier_fast_escape_ma.appearanceName", BargCommando1Hash)

    BargFemTechie1Hash = ToCName{ hash_lo = 0x7B56FBC5, hash_hi = 0x296CA3FD }
    TweakDB:SetFlat("Character.q304_stadium_kurt_grunt_escape_wa.appearanceName", BargFemTechie1Hash)

    BargFemLieutenant1Hash = ToCName{ hash_lo = 0x7B53E5A2, hash_hi = 0x29691FFD }
    TweakDB:SetFlat("Character.q304_stadium_kurt_soldier_escape_wa.appearanceName", BargFemLieutenant1Hash)


	function setKurtCentaur(npc)
		TweakDB:SetFlat(npc..".abilities", CentaurAbilityList)
		TweakDB:SetFlat(npc..".actionMap", TweakDB:GetFlat("Character.kurtz_exo.actionMap"))
		--TweakDB:SetFlat(npc..".affiliation", "Factions.Militech")
		TweakDB:SetFlat(npc..".archetypeData", "MiliCentaurArchetypeData")
		TweakDB:SetFlat(npc..".archetypeName", TweakDB:GetFlat("Character.kurtz_exo.archetypeName"))
		TweakDB:SetFlat(npc..".attachmentSlots", TweakDB:GetFlat("Character.kurtz_exo.attachmentSlots"))
		TweakDB:SetFlat(npc..".audioMeleeMaterial", TweakDB:GetFlat("Character.kurtz_exo.audioMeleeMaterial"))
		--TweakDB:SetFlat(npc..".baseAttitudeGroup", TweakDB:GetFlat("Character.q003_royce_boss.baseAttitudeGroup"))
		TweakDB:SetFlat(npc..".effectors", TweakDB:GetFlat("Character.kurtz_exo.effectors"))
		TweakDB:SetFlat(npc..".entityTemplatePath", TweakDB:GetFlat("Character.kurtz_exo.entityTemplatePath"))
		TweakDB:SetFlat(npc..".items", TweakDB:GetFlat("Character.kurtz_exo.items"))
		TweakDB:SetFlat(npc..".objectActions", TweakDB:GetFlat("Character.kurtz_exo.objectActions"))
		TweakDB:SetFlat(npc..".rarity", "NPCRarity.Boss")
		TweakDB:SetFlat(npc..".primaryEquipment", "")
		TweakDB:SetFlat(npc..".secondaryEquipment", "")
		--addToList(npc..".statPools", "BaseStatPools.E3_BossWeakSpotHealth")
        TweakDB:SetFlat(npc..".statPools", TweakDB:GetFlat("Character.kurtz_exo.statPools"))
        TweakDB:SetFlat(npc..".statModifierGroups", TweakDB:GetFlat("Character.kurtz_exo.statModifierGroups"))
		--TweakDB:SetFlat(npc..".statModifierGroups", {})
		--addToList(npc..".statModifierGroups", "Character.exo_npc_base_stats")
		--addToList(npc..".statModifierGroups", "Character.ForceDefeatedModifierGroup")
		--addToList(npc..".statModifierGroups", "Character.StunImunityModifierGroup")
		--addToList(npc..".statModifierGroups", "HitReactionThresholdModifiers.Unstoppable")
		--addToList(npc..".statModifierGroups", "Character.Boss_Poise_Primary_Stat_ModGroup")
		TweakDB:SetFlat(npc..".displayName", TweakDB:GetFlat("Character.kurtz_exo.displayName"))
		TweakDB:SetFlat(npc..".fullDisplayName", TweakDB:GetFlat("Character.kurtz_exo.displayName"))
		TweakDB:SetFlat(npc..".threatTrackingPreset", TweakDB:GetFlat("Character.kurtz_exo.threatTrackingPreset"))
		TweakDB:SetFlat(npc..".weakspots", TweakDB:GetFlat("Character.kurtz_exo.weakspots"))
	end


	setKurtCentaur("Character.q303_lobby_reinforcement_hmelee_elite_mb")



    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.we_ep1_01_kurtz_soldier2_shotgun2_shotgun_ma_rare")
    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.we_ep1_01_kurtz_grunt1_ranged1_handgun_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier1_ranged2_rifle_wa", "Character.we_ep1_01_kurtz_grunt1_ranged1_handgun_wa")
    cloneNPCDataMinimal("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.we_ep1_01_kurtz_soldier1_ranged2_rifle_wa")



    --Character.sts_ep1_06_enemy_rifle_wa Character.sts_ep1_06_enemy_rifle_ma Character.sts_ep1_06_enemy_netrunner_rare_ma Character.sts_ep1_06_enemy_saratoga_wa Character.sts_ep1_06_enemy_rifle_suit_ma 
    --Character.sts_ep1_06_enemy_shotgun_rare_ma Character.sts_ep1_06_enemy_handgun_rare_suit_ma Character.sts_ep1_06_enemy_melee_mb_suit_elite Character.sts_ep1_06_enemy_saratoga_wa
    --2 of Character.kurtz_elite3_gunner3_HMG_mb_elite shows up after mission if combat, as well as Character.mon_kurtz_grunt1_ranged1_saratoga_ma Character.bou_kurtz_strongarms_hmelee3_fists_mb_elite Character.combat_zone_gate_kurtz_elite2_shotgun2_shotgun_ma_rare Character.con_kurtz_netrunner2_netrunner2_lexington_ma_rare Character.kurtz_grunt1_ranged1_handgun_wa

    --Character.sts_ep1_06_cop
	setArchetypeData("Hank", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp"}, {}, {"NCPDResStatModifierGrp", "NCPDHackResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.sts_ep1_06_cop.archetypeData", "HankArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_06_cop.rarity", "NPCRarity.Elite")

    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.mon_kurtz_grunt1_ranged1_saratoga_ma")
    cloneNPCDataMinimalWithoutVisual("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.sts_ep1_06_enemy_shotgun_rare_ma")
    cloneNPCDataMinimal("Character.kurtz_soldier1_generic_ranged2_rifle_wa", "Character.sts_ep1_06_enemy_rifle_wa")


    --garage
    --Character.sts_ep1_07_kurtz_ranger1_ranged1_saratoga_ma Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma Character.sts_ep1_07_kurtz_ranger2_ranged2_ajax_ma Character.sts_ep1_07_kurtz_enforcer2_shotgun2_tactician_ma_rare

    --Character.sts_ep1_07_kurt_worker_wa Character.sts_ep1_07_kurt_officer boss(techie)
    --Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_wa needs name 
    --Character.sts_ep1_07_kurt_android
    --Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal miniboss
    --Character.sts_ep1_07_kurtz_elite3_gunner3_HMG_mb_elite
    --Character.sts_ep1_07_kurt_worker_ma_patrick Character.sts_ep1_07_elite_melee_mb Character.sts_ep1_07_kurtz_ranger_netrunner_ma_rare
    --Character.sts_ep1_07_kurtz_ma_aziz boss set special appearance
    --Character.sts_ep1_07_kurtz_enforcer2_shotgun2_tactician_ma_rare Character.sts_ep1_07_fast_melee_ma Character.sts_ep1_07_kurtz_ma_sniper




    cloneNPCDataMinimal("Character.kurtz_soldier2_shotgun3_shotgun_ma", "Character.sts_ep1_07_kurtz_enforcer2_shotgun2_tactician_ma_rare")
    BargPunisher2Hash = ToCName{ hash_lo = 0x6EE8AE52, hash_hi = 0x71D5D648 }
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_enforcer2_shotgun2_tactician_ma_rare.appearanceName", BargPunisher2Hash)

    cloneNPCDataMinimal("Character.sixthstreet_prepers3_shotgun3_carnage_ma_rare", "Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma")
    cloneNPCDataMinimalWithoutVisual("Character.sixthstreet_patrol2_ranged2_ajax_wa", "Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma")--fast ranged but elite appearance
    SixthPreper1Hash = ToCName{ hash_lo = 0x5652AEFB, hash_hi = 0x93AE598A }
    TweakDB:SetFlat("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma.appearanceName", SixthPreper1Hash)

    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.sts_ep1_07_kurtz_guard_garage")
    cloneNPCDataMinimal("Character.kurtz_soldier2_generic_ranged3_rifle_ma", "Character.sts_ep1_07_kurtz_ma_aziz")--in case he's used




    cloneNPCDataMinimal("Character.sixthstreet_menace1_fmelee2_baton_wa_rare", "Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_wa")
    --SixthMenace1Hash = ToCName{ hash_lo = 0xF17531C5, hash_hi = 0x3556341F }
    --TweakDB:SetFlat("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_wa.appearanceName", SixthMenace1Hash)--dont use since same enemy appears twice

    cloneNPCDataMinimal("Character.prevention_dogtown_droid_ma", "Character.sts_ep1_07_kurt_android")


    cloneNPCDataMinimal("Character.high_kurtz_grunt1_ranged1_handgun_ma", "Character.sts_ep1_07_kurt_officer")
    TweakDB:SetFlat("Character.sts_ep1_07_kurt_officer.rarity", "NPCRarity.Boss")
    addToList("Character.sts_ep1_07_kurt_officer.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_ep1_07_kurt_officer.tags", "Cyberpsycho")
    createEquipmentWeaponGrp("RussellRasetsuPrimary", "Items.Base_Rasetsu", 0, 10, false)
    TweakDB:SetFlat("Character.sts_ep1_07_kurt_officer.primaryEquipment", "RussellRasetsuPrimaryEquipGrp")
    BargRussellHash = ToCName{ hash_lo = 0x846A21C9, hash_hi = 0x194904F5 }
    TweakDB:SetFlat("Character.sts_ep1_07_kurt_officer.appearanceName", BargRussellHash)

    cloneNPCDataMinimal("Character.sixthstreet_officer_officer_overture_ma", "Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal")
    TweakDB:SetFlat("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal.rarity", "NPCRarity.Boss")
    addToList("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal.tags", "Cyberpsycho")
    FrankOsmaniHash = ToCName{ hash_lo = 0x31157C59, hash_hi = 0x91F198EB }
    TweakDB:SetFlat("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal.appearanceName", FrankOsmaniHash)


    cloneNPCDataMinimal("Character.kurtz_tech_franged2_handgun_ma_rare", "Character.sts_ep1_07_kurtz_ma_fast_handgun")--real aziz not used
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_fast_handgun.rarity", "NPCRarity.Boss")
    addToList("Character.sts_ep1_07_kurtz_ma_fast_handgun.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_ep1_07_kurtz_ma_fast_handgun.tags", "Cyberpsycho")
    BargAzizHash = ToCName{ hash_lo = 0x2186817D, hash_hi = 0x1F40975C }
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_fast_handgun.appearanceName", BargAzizHash)
    createLegendaryWeapon("Items.Preset_Umbra_Military")
    createEquipmentWeaponGrp("AzizUmbra", "Items.Preset_Umbra_Military_Legendary", 0, 10, false)
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_fast_handgun.primaryEquipment", "AzizUmbraEquipGrp")

    cloneNPCDataMinimal("Character.kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.sts_ep1_07_kurtz_ma_sniper")
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_sniper.actionMap", "GangNetrunner.Map")

    TweakDB:SetFlat("Character.sts_ep1_07_kurt_android.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.sts_ep1_07_kurt_officer.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_fast_handgun.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_sniper.displayName", LocKey(0ull))--for some reason had same name as other
    TweakDB:SetFlat("Character.sts_ep1_07_kurtz_ma_sniper.fullDisplayName", LocKey(0ull))


    TweakDB:SetFlat("Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma.rarity", "NPCRarity.Elite")






    setArchetypeData("BiotechnicaFastRanged", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "LaserNadeAbilityGrp", "SmokeNadeAbilityGrp"}, {}, {"CorpResStatModifierGrp", "CorpHackResStatModifierGrp"}, "ArchetypeType.FastRangedT3", true)
    TweakDB:SetFlat("Character.sts_ep1_07_agent_01.archetypeData", "BiotechnicaFastRangedArchetypeData")



    cloneNPCDataMinimalWithoutVisual("Character.wraiths_warrior3_shotgun3_palica_ma_elite", "Character.sts_ep1_07_agent_02")--to give them the shotgun
    cloneNPCDataMinimalWithoutVisual("Character.wraiths_warrior3_shotgun3_palica_ma_elite", "Character.sts_ep1_07_agent_04")
    setArchetypeData("BiotechnicaFastShot", {"Sandy1AbilityGrp", "T3FastShotAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalNormalAbilityGrp", "LaserNadeAbilityGrp", "SmokeNadeAbilityGrp"}, {}, {"CorpResStatModifierGrp", "CorpHackResStatModifierGrp"}, "ArchetypeType.FastShotgunnerT3", true)
    TweakDB:SetFlat("Character.sts_ep1_07_agent_02.archetypeData", "BiotechnicaFastShotArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_07_agent_04.archetypeData", "BiotechnicaFastShotArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_07_agent_03.archetypeData", "BiotechnicaFastRangedArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_07_agent_01.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_07_agent_02.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_07_agent_03.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_07_agent_04.rarity", "NPCRarity.Elite")





    --vdb robot boss
	createStatModifierGrp("VDBAndroidRes", {"VDBElec", "DroidTher", "DroidChem"})

	setArchetypeData("VDBAndroid", {"Sandy1AbilityGrp", "T3AndroidHeavyRangedAbilityGrp", "HitReactionMediumAbilityGrp", "CortexAbilityGrp", "ICEAbilityGrp", "GraphiteAbilityGrp", "HealthMonitorBombAbilityGrp", "SeeCamoAbilityGrp", "SmokeyAbilityGrp", "SubdermalHighMechAbilityGrp", "ShockAbilityGrp"}, {}, {"VDBAndroidResStatModifierGrp", "VDBHackResStatModifierGrp"}, "ArchetypeType.AndroidRangedT2", true)
    TweakDB:SetFlat("Character.sts_ep1_12_droid_miniboss.archetypeData", "VDBAndroidArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_12_droid_miniboss_inline4.value", 0)--extra hack res default 2

    TweakDB:SetFlat("Character.sts_ep1_12_droid_miniboss.abilities", {"Ability.IsMechanical", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.HasDodge", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.CanUseCuttingGrenades", "Ability.CanUseEMPGrenades"})

    --Items.Preset_MA70_Military Items.Preset_MA70_Neon Items.Preset_MA70_Pimp
    --Items.Preset_Defender_Military
    TweakDB:SetFlat("Character.sts_ep1_12_droid_miniboss_inline6.item", "Items.Preset_Defender_Neon")


	setArchetypeData("AyoZarin", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalNormalAbilityGrp", "CortexAbilityGrp", "ICEAbilityGrp", "GraphiteAbilityGrp", "ShockAbilityGrp", "LaserNadeAbilityGrp", "FlashNadeAbilityGrp", "SmokeNadeAbilityGrp"}, {}, {"VDBResStatModifierGrp", "VDBHackResStatModifierGrp"}, "ArchetypeType.FastMeleeT3", true)
    TweakDB:SetFlat("Character.we_ep1_05_mini_boss.archetypeData", "AyoZarinArchetypeData")

    --addToList("Character.we_ep1_05_mini_boss.statModifiers", "HammerCannotBlockStat")--otherwise she keeps blocking isntead of parrying

    --removed Ability.HasElectrocuteImmunity and Ability.HasElectricCoating
    TweakDB:SetFlat("Character.we_ep1_05_mini_boss.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.CanCatchUpDistance", "Ability.CanCatchUp", "Ability.CanUseCovers"})

    TweakDB:SetFlat("Character.Ayo_Zarin_ModGroup_inline17.value", 1.8)--hp default 1.8
    TweakDB:SetFlat("Character.Ayo_Zarin_ModGroup_inline2.value", 0)--elec res default 250
    TweakDB:SetFlat("Character.Ayo_Zarin_ModGroup_inline20.value", 10)--health in combat regen rate default 10
    TweakDB:SetFlat("Character.Ayo_Zarin_ModGroup_inline3.value", 0)--default electrocute immunity
    TweakDB:SetFlat("Character.Ayo_Zarin_ModGroup_inline4.value", 0)--emp immune

    TweakDB:SetFlat("Character.we_ep1_05_mini_boss_inline6.item", "Items.Preset_Masamune_Flashlight_Shadows")

    --Items.Preset_Masamune_Flashlight_Shadows Items.Preset_Masamune_Neon Items.Preset_Masamune_Pimp Items.Preset_Masamune_Trauma Items.Preset_Masamune_Arasaka_2077 Items.Preset_Masamune_Arasaka_2020

    addToList("Character.we_ep1_05_fight_drone.statModifiers", "VDBResStatModifierGrp")
    addToList("Character.we_ep1_05_fight_drone.statModifiers", "VDBHackResStatModifierGrp")



    TweakDB:SetFlat("Character.sts_ep1_01_nika_inline1.item", "Items.Preset_Nova_Military")
    TweakDB:SetFlat("Character.sts_ep1_01_nika.archetypeData", "Character.ep1_scavenger_elite2_shotgun_igla_ma_inline0")
    NikaVO = ToCName{ hash_lo = 0xCE9EC5D3, hash_hi = 0xE85DCD6F }
    TweakDB:SetFlat("Character.sts_ep1_01_nika.voiceTag", NikaVO)


    cloneNPCDataMinimalWithoutVisual("Character.ep1_voodooboys_grunt1_ranged2_saratoga_ma", "Character.sts_ep1_12_voodooboy_ranged2_saratoga_ma")
    cloneNPCDataMinimalWithoutVisual("Character.ep1_voodooboys_grunt1_ranged2_sidewinder_wa", "Character.sts_ep1_12_voodooboy_ranged2_sidewinder_wa")
    cloneNPCDataMinimalWithoutVisual("Character.ep1_voodooboys_grunt1coat_shotgun2_palica_ma", "Character.sts_ep1_12_voodooboy_shotgun2_palica_ma")
    cloneNPCDataMinimalWithoutVisual("Character.ep1_voodooboys_grunt2coat_shotgun2_palica_wa", "Character.sts_ep1_12_voodooboy_shotgun2_palica_wa")
    cloneNPCDataMinimalWithoutVisual("Character.voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.sts_ep1_12_voodooboys_netrunner2_netrunner2_lexington_ma_rare")
    cloneNPCDataMinimalWithoutVisual("Character.voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.sts_ep1_12_voodooboys_netrunner2_netrunner2_lexington_wa_rare")
    TweakDB:SetFlat("Character.sts_ep1_12_voodooboys_netrunner2_netrunner2_lexington_ma_rare.actionMap", "GangNetrunner.Map")
    TweakDB:SetFlat("Character.sts_ep1_12_voodooboys_netrunner2_netrunner2_lexington_wa_rare.actionMap", "GangNetrunner.Map")


    TweakDB:SetFlat("Character.sts_ep1_12_alan_noel_inline0.value", 1)--hp default 0.1
    TweakDB:SetFlat("Character.sts_ep1_12_alan_noel.archetypeData", "Character.netwatch_agent_netrunner3_omaha_elite_inline4")





    AaronWainesVO = ToCName{ hash_lo = 0xF212966C, hash_hi = 0xC8D931BF }
    TweakDB:SetFlat("Character.mq306_aaron.voiceTag", AaronWainesVO)

    setArchetypeData("AngieBodyguard", {"BerserkAbilityGrp", "T3HeavyMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "Character.animals_bouncer3_hmelee3_fists_mba_elite_inline1", true)
    TweakDB:SetFlat("Character.mq306_animals.archetypeData", "AngieBodyguardArchetypeData")
    TweakDB:SetFlat("Character.mq306_animals.rarity", "NPCRarity.Elite")


	setArchetypeData("Angie", {"SandyAbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.mq306_angie.archetypeData", "AngieArchetypeData")
    TweakDB:SetFlat("Character.mq306_angie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsDefensive", "Ability.CanUseFlashbangGrenades"})
    AngieVO = ToCName{ hash_lo = 0x943BBBD7, hash_hi = 0x6CE4EFB2 }
    TweakDB:SetFlat("Character.mq306_angie.voiceTag", AngieVO)
    TweakDB:SetFlat("Character.mq306_angie.rarity", "NPCRarity.Boss")

    cloneNPCDataMinimalWithoutVisual("Character.rey_scavengers_grunt_medium_range_w_hard", "Character.mq306_scavenger_grunt1_melee1_pipewrench_ma")

    TweakDB:SetFlat("Character.sts_ep1_01_heavy_gunner_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_01_heavy_melee_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_01_nika.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_01_sniper_ma.rarity", "NPCRarity.Elite")


    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_fists_ma.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_fists_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_fists_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_fists_ma.visualTags", {"Lvl3", "Scavengers", "Grunt"})

    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_pipewrench_wa.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_pipewrench_wa.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_pipewrench_wa.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.high_scavenger_grunt1_melee1_pipewrench_wa.visualTags", {"Lvl3", "Scavengers", "Grunt"})

    cloneNPCDataMinimal("Character.high_scavenger_grunt1_melee1_pipewrench_wa", "Character.high_scavenger_grunt2_melee2_pipewrench_wa")


    TweakDB:SetFlat("Character.we_ep1_17_techie.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.we_ep1_17_techie.rarity", "NPCRarity.Boss")
    addToList("Character.we_ep1_17_techie.tags", "MaxTac_NotPrevention")
    addToList("Character.we_ep1_17_techie.tags", "Cyberpsycho")
    createEquipmentWeaponGrp("ScavTechieBossAuthorityPrimary", "Items.Preset_Authority_Default", 0, 10, false)
    TweakDB:SetFlat("Character.we_ep1_17_techie.primaryEquipment", "ScavTechieBossAuthorityPrimaryEquipGrp")
    TweakDB:SetFlat("Character.we_ep1_17_techie.displayName", LocKey(1803ull))
    TweakDB:SetFlat("Character.we_ep1_17_techie.fullDisplayName", LocKey(1803ull))
    TweakDB:SetFlat("Character.we_ep1_17_techie.skipDisplayArchetype", true)

    addToList("Character.we_ep1_17_miniboss.statModifiers", "ScavResStatModifierGrp")
    addToList("Character.we_ep1_17_miniboss.statModifiers", "ScavHackResStatModifierGrp")
    
    addToList("Character.we_ep1_17_techie.abilities", "Ability.CanGuardBreak")

    

    cloneNPCDataMinimalWithoutVisual("Character.mq301_ambush_scav_elite_melee", "Character.bou_scavenger_fast3_fmelee3_machete_wa_elite")--fast female template
    TweakDB:SetFlat("Character.bou_scavenger_fast3_fmelee3_machete_wa_elite.visualTags", {"Lvl3", "Scavengers", "Grunt"})

    ScavMantisList = {"Character.con_scavenger_fast3_fmelee3_machete_wa_elite", "Character.high_scavenger_fast3_fmelee3_machete_wa_elite", "Character.hpark_scavenger_fast3_fmelee3_machete_wa_elite", "Character.mon_scavenger_fast3_fmelee3_machete_wa_elite", "Character.sta_scavenger_fast3_fmelee3_machete_wa_elite", "Character.high_scavenger_grunt2_melee2_knife_wa"}
    for i,v in ipairs(ScavMantisList) do
        cloneNPCDataMinimal("Character.bou_scavenger_fast3_fmelee3_machete_wa_elite", v)
    end

    --Character.sa_ep1_courier_loop_enemies_scav_melee2_knife_wa consider making elite


    cloneNPCDataMinimalWithoutVisual("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.bou_scavenger_fast2_fmelee2rare_knife_ma_rare")--fast male template
    TweakDB:SetFlat("Character.bou_scavenger_fast2_fmelee2rare_knife_ma_rare.visualTags", {"Lvl3", "Scavengers", "Grunt"})

    ScavJackalList = {"Character.con_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.high_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.hpark_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.mon_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.sta_scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.high_scavenger_grunt1_melee1_tireiron_ma", "Character.high_scavenger_grunt1_melee1_pipewrench_ma"}
    for i,v in ipairs(ScavJackalList) do
        cloneNPCDataMinimal("Character.bou_scavenger_fast2_fmelee2rare_knife_ma_rare", v)
    end




    --prototype scrapper
    cloneNPCDataMinimal("Character.bou_scavenger_fast3_fmelee3_machete_wa_elite", "Character.sts_ep1_04_scavenger_grunt1_ranged1_slaughtomatic_wa")
    cloneNPCDataMinimal("Character.high_scavenger_grunt1_melee1_pipewrench_wa", "Character.sts_ep1_04_scavenger_grunt1_ranged1_pulsar_wa")
    cloneNPCDataMinimalWithoutVisual("Character.ep1_scavenger_grunt2_ranged2_pulsar_ma", "Character.sts_ep1_04_scavenger_grunt1_ranged1_nova_ma")--too many nova on 2nd floor





    for i,v in ipairs({"Character.q303_voodoo_boy_guard_baseball_ma_inline0", "Character.q303_voodoo_boy_guard_baseball_ma_inline1", "Character.q303_voodoo_boy_guard_fake_netrunner_wa_inline0", "Character.q303_voodoo_boy_guard_fake_netrunner_wa_inline1", "Character.q303_voodoo_boy_guard_handgun_ma_inline0", "Character.q303_voodoo_boy_guard_handgun_ma_inline1", "Character.q303_voodoo_boy_guard_handgun_wa_inline0", "Character.q303_voodoo_boy_guard_handgun_wa_inline1", "Character.q303_voodoo_boy_guard_rifle_ma_inline0", "Character.q303_voodoo_boy_guard_rifle_ma_inline1", "Character.q303_voodoo_boy_guard_rifle_wa_inline0", "Character.q303_voodoo_boy_guard_rifle_wa_inline1", "Character.q303_voodoo_boy_guard_shotgun_ma_inline0", "Character.q303_voodoo_boy_guard_shotgun_ma_inline1", "Character.q303_voodoo_boy_guard_shotgun_wa_inline0", "Character.q303_voodoo_boy_guard_shotgun_wa_inline1"}) do
        TweakDB:SetFlat(v..".value", 1)

    end

    cloneNPCDataMinimal("Character.ep1_voodooboys_grunt3coat_shotgun3_zhuo_ma_elite", "Character.q303_voodoo_boy_guard_handgun_ma")


    cloneNPCDataMinimal("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.sts_ep1_03_scavenger_grunt1_melee1_pipewrench_ma")
    cloneNPCDataMinimal("Character.scavenger_grunt2_ranged2_copperhead_wa", "Character.sts_ep1_03_scavenger_grunt1_ranged1_nova_wa")
    cloneNPCDataMinimal("Character.scavenger_fast2_fmelee2rare_knife_ma_rare", "Character.sts_ep1_03_scavenger_grunt2_melee2_knife_ma")

    cloneNPCDataMinimalWithoutVisual("Character.scavenger_fast3_fmelee3_machete_wa_elite", "Character.sts_ep1_03_scavenger_grunt1_ranged1_slaughtomatic_wa")


    TweakDB:SetFlat("Character.sts_ep1_03_scavenger_grunt2_melee2_knife_ma.archetypeData", "ScavTechieArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_03_scavenger_grunt2_melee2_knife_ma.primaryEquipment", "TechieTiconDefaultPrimaryEquipGrp")
    TweakDB:SetFlat("Character.sts_ep1_03_scavenger_grunt2_melee2_knife_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_03_scavenger_grunt2_melee2_knife_ma.appearanceName", ScavTechieHash1)


    TweakDB:CloneRecord("ScavMantisEquipItemKnife", "Character.scavenger_fast3_fmelee3_machete_wa_elite_inline3")
    TweakDB:SetFlat("ScavMantisEquipItemKnife.item", "Items.Preset_Chefs_Knife_Default")

    TweakDB:CloneRecord("ScavMantisEquipItemPoolEntryKnife", "Character.scavenger_fast3_fmelee3_machete_wa_elite_inline2")
    TweakDB:SetFlat("ScavMantisEquipItemPoolEntryKnife.items", {"ScavMantisEquipItemKnife"})


	addToList("Character.scavenger_fast3_fmelee3_machete_wa_elite_inline1.pool", "ScavMantisEquipItemPoolEntryKnife")





    --Character.wst_ep1_17_merc
    cloneNPCDataMinimalWithoutVisual("Character.high_kurtz_grunt1_ranged1_handgun_wa", "Character.wst_ep1_17_merc")
    TweakDB:SetFlat("Character.wst_ep1_17_merc.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.wst_ep1_17_merc.skipDisplayArchetype", true)
    addToList("Character.wst_ep1_17_merc.tags", "MaxTac_NotPrevention")



    --Character.sts_ep1_08_before_building_ma_scavenger_grunt2_ranged2_pulsar_ma Character.sts_ep1_08_scavenger_grunt1_ranged1_slaughtomatic_wa
    cloneNPCDataMinimal("Character.bou_scavenger_fast3_fmelee3_machete_wa_elite", "Character.sts_ep1_08_scavenger_before_building_wa_grunt2_melee2_knife_wa")
    cloneNPCDataMinimal("Character.high_scavenger_grunt1_melee1_pipewrench_wa", "Character.sts_ep1_08_scavenger_grunt1_ranged1_slaughtomatic_wa")
    cloneNPCDataMinimal("Character.bou_scavenger_fast3_fmelee3_machete_wa_elite", "Character.sts_ep1_08_scavenger_grunt2_melee2_knife_wa")
    cloneNPCDataMinimal("Character.high_scavenger_grunt1_melee1_fists_ma", "Character.sts_ep1_08_scavenger_grunt2_ranged2_pulsar_ma")



    TweakDB:SetFlat("Character.sts_ep1_08_kgb_boss_hologram.archetypeData", "Character.arasaka_soldier1_ranged3_masamune_mah_rare_inline4")
    TweakDB:SetFlat("Character.sts_ep1_08_kgb_boss_hologram_final_scene.archetypeData", "Character.arasaka_soldier2_shotgun2_tactician_mah_rare_inline4")
    TweakDB:SetFlat("Character.sts_ep1_08_kgb_boss_hologram_final_scene_sniper.archetypeData", "Character.arasaka_sniper_sniper3_nekomata_ma_elite_inline0")
    --Character.arasaka_sniper_sniper3_nekomata_ma_elite_inline0  Character.arasaka_soldier2_shotgun2_tactician_mah_rare_inline4






    cloneNPCDataMinimalWithoutVisual("Character.security_guard1_ranged1_nue_ma", "Character.sts_ep1_13_consierge_ma")
    cloneNPCDataMinimalWithoutVisual("Character.security_guard1_ranged1_nue_wa", "Character.sts_ep1_13_consierge_wa")
    cloneNPCDataMinimalWithoutVisual("Character.security_guard1_ranged1_nue_wa", "Character.sts_ep1_13_auctioneer_ma")
    cloneNPCDataMinimalWithoutVisual("Character.security_guard1_ranged1_nue_wa", "Character.sts_ep1_13_bartender_ma")
    cloneNPCDataMinimalWithoutVisual("Character.security_guard1_ranged1_nue_wa", "Character.sts_ep1_13_employee_ma")
    cloneNPCDataMinimalWithoutVisual("Character.security_guard1_ranged1_nue_wa", "Character.sts_ep1_13_employee_wa")
    TweakDB:SetFlat("Character.sts_ep1_13_consierge_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_13_consierge_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_13_auctioneer_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_13_bartender_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_13_employee_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.sts_ep1_13_employee_wa.skipDisplayArchetype", true)

    for i,v in ipairs({"Character.sts_ep1_13_auctioneer_ma_inline0", "Character.sts_ep1_13_bartender_ma_inline0", "Character.sts_ep1_13_consierge_ma_inline0", "Character.sts_ep1_13_consierge_wa_inline0", "Character.sts_ep1_13_employee_ma_inline0", "Character.sts_ep1_13_employee_wa_inline0"}) do
        TweakDB:SetFlat(v..".value", 0)

    end

    setArchetypeData("PersonalTrainer", {"Sandy3AbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalHighAbilityGrp", "KersAbilityGrp", "BleedImmuneAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"CorpResStatModifierGrp", "CorpHackResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.sts_ep1_13_enemy_mini_boss.archetypeData", "PersonalTrainerArchetypeData")
    TweakDB:SetFlat("Character.sts_ep1_13_enemy_mini_boss.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades"})
    TweakDB:SetFlat("Character.sts_ep1_13_enemy_mini_boss.rarity", "NPCRarity.Boss")
    addToList("Character.sts_ep1_13_enemy_mini_boss.tags", "MaxTac_NotPrevention")
    addToList("Character.sts_ep1_13_enemy_mini_boss.tags", "Cyberpsycho")

    TweakDB:SetFlat("Character.sts_ep1_13_guard_netrunner2_lexington_ma_rare.actionMap", "CorpoNetrunner.Map")

    TweakDB:SetFlat("Character.sts_ep1_13_guard_hmelee2_fists_mb_rare.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.sts_ep1_13_guard_shotgun2_tactician_mb_rare.rarity", "NPCRarity.Elite")



    setArchetypeData("Dante", {"Sandy2AbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "TacticalAbilityGrp"}, {}, {"MiliResStatModifierGrp", "MiliHackResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.dante.archetypeData", "DanteArchetypeData")
    TweakDB:SetFlat("Character.dante.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsBalanced", "Ability.CanUseFlashbangGrenades"})
    TweakDB:SetFlat("Character.dante.rarity", "NPCRarity.Elite")



    cloneNPCDataMinimalWithoutVisual("Character.bou_scavenger_fast3_fmelee3_machete_wa_elite", "Character.mq303_scav_1")
    TweakDB:SetFlat("Character.mq303_scav_1.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq303_scav_2.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq303_scav_4.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq303_scav_5.displayName", LocKey(0ull))
    TweakDB:SetFlat("Character.mq303_scav_6.displayName", LocKey(0ull))





    cloneNPCDataMinimal("Character.voodooboys_grunt3coat_shotgun3_zhuo_ma_elite", "Character.q304_voodooboys_car_rental_1")



    TweakDB:SetFlat("Character.q306_orbital_air_generic_guard_melee_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q306_orbital_air_generic_guard_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q306_orbital_air_generic_guard_smg_ma.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q306_orbital_air_generic_guard_wa.skipDisplayArchetype", true)
    TweakDB:SetFlat("Character.q306_orbital_air_guard_rifle_ma.skipDisplayArchetype", true)

    TweakDB:SetFlat("Character.q306_orbital_air_robot_guard_smg_ma.archetypeData", "Character.security_android_android2_ajax_ma_inline4")
    TweakDB:SetFlat("Character.q306_orbital_air_robot_guard_smg_ma.skipDisplayArchetype", true)

	setArchetypeData("OARobotMelee", {"T2AndroidRangedAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedMechAbilityGrp"}, {}, {"CorpAndroidResStatModifierGrp", "CorpHackResStatModifierGrp"}, "ArchetypeData.AndroidMeleeT2", true)
    TweakDB:SetFlat("Character.q306_orbital_air_robot_guard.archetypeData", "OARobotMeleeArchetypeData")





    --dogtown prevention equipment


    createEquipmentWeaponGrp("BargKyubiMilitaryPrimary", "Items.Preset_Kyubi_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargUmbraMilitaryPrimary", "Items.Preset_Umbra_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargUmbraNeonPrimary", "Items.Preset_Umbra_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargUmbraPimpPrimary", "Items.Preset_Umbra_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargAjaxKrausserPrimary", "Items.Preset_Ajax_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargCopperheadKrausserPrimary", "Items.Preset_Copperhead_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargSidewinderMilitaryPrimary", "Items.Preset_Sidewinder_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargSidewinderNeonPrimary", "Items.Preset_Sidewinder_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargSidewinderPimpPrimary", "Items.Preset_Sidewinder_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargWardenKrausserPrimary", "Items.Preset_Warden_Krausser", 0, 5, false)
    createEquipmentWeaponGrp("BargWardenMilitaryPrimary", "Items.Preset_Warden_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargWardenNeonPrimary", "Items.Preset_Warden_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargWardenPimpPrimary", "Items.Preset_Warden_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargSaratogaKrausserPrimary", "Items.Preset_Saratoga_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargNekomataKrausserPrimary", "Items.Preset_Nekomata_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargPulsarMilitaryPrimary", "Items.Preset_Pulsar_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargPulsarNeonPrimary", "Items.Preset_Pulsar_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargPulsarPimpPrimary", "Items.Preset_Pulsar_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargAchillesMilitaryPrimary", "Items.Preset_Achilles_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargAchillesNeonPrimary", "Items.Preset_Achilles_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargAchillesPimpPrimary", "Items.Preset_Achilles_Pimp", 0, 5, false)

	TweakDB:CloneRecord("BargRiflePrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("BargRiflePrimaryEquipItemPool.pool", {"BargKyubiMilitaryPrimaryEquipItemPoolEntry", "BargUmbraMilitaryPrimaryEquipItemPoolEntry", "BargUmbraNeonPrimaryEquipItemPoolEntry", "BargUmbraPimpPrimaryEquipItemPoolEntry", "BargAjaxKrausserPrimaryEquipItemPoolEntry", "BargCopperheadKrausserPrimaryEquipItemPoolEntry", "BargSidewinderMilitaryPrimaryEquipItemPoolEntry", "BargSidewinderNeonPrimaryEquipItemPoolEntry", "BargSidewinderPimpPrimaryEquipItemPoolEntry", "BargWardenKrausserPrimaryEquipItemPoolEntry", "BargWardenMilitaryPrimaryEquipItemPoolEntry", "BargWardenNeonPrimaryEquipItemPoolEntry", "BargWardenPimpPrimaryEquipItemPoolEntry", "BargSaratogaKrausserPrimaryEquipItemPoolEntry", "BargNekomataKrausserPrimaryEquipItemPoolEntry", "BargPulsarMilitaryPrimaryEquipItemPoolEntry", "BargPulsarNeonPrimaryEquipItemPoolEntry", "BargPulsarPimpPrimaryEquipItemPoolEntry", "BargAchillesMilitaryPrimaryEquipItemPoolEntry", "BargAchillesNeonPrimaryEquipItemPoolEntry", "BargAchillesPimpPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_dogtown_droid_ma_inline2", "Character.prevention_dogtown_rifle_ma_inline3", "Character.prevention_dogtown_rifle_wa_inline3", "Character.prevention_dogtown_saratoga_ma_inline3", "Character.prevention_dogtown_saratoga_wa_inline3"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"BargRiflePrimaryEquipItemPool"})
	end



    createEquipmentWeaponGrp("BargPozharMilitaryPrimary", "Items.Preset_Pozhar_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargPozharNeonPrimary", "Items.Preset_Pozhar_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargPozharPimpPrimary", "Items.Preset_Pozhar_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("BargCrusherKrausserPrimary", "Items.Preset_Crusher_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargTacticianKrausserPrimary", "Items.Preset_Tactician_Krausser", 0, 10, false)
    createEquipmentWeaponGrp("BargTesteraMilitaryPrimary", "Items.Preset_Testera_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargTesteraNeonPrimary", "Items.Preset_Testera_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargTesteraPimpPrimary", "Items.Preset_Testera_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("BargCarnageMilitaryPrimary", "Items.Preset_Carnage_Military", 0, 10, false)
    createEquipmentWeaponGrp("BargCarnageNeonPrimary", "Items.Preset_Carnage_Neon", 0, 10, false)
    createEquipmentWeaponGrp("BargCarnagePimpPrimary", "Items.Preset_Carnage_Pimp", 0, 10, false)

	TweakDB:CloneRecord("BargShotgunPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("BargShotgunPrimaryEquipItemPool.pool", {"BargPozharMilitaryPrimaryEquipItemPoolEntry", "BargPozharNeonPrimaryEquipItemPoolEntry", "BargPozharPimpPrimaryEquipItemPoolEntry", "BargCrusherKrausserPrimaryEquipItemPoolEntry", "BargTacticianKrausserPrimaryEquipItemPoolEntry", "BargTesteraMilitaryPrimaryEquipItemPoolEntry", "BargTesteraNeonPrimaryEquipItemPoolEntry", "BargTesteraPimpPrimaryEquipItemPoolEntry", "BargCarnageMilitaryPrimaryEquipItemPoolEntry", "BargCarnageNeonPrimaryEquipItemPoolEntry", "BargCarnagePimpPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_dogtown_shotgun_ma_inline2"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"BargShotgunPrimaryEquipItemPool"})
	end



    createEquipmentWeaponGrp("BargQuasarMilitaryPrimary", "Items.Preset_Quasar_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargQuasarNeonPrimary", "Items.Preset_Quasar_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargQuasarPimpPrimary", "Items.Preset_Quasar_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargNovaMilitaryPrimary", "Items.Preset_Nova_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargNovaNeonPrimary", "Items.Preset_Nova_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargNovaPimpPrimary", "Items.Preset_Nova_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargOvertureMilitaryPrimary", "Items.Preset_Overture_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargOvertureNeonPrimary", "Items.Preset_Overture_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargOverturePimpPrimary", "Items.Preset_Overture_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargMetelMilitaryPrimary", "Items.Preset_Metel_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargMetelNeonPrimary", "Items.Preset_Metel_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargMetelPimpPrimary", "Items.Preset_Metel_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargBuryaMilitaryPrimary", "Items.Preset_Burya_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargBuryaNeonPrimary", "Items.Preset_Burya_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargBuryaPimpPrimary", "Items.Preset_Burya_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargUnityMilitaryPrimary", "Items.Preset_Unity_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargUnityNeonPrimary", "Items.Preset_Unity_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargUnityPimpPrimary", "Items.Preset_Unity_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargGritKrausserPrimary", "Items.Preset_Grit_Krausser", 0, 5, false)
    createEquipmentWeaponGrp("BargGritMilitaryPrimary", "Items.Preset_Grit_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargGritNeonPrimary", "Items.Preset_Grit_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargGritPimpPrimary", "Items.Preset_Grit_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargLexingtonKrausserPrimary", "Items.Preset_Lexington_Krausser", 0, 5, false)
    createEquipmentWeaponGrp("BargLexingtonMilitaryPrimary", "Items.Preset_Lexington_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargLexingtonNeonPrimary", "Items.Preset_Lexington_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargLexingtonPimpPrimary", "Items.Preset_Lexington_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargOmahaKrausserPrimary", "Items.Preset_Omaha_Krausser", 0, 5, false)
    createEquipmentWeaponGrp("BargOmahaMilitaryPrimary", "Items.Preset_Omaha_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargOmahaNeonPrimary", "Items.Preset_Omaha_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargOmahaPimpPrimary", "Items.Preset_Omaha_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargTiconMilitaryPrimary", "Items.Preset_Ticon_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargTiconNeonPrimary", "Items.Preset_Ticon_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargTiconPimpPrimary", "Items.Preset_Ticon_Pimp", 0, 5, false)
    createEquipmentWeaponGrp("BargNueMilitaryPrimary", "Items.Preset_Nue_Military", 0, 5, false)
    createEquipmentWeaponGrp("BargNueNeonPrimary", "Items.Preset_Nue_Neon", 0, 5, false)
    createEquipmentWeaponGrp("BargNuePimpPrimary", "Items.Preset_Nue_Pimp", 0, 5, false)

    for i,v in ipairs({"BargQuasarMilitaryPrimaryItems.Preset_Quasar_MilitaryEquipItemRight", "BargQuasarNeonPrimaryItems.Preset_Quasar_NeonEquipItemRight", "BargQuasarPimpPrimaryItems.Preset_Quasar_PimpEquipItemRight", "BargNovaMilitaryPrimaryItems.Preset_Nova_MilitaryEquipItemRight", "BargNovaNeonPrimaryItems.Preset_Nova_NeonEquipItemRight", "BargNovaPimpPrimaryItems.Preset_Nova_PimpEquipItemRight", "BargOvertureMilitaryPrimaryItems.Preset_Overture_MilitaryEquipItemRight", "BargOvertureNeonPrimaryItems.Preset_Overture_NeonEquipItemRight", "BargOverturePimpPrimaryItems.Preset_Overture_PimpEquipItemRight", "BargMetelMilitaryPrimaryItems.Preset_Metel_MilitaryEquipItemRight", "BargMetelNeonPrimaryItems.Preset_Metel_NeonEquipItemRight", "BargMetelPimpPrimaryItems.Preset_Metel_PimpEquipItemRight", "BargBuryaMilitaryPrimaryItems.Preset_Burya_MilitaryEquipItemRight", "BargBuryaNeonPrimaryItems.Preset_Burya_NeonEquipItemRight", "BargBuryaPimpPrimaryItems.Preset_Burya_PimpEquipItemRight", "BargUnityMilitaryPrimaryItems.Preset_Unity_MilitaryEquipItemRight", "BargUnityNeonPrimaryItems.Preset_Unity_NeonEquipItemRight", "BargUnityPimpPrimaryItems.Preset_Unity_PimpEquipItemRight", "BargGritKrausserPrimaryItems.Preset_Grit_KrausserEquipItemRight", "BargGritMilitaryPrimaryItems.Preset_Grit_MilitaryEquipItemRight", "BargGritNeonPrimaryItems.Preset_Grit_NeonEquipItemRight", "BargGritPimpPrimaryItems.Preset_Grit_PimpEquipItemRight", "BargLexingtonKrausserPrimaryItems.Preset_Lexington_KrausserEquipItemRight", "BargLexingtonMilitaryPrimaryItems.Preset_Lexington_MilitaryEquipItemRight", "BargLexingtonNeonPrimaryItems.Preset_Lexington_NeonEquipItemRight", "BargLexingtonPimpPrimaryItems.Preset_Lexington_PimpEquipItemRight", "BargOmahaKrausserPrimaryItems.Preset_Omaha_KrausserEquipItemRight", "BargOmahaMilitaryPrimaryItems.Preset_Omaha_MilitaryEquipItemRight", "BargOmahaNeonPrimaryItems.Preset_Omaha_NeonEquipItemRight", "BargOmahaPimpPrimaryItems.Preset_Omaha_PimpEquipItemRight", "BargTiconMilitaryPrimaryItems.Preset_Ticon_MilitaryEquipItemRight", "BargTiconNeonPrimaryItems.Preset_Ticon_NeonEquipItemRight", "BargTiconPimpPrimaryItems.Preset_Ticon_PimpEquipItemRight", "BargNueMilitaryPrimaryItems.Preset_Nue_MilitaryEquipItemRight", "BargNueNeonPrimaryItems.Preset_Nue_NeonEquipItemRight", "BargNuePimpPrimaryItems.Preset_Nue_PimpEquipItemRight"}) do
		TweakDB:SetFlat(v..".equipCondition", {})
        TweakDB:SetFlat(v..".unequipCondition", {})
	end





    TweakDB:CloneRecord("BargSecondaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("BargSecondaryEquipItemPool.pool", {"BargQuasarMilitaryPrimaryEquipItemPoolEntry", "BargQuasarNeonPrimaryEquipItemPoolEntry", "BargQuasarPimpPrimaryPrimaryEquipItemPoolEntry", "BargNovaMilitaryPrimaryEquipItemPoolEntry", "BargNovaNeonPrimaryEquipItemPoolEntry", "BargNovaPimpPrimaryEquipItemPoolEntry", "BargOvertureMilitaryPrimaryEquipItemPoolEntry", "BargOvertureNeonPrimaryEquipItemPoolEntry", "BargOverturePimpPrimaryEquipItemPoolEntry", "BargMetelMilitaryPrimaryEquipItemPoolEntry", "BargMetelNeonPrimaryEquipItemPoolEntry", "BargMetelPimpPrimaryEquipItemPoolEntry", "BargBuryaMilitaryPrimaryEquipItemPoolEntry", "BargBuryaNeonPrimaryEquipItemPoolEntry", "BargBuryaPimpPrimaryEquipItemPoolEntry", "BargUnityMilitaryPrimaryEquipItemPoolEntry", "BargUnityNeonPrimaryEquipItemPoolEntry", "BargUnityPimpPrimaryEquipItemPoolEntry", "BargGritKrausserPrimaryEquipItemPoolEntry", "BargGritMilitaryPrimaryEquipItemPoolEntry", "BargGritNeonPrimaryEquipItemPoolEntry", "BargGritPimpPrimaryEquipItemPoolEntry", "BargLexingtonKrausserPrimaryEquipItemPoolEntry", "BargLexingtonMilitaryPrimaryEquipItemPoolEntry", "BargLexingtonNeonPrimaryEquipItemPoolEntry", "BargLexingtonPimpPrimaryEquipItemPoolEntry", "BargOmahaKrausserPrimaryEquipItemPoolEntry", "BargOmahaMilitaryPrimaryEquipItemPoolEntry", "BargOmahaNeonPrimaryEquipItemPoolEntry", "BargOmahaPimpPrimaryEquipItemPoolEntry", "BargTiconMilitaryPrimaryEquipItemPoolEntry", "BargTiconNeonPrimaryEquipItemPoolEntry", "BargTiconPimpPrimaryEquipItemPoolEntry", "BargNueMilitaryPrimaryEquipItemPoolEntry", "BargNueNeonPrimaryEquipItemPoolEntry", "BargNuePimpPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_dogtown_HMG_mb_inline0", "Character.prevention_dogtown_droid_ma_inline0", "Character.prevention_dogtown_martial_fmelee3_fists_ma_rare_inline0", "Character.prevention_dogtown_martial_hmelee3_fists_mb_elite_inline0", "Character.prevention_dogtown_rifle_ma_inline1", "Character.prevention_dogtown_rifle_wa_inline1", "Character.prevention_dogtown_saratoga_ma_inline1", "Character.prevention_dogtown_saratoga_wa_inline1", "Character.prevention_dogtown_shotgun_ma_inline0"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"BargSecondaryEquipItemPool"})
	end


    TweakDB:SetFlat("Character.prevention_dogtown_HMG_mb_inline7.item", "Items.Preset_Defender_Military")



    createEquipmentWeaponGrp("MilitechAjaxMilitaryPrimary", "Items.Preset_Ajax_Military", 0, 10, false)
    createEquipmentWeaponGrp("MilitechCopperheadMilitaryPrimary", "Items.Preset_Copperhead_Military", 0, 10, false)
    createEquipmentWeaponGrp("MilitechKyubiMilitaryPrimary", "Items.Preset_Kyubi_Military", 0, 5, false)
    createEquipmentWeaponGrp("MilitechKyubiNUSAPrimary", "Items.Preset_Kyubi_Nusa", 0, 5, false)

	TweakDB:CloneRecord("MilitechRiflePrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MilitechRiflePrimaryEquipItemPool.pool", {"MilitechAjaxMilitaryPrimaryEquipItemPoolEntry", "MilitechCopperheadMilitaryPrimaryEquipItemPoolEntry", "MilitechKyubiMilitaryPrimaryEquipItemPoolEntry", "MilitechKyubiNUSAPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_militech_rifle_ma_inline2"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"MilitechRiflePrimaryEquipItemPool"})
	end

    TweakDB:SetFlat("Character.prevention_militech_HMG_mb_inline3.item", "Items.Preset_HMG_Military")



    createEquipmentWeaponGrp("MilitechTacticianMilitaryPrimary", "Items.Preset_Tactician_Military", 0, 10, false)
    createEquipmentWeaponGrp("MilitechCrusherMilitaryPrimary", "Items.Preset_Crusher_Military", 0, 10, false)
    createEquipmentWeaponGrp("MilitechPozharMilitaryPrimary", "Items.Preset_Pozhar_Military", 0, 10, false)
    createEquipmentWeaponGrp("MilitechSataraMilitaryPrimary", "NUSASataraWeapon", 0, 10, false)

	TweakDB:CloneRecord("MilitechShotgunPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MilitechShotgunPrimaryEquipItemPool.pool", {"MilitechTacticianMilitaryPrimaryEquipItemPoolEntry", "MilitechCrusherMilitaryPrimaryEquipItemPoolEntry", "MilitechPozharMilitaryPrimaryEquipItemPoolEntry", "MilitechSataraMilitaryPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_militech_shotgun_mah_inline2"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"MilitechShotgunPrimaryEquipItemPool"})
	end


    createEquipmentWeaponGrp("MilitechAchillesMilitaryPrimary", "Items.Preset_Achilles_Military", 0, 5, false)
    createEquipmentWeaponGrp("MilitechAchillesBlackPrimary", "Items.Preset_Achilles_Nusa_Black", 0, 5, false)
    createEquipmentWeaponGrp("MilitechAchillesWhitePrimary", "Items.Preset_Achilles_Nusa_White", 0, 5, false)
    createEquipmentWeaponGrp("MilitechSor22MilitaryPrimary", "Items.Preset_Sor22_Military", 0, 5, false)
    createEquipmentWeaponGrp("MilitechSor22BlackPrimary", "Items.Preset_Sor22_Nusa_Black", 0, 5, false)
    createEquipmentWeaponGrp("MilitechSor22WhitePrimary", "Items.Preset_Sor22_Nusa_White", 0, 5, false)
    createEquipmentWeaponGrp("MilitechKolacPrimary", "Items.Preset_Kolac_Default", 0, 10, false)
    createEquipmentWeaponGrp("MilitechRasetsuPrimary", "Items.Base_Rasetsu", 0, 10, false)
    createEquipmentWeaponGrp("MilitechOspreyPrimary", "WorkingOspreyWeaponItem", 0, 10, false)
    createEquipmentWeaponGrp("MilitechNekomataPrimary", "Items.Preset_Nekomata_Military", 0, 10, false)
    createEquipmentWeaponGrp("MilitechAuthorityPrimary", "Items.Preset_Authority_Default", 0, 10, false)

    TweakDB:CloneRecord("MilitechSniperPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MilitechSniperPrimaryEquipItemPool.pool", {"MilitechAchillesMilitaryPrimaryEquipItemPoolEntry", "MilitechAchillesBlackPrimaryEquipItemPoolEntry", "MilitechAchillesWhitePrimaryEquipItemPoolEntry", "MilitechSor22MilitaryPrimaryEquipItemPoolEntry", "MilitechSor22BlackPrimaryEquipItemPoolEntry", "MilitechSor22WhitePrimaryEquipItemPoolEntry", "MilitechKolacPrimaryEquipItemPoolEntry", "MilitechRasetsuPrimaryEquipItemPoolEntry", "MilitechOspreyPrimaryEquipItemPoolEntry", "MilitechNekomataPrimaryEquipItemPoolEntry", "MilitechAuthorityPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_militech_sniper_ma_inline2"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"MilitechSniperPrimaryEquipItemPool"})
	end



    TweakDB:CloneRecord("MilitechSecondaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MilitechSecondaryEquipItemPool.pool", {"BargQuasarMilitaryPrimaryEquipItemPoolEntry", "BargOvertureMilitaryPrimaryEquipItemPoolEntry", "BargMetelMilitaryPrimaryEquipItemPoolEntry", "BargBuryaMilitaryPrimaryEquipItemPoolEntry", "BargLexingtonMilitaryPrimaryEquipItemPoolEntry", "BargOmahaMilitaryPrimaryEquipItemPoolEntry", "BargTiconMilitaryPrimaryEquipItemPoolEntry", "BargNueMilitaryPrimaryEquipItemPoolEntry"})
    for i,v in ipairs({"Character.prevention_militech_HMG_mb_inline4", "Character.prevention_militech_rifle_ma_inline0", "Character.prevention_militech_shotgun_mah_inline4", "Character.prevention_militech_smg_ma_inline0", "Character.prevention_militech_sniper_ma_inline0"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"MilitechSecondaryEquipItemPool"})
	end

    TweakDB:SetFlat("Character.prevention_militech_sniper_ma.visualTags", {"Militech", "Recon"})





    --Character.q306_black_ops_shotgunner Character.q306_black_ops_ma Character.q306_black_ops_sniper Character.q306_black_ops_fast_ranged(equip) Character.q306_black_ops_wa 
    
    --Character.q306_black_ops_ma_fast_spotter Character.q306_black_ops_shotgunner_2(cannot use for exo)
    --set snipers to elite, same with shotguner and spotters and netrunner
    --or maybe set all elites
    --some shotgunners seem to be using rifle

    --Character.q306_black_ops_netrunner Character.q306_black_ops_HMG

    --add armor penetrate to enemy achilles

    --Character.q306_black_ops_shotgunner_fast_spotter Character.q306_black_ops_shotgunner_2 Character.q306_black_ops_ma_fast_spotter


    --spotters are those looking through vents

    --TweakDB:SetFlat("Character.q306_black_ops_fast_ranged.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q306_black_ops_ma.rarity", "NPCRarity.Rare")
    --TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q306_black_ops_netrunner.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner.rarity", "NPCRarity.Elite")
    
    --TweakDB:SetFlat("Character.q306_black_ops_shotgunner_fast_spotter.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q306_black_ops_sniper.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q306_black_ops_wa.rarity", "NPCRarity.Rare")

    cloneNPCDataMinimalWithoutVisual("Character.arasaka_ninja_fmelee3_mantis_ma_elite", "Character.q306_black_ops_shotgunner_fast_spotter")
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_fast_spotter.archetypeData", "NUSAFastMeleeArchetypeData")
    cloneNPCDataMinimalWithoutVisual("Character.arasaka_ninja_fmelee3_mantis_ma_elite", "Character.q306_black_ops_ma_fast_spotter")
    TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.archetypeData", "NUSAFastMeleeArchetypeData")

    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_2.archetypeData", "NUSAFastTechieArchetypeData")

	--setMiliCentaur("Character.q306_black_ops_ma_fast_spotter")
    --TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.displayName", LocKey(82594ull))
    --TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.fullDisplayName", LocKey(82594ull))
    --TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.affiliation", "Factions.Classified")
    TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.displayName", LocKey(82598ull))--mantis operative
    TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.fullDisplayName", LocKey(82598ull))

    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_2.displayName", LocKey(22671ull))--field engineer
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_2.fullDisplayName", LocKey(22671ull))
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_fast_spotter.displayName", LocKey(82598ull))--mantis operative
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_fast_spotter.fullDisplayName", LocKey(82598ull))

    --crusher tactician customsatara8rounds customtestera kyubi hercules ajax defender achilles sor22 kolac rasetsu


    TweakDB:CloneRecord("NUSASataraNPCRPGData", "Items.Base_Satara_NPC_Data")
	addToList("NUSASataraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Technical_Stats_inline2")
	addToList("NUSASataraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Technical_Stats_inline2")
	addToList("NUSASataraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Damage_Stats_inline0")
	addToList("NUSASataraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Damage_Stats_inline0")

    TweakDB:CloneRecord("NUSASataraWeapon", "Items.Preset_Satara_Military")
    TweakDB:SetFlat("NUSASataraWeapon.npcRPGData", "NUSASataraNPCRPGData")


    TweakDB:CloneRecord("NUSATesteraNPCRPGData", "Items.Base_Testera_inline9")
	addToList("NUSATesteraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Technical_Stats_inline2")
	addToList("NUSATesteraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Technical_Stats_inline2")
	addToList("NUSATesteraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Damage_Stats_inline0")
	addToList("NUSATesteraNPCRPGData.statModifiers", "Items.Base_Satara_NPC_Damage_Stats_inline0")

    TweakDB:CloneRecord("NUSATesteraWeapon", "Items.Preset_Testera_Military")
    TweakDB:SetFlat("NUSATesteraWeapon.npcRPGData", "NUSATesteraNPCRPGData")

    createEquipmentWeaponGrp("NUSAShotgunnerCrusherPrimary", "Items.Preset_Crusher_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSAShotgunnerTacticianPrimary", "Items.Preset_Tactician_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSAShotgunnerSataraPrimary", "NUSASataraWeapon", 0, 5, false)
    createEquipmentWeaponGrp("NUSAShotgunnerTesteraPrimary", "NUSATesteraWeapon", 0, 5, false)


    TweakDB:SetFlat("NUSAShotgunnerCrusherPrimaryEquipItemPool.pool", {"NUSAShotgunnerCrusherPrimaryEquipItemPoolEntry", "NUSAShotgunnerTacticianPrimaryEquipItemPoolEntry", "NUSAShotgunnerSataraPrimaryEquipItemPoolEntry", "NUSAShotgunnerTesteraPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_shotgunner.primaryEquipment", "NUSAShotgunnerCrusherPrimaryEquipGrp")




    createEquipmentWeaponGrp("NUSARangedKyubiNUSAPrimary", "Items.Preset_Kyubi_Nusa", 0, 5, false)
    createEquipmentWeaponGrp("NUSARangedKyubiMiliPrimary", "Items.Preset_Kyubi_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSARangedAjaxPrimary", "Items.Preset_Ajax_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSARangedDianPrimary", "Items.Preset_Dian_Military", 0, 5, false)

    TweakDB:SetFlat("NUSARangedKyubiNUSAPrimaryEquipItemPool.pool", {"NUSARangedKyubiNUSAPrimaryEquipItemPoolEntry", "NUSARangedKyubiMiliPrimaryEquipItemPoolEntry", "NUSARangedAjaxPrimaryEquipItemPoolEntry", "NUSARangedDianPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_ma.primaryEquipment", "NUSARangedKyubiNUSAPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q306_black_ops_wa.primaryEquipment", "NUSARangedKyubiNUSAPrimaryEquipGrp")


    --burya metel ticon omaha

    createEquipmentWeaponGrp("NUSANetrunnerBuryaPrimary", "Items.Preset_Burya_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSANetrunnerMetelPrimary", "Items.Preset_Metel_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSANetrunnerTiconPrimary", "Items.Preset_Ticon_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSANetrunnerOmahaPrimary", "Items.Preset_Omaha_Military", 0, 5, false)

    TweakDB:SetFlat("NUSANetrunnerBuryaPrimaryEquipItemPool.pool", {"NUSANetrunnerBuryaPrimaryEquipItemPoolEntry", "NUSANetrunnerMetelPrimaryEquipItemPoolEntry", "NUSANetrunnerTiconPrimaryEquipItemPoolEntry", "NUSANetrunnerOmahaPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_netrunner.primaryEquipment", "NUSANetrunnerBuryaPrimaryEquipGrp")



    TweakDB:CloneRecord("Borg4aWeapon", "Items.Preset_Borg4a_HauntedGun")
	TweakDB:SetFlat("Borg4aWeapon.npcRPGData", "Borg4aNPCRPGData")
	TweakDB:SetFlat("Borg4aWeapon.audioName", "wea_set_warden")
    addToList("Borg4aWeapon.statModifiers", "Items.Base_Satara_NPC_Damage_Stats_inline0")


    --hercules authority 

    createEquipmentWeaponGrp("NUSATechieHerculesPrimary", "Items.Preset_Hercules_Default", 0, 5, false)
    createEquipmentWeaponGrp("NUSATechieAuthorityPrimary", "Items.Preset_Authority_Default", 0, 5, false)
    createEquipmentWeaponGrp("NUSATechieBorg4aPrimary", "Borg4aWeapon", 0, 5, false)

    TweakDB:SetFlat("NUSATechieHerculesPrimaryEquipItemPool.pool", {"NUSATechieHerculesPrimaryEquipItemPoolEntry", "NUSATechieAuthorityPrimaryEquipItemPoolEntry", "NUSATechieBorg4aPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_2.primaryEquipment", "NUSATechieHerculesPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_2.dropsWeaponOnDeath", false)



    createEquipmentWeaponGrp("NUSAHeavyDefenderPrimary", "Items.Preset_Defender_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSAHeavyHMGPrimary", "Items.Preset_HMG_Military", 0, 5, false)

    TweakDB:SetFlat("NUSAHeavyDefenderPrimaryEquipItemPool.pool", {"NUSAHeavyDefenderPrimaryEquipItemPoolEntry", "NUSAHeavyHMGPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_HMG.primaryEquipment", "NUSAHeavyDefenderPrimaryEquipGrp")


    --achilles sor22 kolac rasetsu

    createEquipmentWeaponGrp("NUSASniperAchillesBlackPrimary", "Items.Preset_Achilles_Nusa_Black", 0, 5, false)
    createEquipmentWeaponGrp("NUSASniperAchillesWhitePrimary", "Items.Preset_Achilles_Nusa_White", 0, 5, false)
    createEquipmentWeaponGrp("NUSASniperSorBlackPrimary", "Items.Preset_Sor22_Nusa_Black", 0, 5, false)
    createEquipmentWeaponGrp("NUSASniperSorWhitePrimary", "Items.Preset_Sor22_Nusa_White", 0, 5, false)
    createEquipmentWeaponGrp("NUSASniperKolacPrimary", "Items.Preset_Kolac_Default", 0, 5, false)
    createEquipmentWeaponGrp("NUSASniperRasetsuPrimary", "Items.Base_Rasetsu", 0, 5, false)

    TweakDB:SetFlat("NUSASniperAchillesBlackPrimaryEquipItemPool.pool", {"NUSASniperAchillesBlackPrimaryEquipItemPoolEntry", "NUSASniperAchillesWhitePrimaryEquipItemPoolEntry", "NUSASniperSorBlackPrimaryEquipItemPoolEntry", "NUSASniperSorWhitePrimaryEquipItemPoolEntry", "NUSASniperKolacPrimaryEquipItemPoolEntry", "NUSASniperRasetsuPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_sniper.primaryEquipment", "NUSASniperAchillesBlackPrimaryEquipGrp")





    createEquipmentWeaponGrp("NUSACommandoAjaxPrimary", "Items.Preset_Ajax_Military", 0, 5, false)
    createEquipmentWeaponGrp("NUSACommandoDianPrimary", "Items.Preset_Dian_Trauma", 0, 5, false)
    createEquipmentWeaponGrp("NUSACommandoHerculesPrimary", "Items.Preset_Hercules_Default", 0, 5, false)
    createEquipmentWeaponGrp("NUSACommandoBorg4aPrimary", "Borg4aWeapon", 0, 5, false)

    TweakDB:SetFlat("NUSACommandoAjaxPrimaryEquipItemPool.pool", {"NUSACommandoAjaxPrimaryEquipItemPoolEntry", "NUSACommandoDianPrimaryEquipItemPoolEntry", "NUSACommandoHerculesPrimaryEquipItemPoolEntry", "NUSACommandoBorg4aPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q306_black_ops_fast_ranged.primaryEquipment", "NUSACommandoAjaxPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q306_black_ops_fast_ranged.dropsWeaponOnDeath", false)

    for i,v in ipairs({"Character.q306_black_ops_HMG", "Character.q306_black_ops_fast_ranged", "Character.q306_black_ops_ma", "Character.q306_black_ops_netrunner", "Character.q306_black_ops_shotgunner", "Character.q306_black_ops_sniper", "Character.q306_black_ops_wa"}) do
        TweakDB:SetFlat(v..".skipDisplayArchetype", false)
    end



    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_2.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q306_black_ops_fast_ranged.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.q306_black_ops_ma_fast_spotter.rarity", "NPCRarity.Boss")
    TweakDB:SetFlat("Character.q306_black_ops_shotgunner_fast_spotter.rarity", "NPCRarity.Boss")

    addToList("Character.q306_black_ops_ma_fast_spotter.tags", "Cyberpsycho")
    addToList("Character.q306_black_ops_shotgunner_fast_spotter.tags", "Cyberpsycho")
    TweakDB:SetFlat("Character.q306_black_ops_HMG.rarity", "NPCRarity.Elite")

    addToList("Character.q306_black_ops_fast_ranged.tags", "MaxTac_NotPrevention")
    addToList("Character.q306_black_ops_fast_ranged.tags", "Cyberpsycho")

    addToList("Character.q306_black_ops_ma_fast_spotter.tags", "MaxTac_NotPrevention")
    addToList("Character.q306_black_ops_shotgunner_fast_spotter.tags", "MaxTac_NotPrevention")

    TweakDB:SetFlat("Character.q306_black_ops_fast_ranged.displayName", LocKey(22682ull))--tactical officer
    TweakDB:SetFlat("Character.q306_black_ops_fast_ranged.fullDisplayName", LocKey(22682ull))


    --Character.dtn_tyger_claws_gangster1_melee1_knife_wa Character.dtn_tyger_claws_gangster1_ranged1_copperhead_ma(t2) Character.dtn_tyger_claws_gangster1_ranged1_nue_ma Character.dtn_tyger_claws_biker1_melee1_fists_ma(adept) Character.dtn_tyger_claws_biker1_ranged1_nue_ma(replace with t2)

    cloneNPCDataMinimal("Character.tyger_claws_kunoichi_fmelee3_fists_ma_elite", "Character.dtn_tyger_claws_gangster1_melee1_knife_wa")
    cloneNPCDataMinimal("Character.tyger_claws_martial_hmelee2_hammer_mb", "Character.dtn_tyger_claws_gangster1_ranged1_copperhead_ma")
    cloneNPCDataMinimal("Character.jpn_03_tyger_guard_emon_fujikura", "Character.dtn_tyger_claws_gangster1_ranged1_nue_ma")

    cloneNPCDataMinimal("Character.tyger_claws_martial_fmelee2_katana_ma_rare", "Character.dtn_tyger_claws_biker1_melee1_fists_ma")
    cloneNPCDataMinimal("Character.tyger_claws_biker2_ranged2_shingen_ma", "Character.dtn_tyger_claws_biker1_ranged1_nue_ma")








    cloneNPCDataMinimalWithoutVisual("Character.voodooboys_grunt1_fmelee2rare_baseball_ma_rare", "Character.mq304_vdb_01_ma")
    --cloneNPCDataMinimal("Character.kurtz_soldier1_ranged2_rifle_ma", "Character.mq304_vdb_02_wa")
    cloneNPCDataMinimal("Character.ep1_voodooboys_grunt1coat_shotgun2_palica_ma", "Character.mq304_vdb_03_ma")
    cloneNPCDataMinimal("Character.ep1_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.mq304_vdb_04_wa")
    --cloneNPCDataMinimal("Character.kurtz_soldier1_ranged2_rifle_ma", "Character.mq304_vdb_05_wa")
    cloneNPCDataMinimal("Character.ep1_voodooboys_grunt3coat_shotgun3_zhuo_ma_elite", "Character.mq304_vdb_06_ma")



    setArchetypeData("Bennett", {"Sandy2AbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionTankyAbilityGrp", "SubdermalHeavyAbilityGrp", "FragNadeAbilityGrp", "SmokeNadeAbilityGrp", "BleedImmuneAbilityGrp", "BleedAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"BargResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.mq304_bennett.archetypeData", "BennettArchetypeData")
    TweakDB:SetFlat("Character.mq304_bennett.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsAggressive"})
    --TweakDB:SetFlat("Character.mq304_bennett_inline16.value", 0)--default 70 and 40
    --TweakDB:SetFlat("Character.mq304_bennett_inline19.value", 0)


    cloneNPCDataMinimalWithoutVisual("Character.kurtz_soldier2_shotgun2_shotgun_ma_rare", "Character.mq304_bennett_driver")









    cloneNPCDataMinimalWithoutVisual("Character.prevention_enforcer_rifle_ma", "Character.q305_ncpd_ma")
    TweakDB:SetFlat("Character.q305_ncpd_ma.actionMap", "Corpo.Map")
    --NCPDLvl3Enforcer1Hash = ToCName{ hash_lo = 0x5912DB20, hash_hi = 0xCA13D007 }
    --TweakDB:SetFlat("Character.q305_ncpd_ma.appearanceName", NCPDLvl3Enforcer1Hash)

	--setArchetypeData("Q305NCPDSwatRifle", {"T2RangedAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalMedAbilityGrp", "SmokeNadeAbilityGrp", "TacticalAbilityGrp", "BleedImmuneAbilityGrp"}, {}, {"NCPDResStatModifierGrp", "NCPDHackResStatModifierGrp"}, "NCPDSwatRifleArchetypeType", true)
    --TweakDB:SetFlat("Character.q305_ncpd_ma.archetypeData", "Q305NCPDSwatRifleArchetypeData")

    cloneNPCDataMinimalWithoutVisual("Character.ncpd_police_ranged2_copperhead_wa", "Character.q305_ncpd_wa")


    createEquipmentWeaponGrp("NCPDOfficerMasamunePrimary", "Items.Preset_Masamune_Military", 0, 5, false)
    createEquipmentWeaponGrp("NCPDOfficerAjaxPrimary", "Items.Preset_Ajax_Military", 0, 5, false)
    createEquipmentWeaponGrp("NCPDOfficerAchillesPrimary", "Items.Preset_Achilles_Military", 0, 5, false)

    TweakDB:SetFlat("NCPDOfficerMasamunePrimaryEquipItemPool.pool", {"NCPDOfficerMasamunePrimaryEquipItemPoolEntry", "NCPDOfficerAjaxPrimaryEquipItemPoolEntry", "NCPDOfficerAchillesPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q305_ncpd_ma.primaryEquipment", "NCPDOfficerMasamunePrimaryEquipGrp")
    TweakDB:SetFlat("Character.q305_ncpd_wa.primaryEquipment", "NCPDOfficerMasamunePrimaryEquipGrp")

    TweakDB:SetFlat("Character.q305_ncpd_ma.rarity", "NPCRarity.Elite")
    TweakDB:SetFlat("Character.q305_ncpd_ma.rarity", "NPCRarity.Elite")



    TweakDB:SetFlat("Character.q305_maxtac_droid.affiliation", "Factions.NCPD")
    TweakDB:SetFlat("Character.q305_maxtac_droid.archetypeData", "MaxtacAndroidArchetypeData")
    TweakDB:SetFlat("Character.q305_maxtac_droid.archetypeName", "humanoid")
    TweakDB:SetFlat("Character.q305_maxtac_droid.abilities", {"Ability.IsMechanical", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.HasDodge", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanTaunt", "Ability.CanCloseCombat"})
    TweakDB:SetFlat("Character.q305_maxtac_droid.rarity", "NPCRarity.Elite")


    createEquipmentWeaponGrp("MaxtacDroidMasamunePrimary", "Items.Preset_Masamune_Military", 0, 5, false)
    createEquipmentWeaponGrp("MaxtacDroidNekomataPrimary", "Items.Preset_Ajax_Military", 0, 5, false)

    TweakDB:SetFlat("MaxtacDroidMasamunePrimaryEquipItemPool.pool", {"MaxtacDroidMasamunePrimaryEquipItemPoolEntry", "MaxtacDroidNekomataPrimaryEquipItemPoolEntry"})

    TweakDB:SetFlat("Character.q305_maxtac_droid.primaryEquipment", "MaxtacDroidMasamunePrimaryEquipGrp")


    for i,v in ipairs({"Character.q305_maxtac_miniboss_frifle_wa_inline0", "Character.q305_maxtac_miniboss_fshotgun_mb_inline2", "Character.q305_maxtac_miniboss_fshotgun_mb_inline3", "Character.q305_maxtac_miniboss_netrunner_ma_inline0", "Character.q305_maxtac_miniboss_sniper_ma_inline1"}) do
        TweakDB:SetFlat(v..".value", 1)

    end


    createEquipmentWeaponGrp("MaxtacNetrunnerTiconPrimary", "Items.Preset_Ticon_Pimp", 0, 5, false)
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_netrunner_ma.primaryEquipment", "MaxtacNetrunnerTiconPrimaryEquipGrp")



	TweakDB:CloneRecord("MaxtacCrusherNPCRPGData", "Items.Base_Crusher_inline9")

	createConstantStatModifier("MaxtacCrusherShootOffset", "Additive", "BaseStats.ShootingOffsetAI", -0.5)
	createConstantStatModifier("MaxtacCrusherSpreadMax", "Additive", "BaseStats.SpreadMaxAI", -8)
	createConstantStatModifier("MaxtacCrusherERange", "Additive", "BaseStats.EffectiveRange", 10)
	createConstantStatModifier("MaxtacCrusherMRange", "Additive", "BaseStats.MaximumRange", 10)
	createConstantStatModifier("MaxtacCrusherDamage", "Multiplier", "BaseStats.NPCDamage", 2)

    addToList("MaxtacCrusherNPCRPGData.statModifiers", "MaxtacCrusherShootOffset")
    addToList("MaxtacCrusherNPCRPGData.statModifiers", "MaxtacCrusherSpreadMax")
    addToList("MaxtacCrusherNPCRPGData.statModifiers", "MaxtacCrusherERange")
    addToList("MaxtacCrusherNPCRPGData.statModifiers", "MaxtacCrusherMRange")
    addToList("MaxtacCrusherNPCRPGData.statModifiers", "MaxtacCrusherDamage")
    

	TweakDB:CloneRecord("MaxtacCrusherWeapon", "Items.Preset_Crusher_Pimp")
    TweakDB:SetFlat("MaxtacCrusherWeapon.npcRPGData", "MaxtacCrusherNPCRPGData")

    createEquipmentWeaponGrp("MaxtacHeavyCrusherPrimary", "MaxtacCrusherWeapon", 0, 5, false)
    createEquipmentWeaponGrp("MaxtacHeavyDefenderPrimary", "Items.Preset_Defender_Kurt", 0, 5, false)

	createCondition("MaxtacEquipShortRangedPrimaryOR", {"Condition.TargetBelow15m", "Condition.NotCombatTarget"}, true)
	createCondition("MaxtacUnequipShortRangedPrimaryAND", {"Condition.TargetAbove30m"}, false)

	createCondition("MaxtacEquipLongRangedPrimaryAND", {"Condition.TargetAbove30m", "Condition.NotInStatesShoot", "Condition.NotInStatesEquip"}, false)
	createCondition("MaxtacUnequipLongRangedPrimaryAND", {"Condition.TargetBelow15m"}, false)

    --Character.militech_recon_sniper2_achilles_ma_rare

    --Character.MilitechSecondaryHandgunPool Character.MilitechSniperRiflePool

    --WeaponConditions.SniperPrimaryWeaponSniperEquipCondition WeaponConditions.SniperPrimaryWeaponSniperUnequipCondition

    TweakDB:SetFlat("Character.q305_maxtac_miniboss_fshotgun_mb.primaryEquipment", "MaxtacHeavyCrusherPrimaryEquipGrp")


    --get rid of weapon swap because they dont equip weapon during cutscene
    --[[
    TweakDB:SetFlat("MaxtacHeavyDefenderPrimaryItems.Preset_Defender_KurtEquipItemRight.equipCondition", {"WeaponConditions.SniperPrimaryWeaponSniperEquipCondition"})
    TweakDB:SetFlat("MaxtacHeavyDefenderPrimaryItems.Preset_Defender_KurtEquipItemRight.unequipCondition", {"WeaponConditions.SniperPrimaryWeaponSniperUnequipCondition"})

    TweakDB:SetFlat("MaxtacHeavyCrusherPrimaryMaxtacCrusherWeaponEquipItemRight.equipCondition", {})
    TweakDB:SetFlat("MaxtacHeavyCrusherPrimaryMaxtacCrusherWeaponEquipItemRight.unequipCondition", {})

    TweakDB:SetFlat("Character.q305_maxtac_miniboss_fshotgun_mb.primaryEquipment", "MaxtacHeavyDefenderPrimaryEquipGrp")
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_fshotgun_mb.secondaryEquipment", "MaxtacHeavyCrusherPrimaryEquipGrp")




    --TweakDB:SetFlat("MaxtacHeavyCrusherPrimaryMaxtacCrusherWeaponEquipItemRight.equipCondition", {"MaxtacEquipShortRangedPrimaryORCOND"})
    TweakDB:SetFlat("MaxtacHeavyCrusherPrimaryMaxtacCrusherWeaponEquipItemRight.unequipCondition", {"MaxtacUnequipShortRangedPrimaryANDCOND"})



    TweakDB:SetFlat("MaxtacHeavyDefenderPrimaryItems.Preset_Defender_KurtEquipItemRight.equipCondition", {"MaxtacEquipLongRangedPrimaryANDCOND"})
    TweakDB:SetFlat("MaxtacHeavyDefenderPrimaryItems.Preset_Defender_KurtEquipItemRight.unequipCondition", {"MaxtacUnequipLongRangedPrimaryANDCOND"})

    --TweakDB:SetFlat("MaxtacHeavyCrusherPrimaryEquipGrp.equipmentItems", {"MaxtacCrusherWeaponMaxtacHeavyCrusherPrimaryMaxtacCrusherWeaponEquipItemRightDefault", "MaxtacHeavyCrusherPrimaryMaxtacCrusherWeaponEquipItemRight", "MaxtacHeavyDefenderPrimaryItems.Preset_Defender_KurtEquipItemRight"})

    TweakDB:SetFlat("Character.q305_maxtac_miniboss_fshotgun_mb.secondaryEquipment", "MaxtacHeavyDefenderPrimaryEquipGrp")

    ]]--



    


    createEquipmentWeaponGrp("MaxtacRangedAjaxPrimary", "Items.Preset_Ajax_Neon", 0, 5, false)
    createEquipmentWeaponGrp("MaxtacRangedAuthorityPrimary", "Items.Preset_Authority_Default", 0, 5, false)
    createEquipmentWeaponGrp("MaxtacRangedNekomataPrimary", "Items.Preset_Nekomata_Neon", 0, 5, false)

    TweakDB:SetFlat("Character.q305_maxtac_miniboss_frifle_wa.primaryEquipment", "MaxtacRangedAjaxPrimaryEquipGrp")


    --[[

    TweakDB:SetFlat("Character.q305_maxtac_miniboss_frifle_wa.secondaryEquipment", "MaxtacRangedAjaxPrimaryPrimaryEquipGrp")

    TweakDB:SetFlat("MaxtacRangedNekomataPrimaryItems.Preset_Nekomata_NeonEquipItemRight.equipCondition", {"WeaponConditions.SniperPrimaryWeaponSniperEquipCondition"})
    TweakDB:SetFlat("MaxtacRangedNekomataPrimaryItems.Preset_Nekomata_NeonEquipItemRight.unequipCondition", {"WeaponConditions.SniperPrimaryWeaponSniperUnequipCondition"})

    TweakDB:SetFlat("MaxtacRangedAjaxPrimaryItems.Preset_Ajax_NeonEquipItemRight.equipCondition", {})
    TweakDB:SetFlat("MaxtacRangedAjaxPrimaryItems.Preset_Ajax_NeonEquipItemRight.unequipCondition", {})

    --TweakDB:SetFlat("MaxtacRangedAjaxPrimaryItems.Preset_Ajax_NeonEquipItemRight.equipCondition", {"MaxtacEquipShortRangedPrimaryORCOND"})
    TweakDB:SetFlat("MaxtacRangedAjaxPrimaryItems.Preset_Ajax_NeonEquipItemRight.unequipCondition", {"MaxtacUnequipShortRangedPrimaryANDCOND"})

    TweakDB:SetFlat("MaxtacRangedAuthorityPrimaryPreset_Authority_DefaultEquipItemRight.equipCondition", {"MaxtacEquipLongRangedPrimaryANDCOND"})
    TweakDB:SetFlat("MaxtacRangedAuthorityPrimaryPreset_Authority_DefaultEquipItemRight.unequipCondition", {"MaxtacUnequipLongRangedPrimaryANDCOND"})

    --TweakDB:SetFlat("MaxtacRangedAjaxPrimaryEquipGrp.equipmentItems", {"MaxtacRangedAjaxPrimaryItems.Preset_Ajax_NeonEquipItemRight", "MaxtacRangedAuthorityPrimaryPreset_Authority_DefaultEquipItemRight"})

    TweakDB:SetFlat("Character.q305_maxtac_miniboss_frifle_wa.secondaryEquipment", "MaxtacRangedAuthorityPrimaryEquipGrp")

    ]]--





	createStatusEffect("ReedStun", "BaseStatusEffect.StunReed", {}, {}, 5, {}, {}, {})
    TweakDB:SetFlat("BaseStatusEffect.StunReed.duration", "ReedStundurationStatGrp")

    TweakDB:SetFlat("Attacks.ReedSniperAttackProjectile_inline0.value", 1)
    TweakDB:SetFlat("Attacks.ReedSniperAttack_inline0.value", 1)
    
    TweakDB:SetFlat("Character.Maxtac_miniboss_ModGroup_inline3.value", 0.3)--explosion reduction default 0.85


    --TweakDB:SetFlat("ShootActions.SniperShootReed_inline9.delay", 15)
    TweakDB:SetFlat("BaseStatusEffect.EMPReed_inline14.value", 5)




	--add exotic weapons and smg to maxtac sniper pool

	createEquipmentWeaponGrp("MaxtacSniperNekoMilitaryPrimary", "Items.Preset_Nekomata_Military", 0, 10, false)
	createEquipmentWeaponGrp("MaxtacSniperNekoNeonPrimary", "Items.Preset_Nekomata_Neon", 0, 10, false)
	createEquipmentWeaponGrp("MaxtacSniperNekoPimpPrimary", "Items.Preset_Nekomata_Pimp", 0, 10, false)
	createEquipmentWeaponGrp("MaxtacSniperKolacPrimary", "Items.Preset_Kolac_Default", 0, 10, false)
	createEquipmentWeaponGrp("MaxtacSniperAuthorityPrimary", "Items.Preset_Authority_Default", 0, 10, false)
	createEquipmentWeaponGrp("MaxtacSniperOspreyPrimary", "WorkingOspreyWeaponItem", 0, 10, false)
	createEquipmentWeaponGrp("MaxtacSniperRasetsuPrimary", "Items.Base_Rasetsu", 0, 10, false)


	TweakDB:CloneRecord("MaxtacSniperPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MaxtacSniperPrimaryEquipItemPool.pool", {"MaxtacSniperNekoMilitaryPrimaryEquipItemPoolEntry", "MaxtacSniperNekoNeonPrimaryEquipItemPoolEntry", "MaxtacSniperNekoPimpPrimaryEquipItemPoolEntry", "MaxtacSniperKolacPrimaryEquipItemPoolEntry", "MaxtacSniperAuthorityPrimaryEquipItemPoolEntry", "MaxtacSniperOspreyPrimaryEquipItemPoolEntry", "MaxtacSniperRasetsuPrimaryEquipItemPoolEntry"})
	TweakDB:SetFlat("Character.maxtac_av_sniper_wa_elite_2nd_wave_inline0.equipmentItems", {"MaxtacSniperPrimaryEquipItemPool"})
	TweakDB:SetFlat("Character.maxtac_av_sniper_wa_elite_inline13.equipmentItems", {"MaxtacSniperPrimaryEquipItemPool"})
	TweakDB:SetFlat("Character.maxtac_sniper_wa_elite_inline0.equipmentItems", {"MaxtacSniperPrimaryEquipItemPool"})


	for i,v in ipairs({"MaxtacSniperNekoMilitaryPrimaryItems.Preset_Nekomata_MilitaryEquipItemRight", "MaxtacSniperNekoNeonPrimaryItems.Preset_Nekomata_NeonEquipItemRight", "MaxtacSniperNekoPimpPrimaryItems.Preset_Nekomata_PimpEquipItemRight", "MaxtacSniperKolacPrimaryItems.Preset_Kolac_DefaultEquipItemRight", "MaxtacSniperAuthorityPrimaryItems.Preset_Authority_DefaultEquipItemRight", "MaxtacSniperOspreyPrimaryWorkingOspreyWeaponItemEquipItemRight", "MaxtacSniperRasetsuPrimaryItems.Base_RasetsuEquipItemRight"}) do
		--TweakDB:SetFlat(v..".equipCondition", {"WeaponConditions.SniperPrimaryWeaponSniperEquipCondition"})
        --TweakDB:SetFlat(v..".unequipCondition", {"WeaponConditions.SniperPrimaryWeaponSniperUnequipCondition"})
	end



    createEquipmentWeaponGrp("MaxtacNetrunnerOmahaMilitaryPrimary", "Items.Preset_Omaha_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerTiconMilitaryPrimary", "Items.Preset_Ticon_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerTiconNeonPrimary", "Items.Preset_Ticon_Neon", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerTiconPimpPrimary", "Items.Preset_Ticon_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerBuryaMilitaryPrimary", "Items.Preset_Burya_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerOvertureMilitaryPrimary", "Items.Preset_Overture_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerMetelMilitaryPrimary", "Items.Preset_Metel_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerMetelNeonPrimary", "Items.Preset_Metel_Neon", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacNetrunnerMetelPimpPrimary", "Items.Preset_Metel_Pimp", 0, 10, false)


    for i,v in ipairs({"MaxtacNetrunnerOmahaMilitaryPrimaryItems.Preset_Omaha_MilitaryEquipItemRight", "MaxtacNetrunnerTiconMilitaryPrimaryItems.Preset_Ticon_MilitaryEquipItemRight", "MaxtacNetrunnerTiconNeonPrimaryItems.Preset_Ticon_NeonEquipItemRight", "MaxtacNetrunnerTiconPimpPrimaryItems.Preset_Ticon_PimpEquipItemRight", "MaxtacNetrunnerBuryaMilitaryPrimaryItems.Preset_Burya_MilitaryEquipItemRight", "MaxtacNetrunnerOvertureMilitaryPrimaryItems.Preset_Overture_MilitaryEquipItemRight", "MaxtacNetrunnerMetelMilitaryPrimaryItems.Preset_Metel_MilitaryEquipItemRight", "MaxtacNetrunnerMetelNeonPrimaryItems.Preset_Metel_NeonEquipItemRight", "MaxtacNetrunnerMetelPimpPrimaryItems.Preset_Metel_PimpEquipItemRight"}) do
		TweakDB:SetFlat(v..".equipCondition", {})
        TweakDB:SetFlat(v..".unequipCondition", {})
	end


	TweakDB:CloneRecord("MaxtacNetrunnerPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MaxtacNetrunnerPrimaryEquipItemPool.pool", {"MaxtacNetrunnerOmahaMilitaryPrimaryEquipItemPoolEntry", "MaxtacNetrunnerTiconMilitaryPrimaryEquipItemPoolEntry", "MaxtacNetrunnerTiconNeonPrimaryEquipItemPoolEntry", "MaxtacNetrunnerTiconPimpPrimaryEquipItemPoolEntry", "MaxtacNetrunnerBuryaMilitaryPrimaryEquipItemPoolEntry", "MaxtacNetrunnerOvertureMilitaryPrimaryEquipItemPoolEntry", "MaxtacNetrunnerMetelMilitaryPrimaryEquipItemPoolEntry", "MaxtacNetrunnerMetelNeonPrimaryEquipItemPoolEntry", "MaxtacNetrunnerMetelPimpPrimaryEquipItemPoolEntry"})
	TweakDB:SetFlat("Character.maxtac_av_netrunner_ma_2nd_wave_inline0.equipmentItems", {"MaxtacNetrunnerPrimaryEquipItemPool"})
	TweakDB:SetFlat("Character.maxtac_av_netrunner_ma_inline10.equipmentItems", {"MaxtacNetrunnerPrimaryEquipItemPool"})--used as secondary equipment for other maxtac



    createEquipmentWeaponGrp("MaxtacRiflemanMasamuneMilitaryPrimary", "Items.Preset_Masamune_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacRiflemanAjaxMilitaryPrimary", "Items.Preset_Ajax_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacRiflemanAjaxNeonPrimary", "Items.Preset_Ajax_Neon", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacRiflemanAjaxPimpPrimary", "Items.Preset_Ajax_Pimp", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacRiflemanAchillesNUSABlackPrimary", "Items.Preset_Achilles_Nusa_Black", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacRiflemanAchillesNUSAWhitePrimary", "Items.Preset_Achilles_Nusa_White", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacRiflemanHerculesPrimary", "Items.Preset_Hercules_Default", 0, 10, false)
    
	TweakDB:CloneRecord("MaxtacRiflemanPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MaxtacRiflemanPrimaryEquipItemPool.pool", {"MaxtacRiflemanMasamuneMilitaryPrimaryEquipItemPoolEntry", "MaxtacRiflemanAjaxMilitaryPrimaryEquipItemPoolEntry", "MaxtacRiflemanAjaxNeonPrimaryEquipItemPoolEntry", "MaxtacRiflemanAjaxPimpPrimaryEquipItemPoolEntry", "MaxtacRiflemanAchillesNUSABlackPrimaryEquipItemPoolEntry", "MaxtacRiflemanAchillesNUSAWhitePrimaryEquipItemPoolEntry", "MaxtacRiflemanHerculesPrimaryEquipItemPoolEntry"})
	TweakDB:SetFlat("Character.maxtac_av_riffle_ma_2nd_wave_inline0.equipmentItems", {"MaxtacRiflemanPrimaryEquipItemPool"})
	TweakDB:SetFlat("Character.maxtac_av_riffle_ma_inline0.equipmentItems", {"MaxtacRiflemanPrimaryEquipItemPool"})
    TweakDB:SetFlat("Character.prevention_maxtac_rifle_ma_inline0.equipmentItems", {"MaxtacRiflemanPrimaryEquipItemPool"})
    TweakDB:SetFlat("Character.prevention_maxtac_rifle_wa_inline0.equipmentItems", {"MaxtacRiflemanPrimaryEquipItemPool"})
    TweakDB:SetFlat("Character.maxtac_rifle_ma_elite_inline0.equipmentItems", {"MaxtacRiflemanPrimaryEquipItemPool"})
    TweakDB:SetFlat("Character.maxtac_rifle_wa_elite_inline2.equipmentItems", {"MaxtacRiflemanPrimaryEquipItemPool"})

    --rebalance secondary equipment using netrunner primary
	TweakDB:SetFlat("Character.maxtac_av_riffle_ma_2nd_wave.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")--apparently most maxtac dont have secondary equipment or weap switch cond
    TweakDB:SetFlat("Character.maxtac_av_riffle_ma.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_av_mantis_wa.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_av_mantis_wa_2nd_wave.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_av_sniper_wa_elite_2nd_wave.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_av_sniper_wa_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")

    TweakDB:SetFlat("Character.maxtac_gunner_mb_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_melee_ma_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_rifle_ma_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_rifle_wa_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_shotgun_ma_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.maxtac_sniper_wa_elite.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.prevention_maxtac_rifle_ma.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.prevention_maxtac_rifle_wa.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_frifle_wa.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_fshotgun_mb.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_mantis_ma.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_netrunner_ma.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    TweakDB:SetFlat("Character.q305_maxtac_miniboss_sniper_ma.secondaryEquipment", "Character.maxtac_av_netrunner_ma_inline10")
    


    createEquipmentWeaponGrp("MaxtacShotgunnerCrusherMilitaryPrimary", "Items.Preset_Crusher_Military", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacShotgunnerSataraMilitaryPrimary", "YashaSatara", 0, 10, false)
    createEquipmentWeaponGrp("MaxtacShotgunnerPozharMilitaryPrimary", "Items.Preset_Pozhar_Military", 0, 10, false)

    TweakDB:CloneRecord("MaxtacShotgunnerPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("MaxtacShotgunnerPrimaryEquipItemPool.pool", {"MaxtacShotgunnerCrusherMilitaryPrimaryEquipItemPoolEntry", "MaxtacShotgunnerSataraMilitaryPrimaryEquipItemPoolEntry", "MaxtacShotgunnerPozharMilitaryPrimaryEquipItemPoolEntry"})
	TweakDB:SetFlat("Character.maxtac_shotgun_ma_elite_inline2.equipmentItems", {"MaxtacShotgunnerPrimaryEquipItemPool"})






    createEquipmentWeaponGrp("NCPDSwatAjaxMilitaryPrimary", "Items.Preset_Ajax_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDSwatAchillesMilitaryPrimary", "Items.Preset_Achilles_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDSwatMasamuneMilitaryPrimary", "Items.Preset_Masamune_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDSwatKyubiMilitaryPrimary", "Items.Preset_Kyubi_Military", 0, 10, false)

	TweakDB:CloneRecord("NCPDSwatRiflemanPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDSwatRiflemanPrimaryEquipItemPool.pool", {"NCPDSwatAjaxMilitaryPrimaryEquipItemPoolEntry", "NCPDSwatAchillesMilitaryPrimaryEquipItemPoolEntry", "NCPDSwatMasamuneMilitaryPrimaryEquipItemPoolEntry", "NCPDSwatKyubiMilitaryPrimaryEquipItemPoolEntry"})
	TweakDB:SetFlat("Character.prevention_enforcer_rifle_ma_inline2.equipmentItems", {"NCPDSwatRiflemanPrimaryEquipItemPool"})



    --add more to secondary equipment
    --TweakDB:SetFlat("Character.prevention_enforcer_rifle_ma_inline0.equipmentItems", {"Character.militech_ranger2_ranged2_ajax_ma_inline3"})
    --TweakDB:SetFlat("Character.prevention_enforcer_lmg_mb_inline2.equipmentItems", {"Character.militech_ranger2_ranged2_ajax_ma_inline3"})
    --TweakDB:SetFlat("Character.prevention_enforcer_shotgun_ma_inline0.equipmentItems", {"Character.militech_ranger2_ranged2_ajax_ma_inline3"})




    createEquipmentWeaponGrp("NCPDSwatZhuoMilitaryPrimary", "Items.Preset_Zhuo_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDSwatTacticianMilitaryPrimary", "Items.Preset_Tactician_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDSwatCrusherMilitaryPrimary", "Items.Preset_Crusher_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDSwatSataraMilitaryPrimary", "Items.Preset_Satara_Military", 0, 10, false)

    TweakDB:CloneRecord("NCPDSwatShotgunnerPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDSwatShotgunnerPrimaryEquipItemPool.pool", {"NCPDSwatZhuoMilitaryPrimaryEquipItemPoolEntry", "NCPDSwatTacticianMilitaryPrimaryEquipItemPoolEntry", "NCPDSwatCrusherMilitaryPrimaryEquipItemPoolEntry", "NCPDSwatSataraMilitaryPrimaryEquipItemPoolEntry"})
	TweakDB:SetFlat("Character.prevention_enforcer_shotgun_ma_inline2.equipmentItems", {"NCPDSwatShotgunnerPrimaryEquipItemPool"})
    TweakDB:SetFlat("Character.ncpd_enforcer_shotgun2_tactician_ma_rare_inline0.equipmentItems", {"NCPDSwatShotgunnerPrimaryEquipItemPool"})



    createEquipmentWeaponGrp("NCPDAndroidAjaxMilitaryPrimary", "Items.Preset_Ajax_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDAndroidAchillesMilitaryPrimary", "Items.Preset_Achilles_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDAndroidMasamuneMilitaryPrimary", "Items.Preset_Masamune_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDAndroidKyubiMilitaryPrimary", "Items.Preset_Kyubi_Military", 0, 10, false)

	TweakDB:CloneRecord("NCPDAndroidPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDAndroidPrimaryEquipItemPool.pool", {"NCPDAndroidAjaxMilitaryPrimaryEquipItemPoolEntry", "NCPDAndroidAchillesMilitaryPrimaryEquipItemPoolEntry", "NCPDAndroidMasamuneMilitaryPrimaryEquipItemPoolEntry", "NCPDAndroidKyubiMilitaryPrimaryEquipItemPoolEntry"})
    TweakDB:SetFlat("Character.prevention_android_rifle_ma_inline0.equipmentItems", {"NCPDAndroidPrimaryEquipItemPool"})





    createEquipmentWeaponGrp("NCPDHandgunnerUnityMilitaryPrimary", "Items.Preset_Unity_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerKenshinMilitaryPrimary", "Items.Preset_Kenshin_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerOmahaMilitaryPrimary", "Items.Preset_Omaha_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerLexingtonMilitaryPrimary", "Items.Preset_Lexington_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerOvertureMilitaryPrimary", "Items.Preset_Overture_Military", 0, 10, false)

	TweakDB:CloneRecord("NCPDHandgunnerPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDHandgunnerPrimaryEquipItemPool.pool", {"NCPDHandgunnerUnityMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerKenshinMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerOmahaMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerLexingtonMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerOvertureMilitaryPrimaryEquipItemPoolEntry"})
    --TweakDB:SetFlat("Character.prevention_police_handgun_ma_inline2.equipmentItems", {"NCPDHandgunnerPrimaryEquipItemPool"})
    --TweakDB:SetFlat("Character.prevention_police_handgun_wa_inline2.equipmentItems", {"NCPDHandgunnerPrimaryEquipItemPool"})
    for i,v in ipairs({"Character.prevention_police_handgun_ma_inline2", "Character.prevention_police_handgun_wa_inline2", "Character.ncpd_android_android2_lexington_ma_inline0", "Character.ncpd_biker_ranged2_omaha_ma_inline0", "Character.ncpd_constable_ranged1_lexington_ma_inline0", "Character.ncpd_hazmat_ranged1_lexington_ma_inline0", "Character.ncpd_inspector_ranged1_lexington_ma_inline0", "Character.ncpd_investigator_officer_omaha_ma_inline0", "Character.ncpd_investigator_officer_omaha_wa_inline0", "Character.ncpd_police_ranged2_lexington_ma_inline0", "Character.ncpd_police_ranged2_lexington_wa_inline0"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"NCPDHandgunnerPrimaryEquipItemPool"})
	end



    createEquipmentWeaponGrp("NCPDRiflemanAjaxMilitaryPrimary", "Items.Preset_Ajax_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDRiflemanCopperheadUnityMilitaryPrimary", "Items.Preset_Copperhead_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDRiflemanSidewinderMilitaryPrimary", "Items.Preset_Sidewinder_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDRiflemanMasamuneMilitaryPrimary", "Items.Preset_Masamune_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDRiflemanSaratogaMilitaryPrimary", "Items.Preset_Saratoga_Military", 0, 10, false)

	TweakDB:CloneRecord("NCPDRiflemanPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDRiflemanPrimaryEquipItemPool.pool", {"NCPDRiflemanAjaxMilitaryPrimaryEquipItemPoolEntry", "NCPDRiflemanCopperheadUnityMilitaryPrimaryEquipItemPoolEntry", "NCPDRiflemanSidewinderMilitaryPrimaryEquipItemPoolEntry", "NCPDRiflemanMasamuneMilitaryPrimaryEquipItemPoolEntry", "NCPDRiflemanSaratogaMilitaryPrimaryEquipItemPoolEntry"})
    --TweakDB:SetFlat("Character.prevention_police_rifle_ma_inline2.equipmentItems", {"NCPDRiflemanPrimaryEquipItemPool"})
    --TweakDB:SetFlat("Character.prevention_police_rifle_wa_inline2.equipmentItems", {"NCPDRiflemanPrimaryEquipItemPool"})
    --TweakDB:SetFlat("Character.ncpd_police_ranged2_copperhead_ma_inline0.equipmentItems", {"NCPDRiflemanPrimaryEquipItemPool"})
    --TweakDB:SetFlat("Character.ncpd_police_ranged2_copperhead_wa_inline0.equipmentItems", {"NCPDRiflemanPrimaryEquipItemPool"})
    for i,v in ipairs({"Character.prevention_police_rifle_ma_inline2", "Character.prevention_police_rifle_wa_inline2", "Character.ncpd_police_ranged2_copperhead_ma_inline0", "Character.ncpd_police_ranged2_copperhead_wa_inline0", "Character.ncpd_police_ranged2_saratoga_ma_inline0", "Character.ncpd_police_ranged2_saratoga_wa_inline0", "Character.ncpd_android_android2_ajax_ma_inline0"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"NCPDRiflemanPrimaryEquipItemPool"})
	end



    createEquipmentWeaponGrp("NCPDShotgunnerTacticianMilitaryPrimary", "Items.Preset_Tactician_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDShotgunnerCrusherMilitaryPrimary", "Items.Preset_Crusher_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDShotgunnerTesteraMilitaryPrimary", "Items.Preset_Testera_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDShotgunnerPalicaMilitaryPrimary", "Items.Preset_Palica_Military", 0, 10, false)

	TweakDB:CloneRecord("NCPDShotgunnerPrimaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDShotgunnerPrimaryEquipItemPool.pool", {"NCPDShotgunnerTacticianMilitaryPrimaryEquipItemPoolEntry", "NCPDShotgunnerCrusherMilitaryPrimaryEquipItemPoolEntry", "NCPDShotgunnerTesteraMilitaryPrimaryEquipItemPoolEntry", "NCPDShotgunnerPalicaMilitaryPrimaryEquipItemPoolEntry"})
    --TweakDB:SetFlat("Character.prevention_police_shotgun_ma_inline2.equipmentItems", {"NCPDShotgunnerPrimaryEquipItemPool"})
    --TweakDB:SetFlat("Character.prevention_police_shotgun_wa_inline2.equipmentItems", {"NCPDShotgunnerPrimaryEquipItemPool"})
    for i,v in ipairs({"Character.prevention_police_shotgun_ma_inline2", "Character.prevention_police_shotgun_wa_inline2", "Character.ncpd_police_shotgun3_crusher_mb_elite_inline0"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"NCPDShotgunnerPrimaryEquipItemPool"})
	end


    TweakDB:SetFlat("Character.prevention_enforcer_lmg_mb_inline5.item", "Items.Preset_Defender_Military")
    TweakDB:SetFlat("Character.ncpd_hwp_gunner2_defender_mb_rare_inline6.item", "Items.Preset_Defender_Military")
    TweakDB:SetFlat("Character.maxtac_gunner_mb_elite_inline1.item", "Items.Preset_HMG_Military")



    --secondary equipment for ncpd
    createEquipmentWeaponGrp("NCPDHandgunnerSecondaryUnityMilitaryPrimary", "Items.Preset_Unity_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerSecondaryKenshinMilitaryPrimary", "Items.Preset_Kenshin_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerSecondaryOmahaMilitaryPrimary", "Items.Preset_Omaha_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerSecondaryLexingtonMilitaryPrimary", "Items.Preset_Lexington_Military", 0, 10, false)
    createEquipmentWeaponGrp("NCPDHandgunnerSecondaryOvertureMilitaryPrimary", "Items.Preset_Overture_Military", 0, 10, false)

    for i,v in ipairs({"NCPDHandgunnerSecondaryUnityMilitaryPrimaryItems.Preset_Unity_MilitaryEquipItemRight", "NCPDHandgunnerSecondaryKenshinMilitaryPrimaryItems.Preset_Kenshin_MilitaryEquipItemRight", "NCPDHandgunnerSecondaryOmahaMilitaryPrimaryItems.Preset_Omaha_MilitaryEquipItemRight", "NCPDHandgunnerSecondaryLexingtonMilitaryPrimaryItems.Preset_Lexington_MilitaryEquipItemRight", "NCPDHandgunnerSecondaryOvertureMilitaryPrimaryItems.Preset_Overture_MilitaryEquipItemRight"}) do
		TweakDB:SetFlat(v..".equipCondition", {})
        TweakDB:SetFlat(v..".unequipCondition", {})
	end
	TweakDB:CloneRecord("NCPDHandgunnerSecondaryEquipItemPool", "Character.maxtac_av_sniper_wa_elite_inline1")
	TweakDB:SetFlat("NCPDHandgunnerSecondaryEquipItemPool.pool", {"NCPDHandgunnerSecondaryUnityMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerSecondaryKenshinMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerSecondaryOmahaMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerSecondaryLexingtonMilitaryPrimaryEquipItemPoolEntry", "NCPDHandgunnerSecondaryOvertureMilitaryPrimaryEquipItemPoolEntry"})

    --TweakDB:SetFlat("Character.prevention_police_rifle_ma_inline0.equipmentItems", {"NCPDHandgunnerSecondaryEquipItemPool"})
    --TweakDB:SetFlat("Character.prevention_police_rifle_wa_inline0.equipmentItems", {"NCPDHandgunnerSecondaryEquipItemPool"})
    --TweakDB:SetFlat("Character.prevention_police_shotgun_ma_inline0.equipmentItems", {"NCPDHandgunnerSecondaryEquipItemPool"})
    --TweakDB:SetFlat("Character.prevention_police_shotgun_wa_inline0.equipmentItems", {"NCPDHandgunnerSecondaryEquipItemPool"})


    for i,v in ipairs({"Character.prevention_police_rifle_ma_inline0", "Character.prevention_police_rifle_wa_inline0", "Character.prevention_police_shotgun_ma_inline0", "Character.prevention_police_shotgun_wa_inline0", "Character.prevention_android_rifle_ma_inline2", "Character.ncpd_android_android2_ajax_ma_inline2", "Character.ncpd_biker_ranged2_omaha_ma_inline2", "Character.ncpd_constable_melee1_baton_ma_inline2", "Character.ncpd_constable_ranged1_lexington_ma_inline2", "Character.ncpd_enforcer_shotgun2_tactician_ma_rare_inline2", "Character.ncpd_hazmat_ranged1_lexington_ma_inline2", "Character.ncpd_hwp_gunner2_defender_mb_rare_inline5", "Character.ncpd_inspector_melee1_baton_ma_inline2", "Character.ncpd_inspector_ranged1_lexington_ma_inline2", "Character.ncpd_investigator_officer_omaha_ma_inline2", "Character.ncpd_investigator_officer_omaha_wa_inline2", "Character.ncpd_police_melee2_baton_ma_inline2", "Character.ncpd_police_melee2_baton_wa_inline2", "Character.ncpd_police_ranged2_copperhead_ma_inline2", "Character.ncpd_police_ranged2_copperhead_wa_inline2", "Character.ncpd_police_ranged2_lexington_ma_inline2", "Character.ncpd_police_ranged2_lexington_wa_inline2", "Character.ncpd_police_ranged2_saratoga_ma_inline2", "Character.ncpd_police_ranged2_saratoga_wa_inline2", "Character.ncpd_police_shotgun3_crusher_mb_elite_inline2"}) do
		TweakDB:SetFlat(v..".equipmentItems", {"NCPDHandgunnerSecondaryEquipItemPool"})
	end









    setArchetypeData("WesleyHunt", {"Sandy1AbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalNormalAbilityGrp", "ThermoAbilityGrp", "KersAbilityGrp", "CamoAbilityGrp", "SeeCamoAbilityGrp", "SmokeyAbilityGrp", "BleedImmuneAbilityGrp", "BleedAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"ValenResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_001_cyberjunkie.archetypeData", "WesleyHuntArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_001_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades", "Ability.CanUseStrongArms"})

    TweakDB:SetFlat("Character.cbj_ep1_001_cyberjunkie_inline3.item", "Items.Preset_Katana_Military")



    setArchetypeData("MaggieIsley", {"SandyAbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp", "PoisonAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"WraiResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_002_cyberjunkie.archetypeData", "MaggieIsleyArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_002_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades", "Ability.CanUseMantisBlades"})


    setArchetypeData("JacobBernard", {"SandyAbilityGrp", "KerezAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp"}, {}, {"BargResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_003_cyberjunkie.archetypeData", "JacobBernardArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_003_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades"})





    setArchetypeData("GarryBate", {"Sandy1AbilityGrp", "T3FastSniperAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp", "SmokeyAbilityGrp", "SmokeNadeAbilityGrp", "TacticalAbilityGrp"}, {}, {"ScavResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_004_cyberjunkie.archetypeData", "GarryBateArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_004_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsCautious", "Ability.PrefersCovers"})


    setArchetypeData("CodyCrosby", {"SandyAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionMediumAbilityGrp", "SubdermalNormalAbilityGrp", "KersAbilityGrp"}, {}, {"AnimResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_005_cyberjunkie.archetypeData", "CodyCrosbyArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_005_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades", "Ability.CanUseStrongArms"})


    setArchetypeData("DavidDover", {"SandyAbilityGrp", "T3FastMeleeAbilityGrp", "BreakHoldAbilityGrp", "HitReactionNormalAbilityGrp", "SubdermalNormalAbilityGrp", "KersAbilityGrp", "MeleeTakedownAbilityGrp"}, {}, {"ScavResStatModifierGrp", "ScavHackResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_006_cyberjunkie.archetypeData", "DavidDoverArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_006_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades", "Ability.CanUseBiohazardGrenades"})


    setArchetypeData("Chester", {"SandyAbilityGrp", "T3FastShotAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp"}, {}, {"BargResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_007_cyberjunkie.archetypeData", "ChesterArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_007_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless", "Ability.CanUseFlashbangGrenades"})


    setArchetypeData("Jacq", {"SandyAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp", "HarassAbilityGrp"}, {}, {"MercResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_008_cyberjunkie.archetypeData", "JacqArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_008_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsBalanced", "Ability.CanUseFragGrenades"})



    setArchetypeData("SeanMacmillan", {"SandyAbilityGrp", "T3FastTechieAbilityGrp", "BreakHoldAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp"}, {}, {"MercResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_009_cyberjunkie.archetypeData", "SeanMacmillanArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_009_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsReckless"})

    createEquipmentWeaponGrp("SeanAuthorityPrimary", "Items.Preset_Authority_Default", 0, 5, false)
    TweakDB:SetFlat("Character.cbj_ep1_009_cyberjunkie.primaryEquipment", "SeanAuthorityPrimaryEquipGrp")





    setArchetypeData("Greg", {"SandyAbilityGrp", "KerezAbilityGrp", "T3FastRangedAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp", "HarassAbilityGrp"}, {}, {"ScrapResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_010_cyberjunkie.archetypeData", "GregArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_010_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsAggressive", "Ability.CanUseFlashbangGrenades"})





    setArchetypeData("Andrew", {"SandyAbilityGrp", "T3FastSniperAbilityGrp", "HitReactionLightAbilityGrp", "SubdermalLightAbilityGrp", "KersAbilityGrp"}, {}, {"ScrapResStatModifierGrp"}, "", true)
    TweakDB:SetFlat("Character.cbj_ep1_011_cyberjunkie.archetypeData", "AndrewArchetypeData")
    TweakDB:SetFlat("Character.cbj_ep1_011_cyberjunkie.abilities", {"Ability.CanCrouch", "Ability.CanSprint", "Ability.CanSwitchWeapon", "Ability.CanShootWhileMoving", "Ability.CanPreciseShoot", "Ability.CanChargedShoot", "Ability.CanSmartShoot", "Ability.CanUseLeftHand", "Ability.CanUseRightHand", "Ability.CanUseLegs", "Ability.CanTaunt", "Ability.CanCloseCombat", "Ability.IsDefensive", "Ability.CanUseFragGrenades", "Ability.CanUseFlashbangGrenades", "Ability.CanUseSmokeGrenades"})

    cloneNPCDataMinimalWithoutVisual("Character.scavenger_fast3_fmelee3_machete_wa_elite", "Character.cbj_ep1_011_junkie_1")




    --turn cyberjunkies into bosses
    CyberjunkieList = {"Character.cbj_ep1_001_cyberjunkie", "Character.cbj_ep1_002_cyberjunkie", "Character.cbj_ep1_003_cyberjunkie", "Character.cbj_ep1_004_cyberjunkie", "Character.cbj_ep1_005_cyberjunkie", "Character.cbj_ep1_006_cyberjunkie", "Character.cbj_ep1_007_cyberjunkie", "Character.cbj_ep1_008_cyberjunkie", "Character.cbj_ep1_009_cyberjunkie", "Character.cbj_ep1_010_cyberjunkie", "Character.cbj_ep1_011_cyberjunkie"}
    for i,v in ipairs(CyberjunkieList) do
        TweakDB:SetFlat(v..".rarity", "NPCRarity.Boss")
        --TweakDB:SetFlat(v..".tags", {"Cyberjunkie", "Cyberpsycho"})
        TweakDB:SetFlat(v..".tags", {"Cyberjunkie"})

    end

    --remove MiniBoss tag which allows them to break hold. Needs both miniboss and cyberjunkie but this is only for cbj?
    --Other npcs require MaxTac_Prevention tag

    











    --voicetags

    JotaroVO = ToCName{ hash_lo = 0xAA0300A6, hash_hi = 0xAA3CFAB4 }
    TweakDB:SetFlat("Character.sts_wat_kab_07_jotaro.voiceTag", JotaroVO)
    OlgaVO = ToCName{ hash_lo = 0x99D6A698, hash_hi = 0xEE6506D2 }
    TweakDB:SetFlat("Character.ma_std_rcr_08_outpost_miniboss.voiceTag", OlgaVO)
    KaruboVO = ToCName{ hash_lo = 0xAE29FED5, hash_hi = 0x0A65A713 }
    TweakDB:SetFlat("Character.sts_hey_rey_08_karubo.voiceTag", KaruboVO)
    MiguelVO = ToCName{ hash_lo = 0x1E726B03, hash_hi = 0x0A77FB50 }
    TweakDB:SetFlat("Character.ma_hey_rey_06_outpost_miniboss.voiceTag", MiguelVO)
    ZoeVO = ToCName{ hash_lo = 0xE3A6B53A, hash_hi = 0x6B54CB8B }
    TweakDB:SetFlat("Character.ma_hey_gle_02_outpost_miniboss.voiceTag", ZoeVO)
    JackVO = ToCName{ hash_lo = 0x61DA7049, hash_hi = 0xDC28FF67 }
    TweakDB:SetFlat("Character.sts_cct_dtn_02_dozy.voiceTag", JackVO)
    HareVO = ToCName{ hash_lo = 0xF264F390, hash_hi = 0xF265B5F4 }
    TweakDB:SetFlat("Character.sts_wat_kab_03_solo.voiceTag", HareVO)
    TinyVO = ToCName{ hash_lo = 0xB3E89F3E, hash_hi = 0x7820AC4D }
    TweakDB:SetFlat("Character.sts_wat_kab_01_tiny_mike.voiceTag", TinyVO)
    AaronVO = ToCName{ hash_lo = 0x70ACE0AF, hash_hi = 0x05ED3F94 }
    TweakDB:SetFlat("Character.sts_wat_nid_07_aaron.voiceTag", AaronVO)
    HamillVO = ToCName{ hash_lo = 0xDE6E9A05, hash_hi = 0x9260E15D }
    TweakDB:SetFlat("Character.sts_wat_kab_08_dave_hamill.voiceTag", HamillVO)

    RussellVO = ToCName{ hash_lo = 0x251283BA, hash_hi = 0x2455B0C2 }
    TweakDB:SetFlat("Character.ma_bls_ina_se1_08_cyberpsycho.voiceTag", RussellVO)
    GastonVO = ToCName{ hash_lo = 0x6295C2F6, hash_hi = 0x04AF63DE }
    TweakDB:SetFlat("Character.ma_hey_spr_06_cyberpsycho.voiceTag", GastonVO)

    CedricVO = ToCName{ hash_lo = 0xBDFD17F9, hash_hi = 0x373C6C4D }
    TweakDB:SetFlat("Character.ma_cct_dtn_03_cyberpsycho.voiceTag", CedricVO)
    RitualVO = ToCName{ hash_lo = 0x3CFFEFE7, hash_hi = 0x27A56025 }
    TweakDB:SetFlat("Character.ma_wat_nid_15_psycho.voiceTag", RitualVO)
    TweakDB:SetFlat("Character.ma_wat_nid_15_psycho_02.voiceTag", RitualVO)
    TweakDB:SetFlat("Character.ma_wat_nid_15_psycho_03.voiceTag", RitualVO)
    EllisVO = ToCName{ hash_lo = 0x8CEB20D4, hash_hi = 0x057F7AD8 }
    TweakDB:SetFlat("Character.ma_wat_nid_03_shard_psycho.voiceTag", EllisVO)
    DaoVO = ToCName{ hash_lo = 0xAC6B6712, hash_hi = 0xF932562B }
    TweakDB:SetFlat("Character.ma_hey_spr_04_cyberpsycho.voiceTag", DaoVO)

    MattVO = ToCName{ hash_lo = 0x251283BA, hash_hi = 0x2455B0C2 }
    TweakDB:SetFlat("Character.ma_wat_kab_02_cyberpsycho.voiceTag", MattVO)
    ZionVO = ToCName{ hash_lo = 0xBDFD17F9, hash_hi = 0x373C6C4D }
    TweakDB:SetFlat("Character.ma_bls_ina_se1_22_psycho.voiceTag", ZionVO)
    --DiegoVO = ToCName{ hash_lo = 0xAC6B6712, hash_hi = 0xF932562B } --female jap voice
    --TweakDB:SetFlat("Character.ma_pac_cvi_08_psycho.voiceTag", DiegoVO)
    TamaraVO = ToCName{ hash_lo = 0xDBB3FA6C, hash_hi = 0x5C11F14A }
    TweakDB:SetFlat("Character.ma_std_arr_06_cyberpsycho.voiceTag", TamaraVO)

    LelyVO = ToCName{ hash_lo = 0xB67DD6B2, hash_hi = 0xE24A36CB }
    TweakDB:SetFlat("Character.ma_wat_nid_22_monk.voiceTag", LelyVO)
    ChaseVO = ToCName{ hash_lo = 0xBDFD17F9, hash_hi = 0x373C6C4D }
    TweakDB:SetFlat("Character.ma_std_rcr_11_cyberpsycho.voiceTag", ChaseVO)
    EuralioVO = ToCName{ hash_lo = 0x251283BA, hash_hi = 0x2455B0C2 }
    TweakDB:SetFlat("Character.ma_bls_ina_se1_07_cyberpsycho_1.voiceTag", EuralioVO)
    MotorVO = ToCName{ hash_lo = 0xAA0300A6, hash_hi = 0xAA3CFAB4 }
    TweakDB:SetFlat("Character.ma_wat_lch_08_outpost_miniboss.voiceTag", MotorVO)

    ShinobuVO = ToCName{ hash_lo = 0x27CEA56A, hash_hi = 0xF7602FA3 }
    TweakDB:SetFlat("Character.ma_wbr_jpn_20_outpost_miniboss.voiceTag", ShinobuVO)
    TomVO = ToCName{ hash_lo = 0x11EBB975, hash_hi = 0x4E9119EA }
    TweakDB:SetFlat("Character.ma_wat_nid_02_outpost_miniboss.voiceTag", TomVO)
    KaiserVO = ToCName{ hash_lo = 0x1EFB8803, hash_hi = 0x1C0EDBF4 }
    TweakDB:SetFlat("Character.ma_wat_nid_06_outpost_miniboss.voiceTag", KaiserVO)
    MinotaurVO = ToCName{ hash_lo = 0xC30F467E, hash_hi = 0x9D353C60 }
    TweakDB:SetFlat("Character.ma_wbr_nok_05_outpost_miniboss.voiceTag", MinotaurVO)

    PaulVO = ToCName{ hash_lo = 0xE35ABD43, hash_hi = 0x08D40626 }
    TweakDB:SetFlat("Character.ma_std_rcr_18_outpost_miniboss.voiceTag", PaulVO)
    RufusVO = ToCName{ hash_lo = 0x1E0D8987, hash_hi = 0xC2D3FC27 }
    TweakDB:SetFlat("Character.ma_bls_se5_07_outpost_miniboss.voiceTag", RufusVO)
    StanisVO = ToCName{ hash_lo = 0xAFB23039, hash_hi = 0xA89FB35D }
    TweakDB:SetFlat("Character.ma_pac_cvi_12_outpost_miniboss.voiceTag", StanisVO)
    DenzelVO = ToCName{ hash_lo = 0x47437198, hash_hi = 0x7F8C13C0 }
    TweakDB:SetFlat("Character.ma_hey_spr_11_outpost_miniboss.voiceTag", DenzelVO)

    SixVO = ToCName{ hash_lo = 0xE812D44F, hash_hi = 0xFF3C74E9 }
    TweakDB:SetFlat("Character.arr_sixthstreet_patrol2_ranged2_ajax_wa.voiceTag", SixVO)


    ElGalloVO = ToCName{ hash_lo = 0x2515B732, hash_hi = 0x69DDF92A }
    TweakDB:SetFlat("Character.sts_hey_gle_05_el_gallo.voiceTag", ElGalloVO)

    --aaron_waines alex angelica_whelan bennett dante jacob jurij kruger paco shank taylor kurtz myers reed songbird
    --bob carol cassidy claire mitch placide roxanne royce santiago teddy tom woodman 
    --saul rogue thompson weyland judy
    --john_davis bill_brooks charles_wilson dodger


    --add berserk voice subaction
    --tested anton sandy berserk
    --add osprey and rest of weapons
    --add mod settings, turn off entire mod + application effect duration
    --sandy enemies stuck for 1 sec after knockdown, most likely strafe composite


    --prevent them from dodging tech wall pen during combat
    WallDodgeMainBossList = {"Character.q003_royce_boss", "Character.q110_animals_boss", "Character.Cyberninja_Oda", "Character.q113_boss_smasher", "Character.main_boss_chimera"}
	for i,v in ipairs(WallDodgeMainBossList) do
		addToList(v..".abilities", "Ability.IsMainBoss")
	end



    MainBossList = {"Character.q003_royce_boss", "Character.q110_animals_boss", "Character.Cyberninja_Oda", "Character.q113_boss_smasher", "Character.main_boss_chimera", "Character.q304_kurt_miniboss", "Character.sts_ep1_03_miniboss_placeholder", "Character.sts_ep1_08_kgb_boss"}
	for i,v in ipairs(WallDodgeMainBossList) do
		addToList(v..".abilities", "Ability.IsTier4Archetype")
	end

	createConstantStatModifier("MainBossHP", "Multiplier", "BaseStats.Health", MainBossHP)
	addToList("Ability.IsTier4Archetype_inline1.stats", "MainBossHP")


    


end