
if EnableMod and EnableBreachProtocol then

	--must be at least a netrunner or tier4 archetype to have breach protocol
	TweakDB:CloneRecord("BreachNotNetrunnerPrereq", "Ability.IsNetrunnerArchetype_inline0")
	TweakDB:SetFlat("BreachNotNetrunnerPrereq.objectToCheck", "Target")

	TweakDB:CloneRecord("BreachNotBossPrereq", "BreachNotNetrunnerPrereq")
	TweakDB:SetFlat("BreachNotBossPrereq.statType", "IsTier4Archetype")

	TweakDB:CloneRecord("BreachMultiPrereq", "AIQuickHackStatusEffect.NetrunnerStaticNoise_inline2")
	TweakDB:SetFlat("BreachMultiPrereq.nestedPrereqs", {"BreachNotNetrunnerPrereq", "BreachNotBossPrereq"})

	function createStatPrereq(name, comparisonType, objectToCheck, prereqClassName, statType, valueToCheck)
		TweakDB:CloneRecord(name.."StatPrereq", "Ability.IsNetrunnerArchetype_inline0")
		TweakDB:SetFlat(name.."StatPrereq"..".comparisonType", comparisonType)
		TweakDB:SetFlat(name.."StatPrereq"..".prereqClassName", prereqClassName)
		TweakDB:SetFlat(name.."StatPrereq"..".statType", statType)
		TweakDB:SetFlat(name.."StatPrereq"..".valueToCheck", valueToCheck)
	end

	function createMultiPrereq(name, aggregationType, nestedPrereqs)
		TweakDB:CloneRecord(name.."MultiPrereq", "Ability.IsNetrunnerArchetype_inline0")
		TweakDB:SetFlat(name.."MultiPrereq"..".aggregationType", aggregationType)
		TweakDB:SetFlat(name.."MultiPrereq"..".nestedPrereqs", nestedPrereqs)
	end

	function createObjectActionPrereq(name, failureConditionPrereq)
		TweakDB:CloneRecord(name.."ObjectActionPrereq", "Prereqs.BossNoInterruptPrereq")
		TweakDB:SetFlat(name.."ObjectActionPrereq"..".failureConditionPrereq", failureConditionPrereq)
	end


	TweakDB:CloneRecord("BreachAction", "QuickHack.RemoteBreach")
	TweakDB:SetFlat("BreachAction.targetActivePrereqs", {"Prereqs.QuickHackUploadingPrereq", "Prereqs.ChimeraNoQuickHackPrereq", "Prereqs.ChimeraNoQuickHackPrereq", "Prereqs.ConnectedToBackdoorActive"})
	TweakDB:SetFlat("BreachAction.targetPrereqs", {"BreachMultiPrereq"})
	TweakDB:SetFlat("BreachAction.gameplayCategory", "")
	TweakDB:SetFlat("BreachAction.hackCategory", "HackCategory.BreachingHack")


	TweakDB:SetFlat("BaseStatusEffect.RemoteBreachCooldown_inline1.value", 180)
	TweakDB:SetFlat("BaseStatusEffect.RemoteBreachCooldown_inline0.statModifiers", {"BaseStatusEffect.RemoteBreachCooldown_inline1"})


	BreachCyberdeckList = {"Items.AdvancedArasakaShadowMKICommon", "Items.AdvancedArasakaShadowMKICommonPlus", "Items.AdvancedArasakaShadowMKIIUncommon", "Items.AdvancedArasakaShadowMKIIUncommonPlus", "Items.AdvancedArasakaShadowMKIIIRare", "Items.AdvancedArasakaShadowMKIIIRarePlus", "Items.AdvancedArasakaShadowMKIVEpic", "Items.AdvancedArasakaShadowMKIVEpic", "Items.Debug_Ultimate_Cyberdeck_Epic", "Items.Hard_30_IntBody_Cyberdeck", "Items.AdvancedArasakaShadowMKIVEpicPlus", "Items.AdvancedArasakaShadowMKVLegendary", "Items.Debug_Ultimate_Cyberdeck_Legendary", "Items.AdvancedArasakaShadowMKVLegendaryPlus", "Items.VHard_50_CoolRef_Cyberdeck", "Items.AdvancedArasakaShadowMKVLegendaryPlusPlus", "Items.AdvancedBiotechSigmaMKIUncommon", "Items.EP1_Stanalone_StartingBuild_Cyberdeck", "Items.AdvancedBiotechSigmaMKIUncommonPlus", "Items.AdvancedBiotechSigmaMKIIRare", "Items.Normal_20_Netrunner_Cyberdeck", "Items.AdvancedBiotechSigmaMKIIRarePlus", "Items.AdvancedBiotechSigmaMKIIIEpic", "Items.AdvancedBiotechSigmaMKIIIEpicPlus", "Items.AdvancedBiotechSigmaMKIVLegendary", "Items.AdvancedBiotechSigmaMKIVLegendaryPlus", "Items.AdvancedBiotechSigmaMKIVLegendaryPlusPlus", "Items.HauntedCyberdeck", "Items.HauntedCyberdeck_Rare", "Items.HauntedCyberdeck_RarePlus", "Items.HauntedCyberdeck_Epic", "Items.HauntedCyberdeck_EpicPlus", "Items.HauntedCyberdeck_Legendary", "Items.VHard_50_IntRef_Cyberdeck", "Items.HauntedCyberdeck_LegendaryPlus", "Items.HauntedCyberdeck_LegendaryPlusPlus", "Items.AdvancedMilitechParalineMKICommon", "Items.AdvancedMilitechParalineMKICommonPlus", "Items.AdvancedMilitechParalineMKIIUncommon", "Items.AdvancedMilitechParalineMKIIUncommonPlus", "Items.AdvancedMilitechParalineMKIIIRare", "Items.AdvancedMilitechParalineMKIIIRarePlus", "Items.AdvancedMilitechParalineMKIVEpic", "Items.AdvancedMilitechParalineMKIVEpicPlus", "Items.AdvancedMilitechParalineMKVLegendary", "Items.AdvancedMilitechParalineMKVLegendaryPlus", "Items.VHard_50_IntTech_Cyberdeck", "Items.AdvancedMilitechParalineMKVLegendaryPlusPlus", "Items.AdvancedNetwatchNetdriverMKLegendary", "Items.AdvancedNetwatchNetdriverMKLegendaryPlus", "Items.AdvancedNetwatchNetdriverMKLegendaryPlusPlus", "Items.AdvancedRavenMicrocyberMKIRare", "Items.AdvancedRavenMicrocyberMKIRarePlus", "Items.AdvancedRavenMicrocyberMKIIEpic", "Items.AdvancedRavenMicrocyberMKIIEpicPlus", "Items.AdvancedRavenMicrocyberMKIIILegendary", "Items.AdvancedRavenMicrocyberMKIIILegendaryPlus", "Items.AdvancedRavenMicrocyberMKIIILegendaryPlusPlus", "Items.AdvancedTetratronicRipplerMKICommon", "Items.AdvancedTetratronicRipplerMKICommonPlus", "Items.AdvancedTetratronicRipplerMKIIUncommon", "Items.AdvancedTetratronicRipplerMKIIUncommonPlus", "Items.AdvancedTetratronicRipplerMKIIIRare", "Items.Hard_20_Intelligence_Cyberdeck", "Items.Weak_30_Cyberdeck", "Items.AdvancedTetratronicRipplerMKIIIRarePlus", "Items.AdvancedTetratronicRipplerMKIVEpic", "Items.AdvancedTetratronicRipplerMKIVEpicPlus", "Items.AdvancedTetratronicRipplerMKVLegendary", "Items.AdvancedTetratronicRipplerMKVLegendaryPlus", "Items.AdvancedTetratronicRipplerMKVLegendaryPlusPlus"}
	for i,v in ipairs(BreachCyberdeckList) do
		addToList(v..".objectActions", "BreachAction")
	end





	--lockey 40733 is ICE, 15573 is ICE level, Hackingarea09Perk1 enables bypass extra activated trap
	--1268 is warning, 22192 is warning!, 88195 warning system breach detected, 88199 warning firewall error 15553 system breach 91766 upload icebreaker


	TweakDB:SetFlat("MinigameTraps.IncreaseAwareness.spawnProbability", 0)
	TweakDB:SetFlat("MinigameTraps.MaterialsBonus.spawnProbability", 0)
	TweakDB:SetFlat("MinigameTraps.SquadBuff.spawnProbability", 1)
	TweakDB:SetFlat("MinigameTraps.SquadBuff.trapDescription", LocKey(40733ull))
	TweakDB:SetFlat("MinigameTraps.SquadBuff.trapName", LocKey(22192ull))

	TweakDB:SetFlat("Interactions.NetworkWeaponMalfunction.description", LocKey(6961))
	TweakDB:SetFlat("Interactions.NetworkCyberwareMalfunction.description", LocKey(6970))
	TweakDB:SetFlat("Interactions.NetworkMassSuicide.description", LocKey(6963))
	TweakDB:SetFlat("Interactions.NetworkMassMadness.description", LocKey(6966))



	--captionparts ChoiceCaptionParts.BlackwallBreachIcon ChoiceCaptionParts.BountyHuntIcon ChoiceCaptionParts.BrainMeltIcon ChoiceCaptionParts.ConvoyIcon ChoiceCaptionParts.ControlPanelIcon ChoiceCaptionParts.CyberpsychosisIcon ChoiceCaptionParts.CyberwareMalfunctionIcon ChoiceCaptionParts.FlatheadIcon ChoiceCaptionParts.GangWatchIcon ChoiceCaptionParts.GlitchScreenBlindIcon ChoiceCaptionParts.GlitchScreenGranadeIcon ChoiceCaptionParts.GlitchScreenJamWeaponIcon ChoiceCaptionParts.GlitchScreenSuicideIcon ChoiceCaptionParts.GrenadeExplodeIcon	ChoiceCaptionParts.GrenadeIcon  ChoiceCaptionParts.GunSuicideIcon ChoiceCaptionParts.HairdresserIcon ChoiceCaptionParts.ICEMajorIcon ChoiceCaptionParts.ICEMediumIcon ChoiceCaptionParts.ICEMinorIcon ChoiceCaptionParts.IllegalIcon ChoiceCaptionParts.JamWeapon ChoiceCaptionParts.LocomotionMalfunctionIcon ChoiceCaptionParts.MalfunctionIcon ChoiceCaptionParts.MapBountyIcon ChoiceCaptionParts.MassMadnessIcon ChoiceCaptionParts.MassSuicideAttemptIcon ChoiceCaptionParts.MemoryWipeIcon ChoiceCaptionParts.NPCJamWeaponIcon ChoiceCaptionParts.Netrunner ChoiceCaptionParts.OpticsMalfunctionIcon ChoiceCaptionParts.OutpostIcon ChoiceCaptionParts.OverloadWeakspotIcon ChoiceCaptionParts.ReinforcementIcon ChoiceCaptionParts.SmugglersIcon ChoiceCaptionParts.SuicideAttemptIcon ChoiceCaptionParts.SystemCollapseIcon ChoiceCaptionParts.VulnerableNPCsIcon ChoiceCaptionParts.WeakNPCsIcon ChoiceCaptionParts.WanderingMerchantIcon ChoiceCaptionParts.WeaponMalfunctionIcon


	TweakDB:SetFlat("Interactions.NetworkVulnerableNPCs.captionIcon", "ChoiceCaptionParts.VulnerableNPCsIcon")

	TweakDB:CloneRecord("CyberwareMalfChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("CyberwareMalfChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_08_Perk_1")
	TweakDB:SetFlat("Interactions.NetworkCyberwareMalfunction.captionIcon", "CyberwareMalfChoiceCaptionPart")

	TweakDB:CloneRecord("BlindChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("BlindChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_06_Perk_1")
	TweakDB:SetFlat("Interactions.AutoBlindHack.captionIcon", "BlindChoiceCaptionPart")

	TweakDB:CloneRecord("CollapseChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("CollapseChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_02_Perk_4")
	TweakDB:CloneRecord("CollapseInteractionBase", "Interactions.SystemCollapseHack")
	TweakDB:SetFlat("CollapseInteractionBase.captionIcon", "CollapseChoiceCaptionPart")

	TweakDB:CloneRecord("WeaponMalfChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("WeaponMalfChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_04_Perk_1")
	TweakDB:SetFlat("Interactions.AutoJamHack.captionIcon", "WeaponMalfChoiceCaptionPart")

	TweakDB:CloneRecord("LocomotionChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("LocomotionChoiceCaptionPart.enumName", "netrunning_area_03_perk1")
	TweakDB:SetFlat("LocomotionChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_02_Perk_2")
	TweakDB:CloneRecord("LocomotionInteractionBase", "Interactions.LocomotionMalfunctionHack")
	TweakDB:SetFlat("LocomotionInteractionBase.captionIcon", "LocomotionChoiceCaptionPart")

	TweakDB:CloneRecord("SuicideChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("SuicideChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_02_Perk_1")
	TweakDB:SetFlat("Interactions.NetworkMassSuicide.captionIcon", "SuicideChoiceCaptionPart")

	TweakDB:CloneRecord("GrenadeChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("GrenadeChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_09_Perk_2")
	TweakDB:CloneRecord("GrenadeInteractionBase", "Interactions.GrenadeHack")
	TweakDB:SetFlat("GrenadeInteractionBase.captionIcon", "GrenadeChoiceCaptionPart")

	TweakDB:CloneRecord("DisableICEProtectionChoiceCaptionPart", "ChoiceCaptionParts.LocomotionMalfunctionIcon")
	TweakDB:SetFlat("DisableICEProtectionChoiceCaptionPart.texturePartID", "UIIcon.CombatHacking_Area_01_Perk_1")
	TweakDB:CloneRecord("DisableICEProtectionInteractionBase", "Interactions.GrenadeHack")
	TweakDB:SetFlat("DisableICEProtectionInteractionBase.captionIcon", "DisableICEProtectionChoiceCaptionPart")
	TweakDB:SetFlat("DisableICEProtectionInteractionBase.description", LocKey(91766ull))
	TweakDB:SetFlat("DisableICEProtectionInteractionBase.caption", LocKey(15553ull))








	function createMinigameAction(name, clone, actionName, activationTime, category, completionEffects, complexity, duration, instigatorPrereqs, memoryCost, objectActionUI, startEffects, targetPrereqs, miniGameType, characterarray)
		TweakDB:CloneRecord(name.."MinigameAction", clone)
		TweakDB:SetFlat(name.."MinigameAction"..".actionName", actionName)
		createConstantStatModifier(name.."MinigameActionActivationTimeStat", "Additive", "BaseStats.QuickHackUpload", activationTime)
		TweakDB:SetFlat(name.."MinigameAction"..".activationTime", {name.."MinigameActionActivationTimeStat"})
		TweakDB:SetFlat(name.."MinigameAction"..".category", category)
		TweakDB:SetFlat(name.."MinigameAction"..".completionEffects", {})
		for i,v in ipairs(completionEffects) do
			TweakDB:CloneRecord(name..v.."MinigameActionCompletionObjectActionEffect", "MinigameAction.NetworkAutoJamHack_inline0")
			TweakDB:SetFlat(name..v.."MinigameActionCompletionObjectActionEffect"..".statusEffect", v)
			addToList(name.."MinigameAction"..".completionEffects", name..v.."MinigameActionCompletionObjectActionEffect")
		end

		TweakDB:SetFlat(name.."MinigameAction"..".complexity", complexity)
		TweakDB:SetFlat(name.."MinigameAction"..".duration", duration)
		TweakDB:SetFlat(name.."MinigameAction"..".instigatorPrereqs", instigatorPrereqs)
		TweakDB:SetFlat(name.."MinigameAction"..".memoryCost", memoryCost)
		TweakDB:SetFlat(name.."MinigameAction"..".objectActionUI", objectActionUI)

		TweakDB:SetFlat(name.."MinigameAction"..".startEffects", {})

		for i,v in ipairs(startEffects) do
			TweakDB:CloneRecord(name..v.."MinigameActionStartObjectActionEffect", "MinigameAction.NetworkAutoJamHack_inline0")
			TweakDB:SetFlat(name..v.."MinigameActionStartObjectActionEffect"..".statusEffect", v)
			addToList(name.."MinigameAction"..".startEffects", name..v.."MinigameActionStartObjectActionEffect")
		end

		TweakDB:SetFlat(name.."MinigameAction"..".targetPrereqs", targetPrereqs)
		TweakDB:SetFlat(name.."MinigameAction"..".type", miniGameType)

		TweakDB:CloneRecord(name.."Program", "minigame_v2.DefaultMinigameNoCamerasNoTurrets_inline0")
		TweakDB:SetFlat(name.."Program"..".charactersChain", characterarray)
		TweakDB:SetFlat(name.."Program"..".program", name.."MinigameAction")

	end


	function createMinigameDef(name, bufferSize, defaultTrap, extraDifficulty, gridSize, gridSymbols, gridTraps, overlapProbability, programList, timeLimit, trapsProbability)
		TweakDB:CloneRecord(name.."MinigameDef", "minigame_v2.DefaultMinigame")
		TweakDB:SetFlat(name.."MinigameDef"..".bufferSize", bufferSize)
		TweakDB:SetFlat(name.."MinigameDef"..".defaultTrap", defaultTrap)
		TweakDB:SetFlat(name.."MinigameDef"..".extraDifficulty", extraDifficulty)
		TweakDB:SetFlat(name.."MinigameDef"..".gridSize", gridSize)
		TweakDB:SetFlat(name.."MinigameDef"..".gridSymbols", gridSymbols)
		TweakDB:SetFlat(name.."MinigameDef"..".gridTraps", gridTraps)
		TweakDB:SetFlat(name.."MinigameDef"..".overlapProbability", overlapProbability)
		TweakDB:SetFlat(name.."MinigameDef"..".overrideProgramsList", programList)
		TweakDB:SetFlat(name.."MinigameDef"..".timeLimit", timeLimit)
		TweakDB:SetFlat(name.."MinigameDef"..".trapsProbability", trapsProbability)
	end


	--row symbol 0 1C, 1 55, 2 BD, 3 E9, 4 FF, 5 XR, 6 XH, 7 IX, 8 XX, 9 X9, 10 X5
	--THE main symbols are minigame_v2.Common(1C) minigame_v2.Epic(E9) minigame_v2.Extra(FF) minigame_v2.Rare(BD) minigame_v2.Uncommon(55)
	TweakDB:SetFlat("minigame_v2.Common.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Rare.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Epic.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Extra.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Legendary3.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Uncommon.probability", 0.1)

	TweakDB:SetFlat("minigame_v2.Common4.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Epic4.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Extra4.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Legendary4.probability", 0.1)
	TweakDB:SetFlat("minigame_v2.Rare4.probability", 0.2)
	TweakDB:SetFlat("minigame_v2.Uncommon4.probability", 0.2)

	symbolList = {"minigame_v2.Common", "minigame_v2.Uncommon", "minigame_v2.Rare", "minigame_v2.Epic", "minigame_v2.Extra", "minigame_v2.Common4", "minigame_v2.Epic4", "minigame_v2.Extra4", "minigame_v2.Legendary4", "minigame_v2.Rare4", "minigame_v2.Uncommon4"}
	TweakDB:SetFlat("minigame_v2.DefaultMinigameSymbols.symbolsWithRarity", symbolList)

	function newArray(size)
		local t = {}
		for i = 1, size do
			t[i] = -1
		end
		return t
	end


	--[[
	createMinigameAction("ICEPick", "None", 1, "MinigameAction.DefenseSystemAccess", {"MinigameAction.ICEBrokenMinigameMajor"}, 30, 0, {}, 3, "Interactions.NetworkMajorICEBrokenNPCs", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1})
	createMinigameAction("WeaponJam", "AutoJam", 3, "MinigameAction.WeaponAccess", {"MinigameAction.JamWeaponMinigame"}, 30, 0, {}, 3, "Interactions.AutoJamHack", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1})
	createMinigameAction("AutoBlind", "AutoBlind", 5, "MinigameAction.CyberwareAccess", {"BaseStatusEffect.AutoBlind"}, 60, 0, {}, 3, "Interactions.AutoBlindHack", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1})
	createMinigameAction("AutoLocomotion", "AutoLocomotion", 5, "MinigameAction.CyberwareAccess", {"BaseStatusEffect.AutoLocomotion"}, 60, 0, {}, 6, "LocomotionInteractionBase", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1})
	createMinigameAction("AutoCyberware", "None", 5, "MinigameAction.CyberwareAccess", {"MinigameAction.CyberwareMalfunctionMinigame"}, 90, 0, {}, 6, "Interactions.NetworkCyberwareMalfunction", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1})
	createMinigameAction("MassVuln", "None", 5, "MinigameAction.DefenseSystemAccess", {"MinigameAction.VulnerabilityMinigame"}, 90, 0, {}, 6, "Interactions.NetworkVulnerableNPCs", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1})
	createMinigameAction("MassWeak", "None", 3, "MinigameAction.DefenseSystemAccess", {"MinigameAction.WeaknessMinigame"}, 60, 0, {}, 3, "Interactions.NetworkWeakNPCs", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1})

	createMinigameAction("MassSuicide", "Mass Suicide", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.SuicideWithWeapon"}, 200, 0, {}, 6, "Interactions.NetworkMassSuicide", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1,-1})
	createMinigameAction("MassMadness", "Mass Madness", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.Madness"}, 200, 0, {}, 6, "Interactions.NetworkMassMadness", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1,-1})
	createMinigameAction("MassCollapse", "None", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.SystemCollapse"}, 200, 0, {}, 6, "CollapseInteractionBase", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1,-1})
	createMinigameAction("MassGrenade", "None", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.SuicideWithGrenade"}, 200, 0, {}, 6, "GrenadeInteractionBase", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1,-1})
	]]


	--[[
	createStatusEffect("MinigameICEPickEffect", "MinigameAction.ICEBrokenMinigameMajor", {}, {}, 60, TweakDB:GetFlat("MinigameAction.ICEBrokenMinigameMajor.gameplayTags"), {}, {"MinigameAction.ICEBrokenMinigameMajor_inline1"})

	TweakDB:SetFlat("MinigameAction.JamWeaponMinigame.duration", "MinigameICEPickEffectdurationStatGrp")
	TweakDB:SetFlat("BaseStatusEffect.AutoBlind.duration", "MinigameICEPickEffectdurationStatGrp")
	TweakDB:SetFlat("BaseStatusEffect.AutoLocomotion.duration", "MinigameICEPickEffectdurationStatGrp")
	TweakDB:SetFlat("MinigameAction.CyberwareMalfunctionMinigame.duration", "MinigameICEPickEffectdurationStatGrp")
	TweakDB:SetFlat("MinigameAction.VulnerabilityMinigame.duration", "MinigameICEPickEffectdurationStatGrp")
	TweakDB:SetFlat("MinigameAction.WeaknessMinigame.duration", "MinigameICEPickEffectdurationStatGrp")
	]]


	--[[
	createMinigameAction("ICEPick", "MinigameAction.NetworkLowerICEMajor", "None", 1, "MinigameAction.DefenseSystemAccess", {"MinigameICEPickEffect"}, 30, 0, {}, 1, "Interactions.NetworkMajorICEBrokenNPCs", {}, {}, "MinigameAction.Both", newArray(ICEPickLength))

	createMinigameAction("WeaponJam", "MinigameAction.NetworkAutoJamHack", "AutoJam", 3, "MinigameAction.WeaponAccess", {"MinigameAction.JamWeaponMinigame"}, 30, 0, {}, 1, "Interactions.AutoJamHack", {}, {}, "MinigameAction.Both", newArray(WeapJamLength))

	createMinigameAction("AutoBlind", "MinigameAction.NetworkAutoBlindHack", "AutoBlind", 5, "MinigameAction.CyberwareAccess", {"BaseStatusEffect.AutoBlind"}, 60, 0, {}, 1, "Interactions.AutoBlindHack", {}, {}, "MinigameAction.Both", newArray(BlindLength))

	createMinigameAction("AutoLocomotion", "MinigameAction.NetworkAutoLocomotionHack", "AutoLocomotion", 5, "MinigameAction.CyberwareAccess", {"BaseStatusEffect.AutoLocomotion"}, 60, 0, {}, 1, "LocomotionInteractionBase", {}, {}, "MinigameAction.Both", newArray(LocoLength))

	createMinigameAction("AutoCyberware", "MinigameAction.NetworkCyberwareMalfunctionHack", "None", 5, "MinigameAction.CyberwareAccess", {"MinigameAction.CyberwareMalfunctionMinigame"}, 90, 1, {}, 0, "Interactions.NetworkCyberwareMalfunction", {}, {}, "MinigameAction.Both", newArray(CyberwareLength))

	createMinigameAction("MassVuln", "MinigameAction.NetworkVulnerableNPCs", "None", 5, "MinigameAction.DefenseSystemAccess", {"MinigameAction.VulnerabilityMinigame"}, 90, 0, {}, 1, "Interactions.NetworkVulnerableNPCs", {}, {}, "MinigameAction.Both", newArray(VulnLength))

	createMinigameAction("MassWeak", "MinigameAction.NetworkWeakNPCs", "None", 3, "MinigameAction.DefenseSystemAccess", {"MinigameAction.WeaknessMinigame"}, 60, 0, {}, 1, "Interactions.NetworkWeakNPCs", {}, {}, "MinigameAction.Both", newArray(WeakLength))

	createMinigameAction("MassSuicide", "MinigameAction.NetworkSuicideHack", "Mass Suicide", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.SuicideWithWeapon"}, 200, 0, {}, 1, "Interactions.NetworkMassSuicide", {}, {}, "MinigameAction.Both", newArray(SuicideLength))

	createMinigameAction("MassMadness", "MinigameAction.NetworkMadnessHack", "Mass Madness", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.Madness"}, 200, 0, {}, 1, "Interactions.NetworkMassMadness", {}, {}, "MinigameAction.Both", newArray(MadLength))

	createMinigameAction("MassCollapse", "MinigameAction.NetworkSuicideHack", "None", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.SystemCollapse"}, 200, 0, {}, 1, "CollapseInteractionBase", {}, {}, "MinigameAction.Both", newArray(CollapseLength))

	createMinigameAction("MassGrenade", "MinigameAction.NetworkSuicideHack", "None", 8, "MinigameAction.NeuralAccess", {"BaseStatusEffect.SuicideWithGrenade"}, 200, 0, {}, 1, "GrenadeInteractionBase", {}, {}, "MinigameAction.Both", newArray(GrenadeLength))

	]]


	createStatusEffect("Minigame20sEffect", "BaseStatusEffect.CombatStim", {}, {}, 20, TweakDB:GetFlat("BaseStatusEffect.CombatStim.gameplayTags"), {}, {})
	createStatusEffect("Minigame3minEffect", "BaseStatusEffect.CombatStim", {}, {}, 180, TweakDB:GetFlat("BaseStatusEffect.CombatStim.gameplayTags"), {}, {})

	--change duration of infinite duration effects
	TweakDB:SetFlat("MinigameAction.JamWeaponMinigame.duration", "Minigame3minEffectdurationStatGrp")
	TweakDB:SetFlat("BaseStatusEffect.AutoBlind.duration", "Minigame3minEffectdurationStatGrp")
	TweakDB:SetFlat("BaseStatusEffect.AutoLocomotion.duration", "Minigame20sEffectdurationStatGrp")
	TweakDB:SetFlat("MinigameAction.CyberwareMalfunctionMinigame.duration", "Minigame3minEffectdurationStatGrp")



	createMinigameAction("ICEPick", "MinigameAction.NetworkLowerICEMajor", "None", 0, "MinigameAction.DefenseSystemAccess", {}, 30, 0, {}, 1, "Interactions.NetworkMajorICEBrokenNPCs", {"MinigameAction.ICEBrokenMinigameMajor"}, {}, "MinigameAction.Both", newArray(ICEPickLength))

	createMinigameAction("WeaponJam", "MinigameAction.NetworkAutoJamHack", "AutoJam", 0, "MinigameAction.WeaponAccess", {}, 30, 0, {}, 1, "Interactions.AutoJamHack", {"MinigameAction.JamWeaponMinigame"}, {}, "MinigameAction.Both", newArray(WeapJamLength))

	createMinigameAction("AutoBlind", "MinigameAction.NetworkAutoBlindHack", "AutoBlind", 0, "MinigameAction.CyberwareAccess", {}, 60, 0, {}, 1, "Interactions.AutoBlindHack", {"BaseStatusEffect.AutoBlind"}, {}, "MinigameAction.Both", newArray(BlindLength))

	createMinigameAction("AutoLocomotion", "MinigameAction.NetworkAutoLocomotionHack", "AutoLocomotion", 0, "MinigameAction.CyberwareAccess", {}, 60, 0, {}, 1, "LocomotionInteractionBase", {"BaseStatusEffect.AutoLocomotion"}, {}, "MinigameAction.Both", newArray(LocoLength))

	createMinigameAction("AutoCyberware", "MinigameAction.NetworkCyberwareMalfunctionHack", "None", 0, "MinigameAction.CyberwareAccess", {}, 90, 1, {}, 0, "Interactions.NetworkCyberwareMalfunction", {"MinigameAction.CyberwareMalfunctionMinigame"}, {}, "MinigameAction.Both", newArray(CyberwareLength))

	createMinigameAction("MassVuln", "MinigameAction.NetworkVulnerableNPCs", "None", 0, "MinigameAction.DefenseSystemAccess", {}, 90, 0, {}, 1, "Interactions.NetworkVulnerableNPCs", {"MinigameAction.VulnerabilityMinigame"}, {}, "MinigameAction.Both", newArray(VulnLength))

	createMinigameAction("MassWeak", "MinigameAction.NetworkWeakNPCs", "None", 0, "MinigameAction.DefenseSystemAccess", {}, 60, 0, {}, 1, "Interactions.NetworkWeakNPCs", {"MinigameAction.WeaknessMinigame"}, {}, "MinigameAction.Both", newArray(WeakLength))

	createMinigameAction("MassSuicide", "MinigameAction.NetworkSuicideHack", "Mass Suicide", 0, "MinigameAction.NeuralAccess", {}, 200, 0, {}, 1, "Interactions.NetworkMassSuicide", {"BaseStatusEffect.SuicideWithWeapon"}, {}, "MinigameAction.Both", newArray(SuicideLength))

	createMinigameAction("MassMadness", "MinigameAction.NetworkMadnessHack", "Mass Madness", 0, "MinigameAction.NeuralAccess", {}, 200, 0, {}, 1, "Interactions.NetworkMassMadness", {"BaseStatusEffect.Madness"}, {}, "MinigameAction.Both", newArray(MadLength))

	createMinigameAction("MassCollapse", "MinigameAction.NetworkSuicideHack", "None", 0, "MinigameAction.NeuralAccess", {}, 200, 0, {}, 1, "CollapseInteractionBase", {"BaseStatusEffect.SystemCollapse"}, {}, "MinigameAction.Both", newArray(CollapseLength))

	createMinigameAction("MassGrenade", "MinigameAction.NetworkSuicideHack", "None", 0, "MinigameAction.NeuralAccess", {}, 200, 0, {}, 1, "GrenadeInteractionBase", {"BaseStatusEffect.SuicideWithGrenade"}, {}, "MinigameAction.Both", newArray(GrenadeLength))







	createConstantStatModifier("DisableThickICEStat", "Multiplier", "BaseStats.HasICELevelBooster", 0)
	createConstantStatModifier("DisableBoostedCortex", "Multiplier", "BaseStats.HasBoostedCortex", 0)
	createConstantStatModifier("DisableGraphiteTissueStat", "Multiplier", "BaseStats.HasGraphiteTissue", 0)
	createStatusEffect("DisableICEProtectionQuickhackEffect", "BaseStatusEffect.CyberwareMalfunction", {"quickhack_cyberware_malfunction"}, {"hacks_cyberware_malfunction", "netrunner_virus_big"}, -1, TweakDB:GetFlat("BaseStatusEffect.CyberwareMalfunction.gameplayTags"), {}, {"DisableThickICEStat", "DisableBoostedCortex", "DisableGraphiteTissueStat"})

	--createMinigameAction("DisableICEProtection", "None", 8, "MinigameAction.NeuralAccess", {"DisableICEProtectionQuickhackEffect"}, 200, 0, {}, 6, "DisableICEProtectionInteractionBase", {}, {}, "MinigameAction.Both", {-1,-1,-1,-1,-1,-1,-1,-1})

	createMinigameAction("DisableICEProtection", "MinigameAction.NetworkLowerICEMajor", "None", 0, "MinigameAction.NeuralAccess", {}, 200, 0, {}, 1, "DisableICEProtectionInteractionBase", {"DisableICEProtectionQuickhackEffect"}, {}, "MinigameAction.Both", newArray(ICEBreakerLength))



	--weakness reduces armor, physical res and bonus hp by 0.5
	createConstantStatModifier("NetworkWeakArmorReduction", "Multiplier", "BaseStats.Armor", 0.5)
	createConstantStatModifier("NetworkWeakBonusHPReduction", "Multiplier", "BaseStats.BonusHealth", 0.5)
	createConstantStatModifier("NetworkWeakPhysicalReduction", "Additive", "BaseStats.PhysicalResistance", -30)
	TweakDB:SetFlat("BaseStatusEffect.Weak_inline2.stats", {"NetworkWeakArmorReduction", "NetworkWeakBonusHPReduction", "NetworkWeakPhysicalReduction"})




	--vul reduces elemental resistances by 30%
	createConstantStatModifier("VulChemRes", "Additive", "BaseStats.ChemicalResistance", -30)
	createConstantStatModifier("VulElecRes", "Additive", "BaseStats.ElectricResistance", -30)
	createConstantStatModifier("VulTherRes", "Additive", "BaseStats.ThermalResistance", -30)
	TweakDB:SetFlat("BaseStatusEffect.MajorVulnerable_inline0.stats", {"VulChemRes", "VulElecRes", "VulTherRes"})

	TweakDB:SetFlat("AIQuickHackStatusEffect.BuffDamageReduction_inline1.statType", "BaseStats.QuickhackResistance")--seems to be percentage based
	TweakDB:SetFlat("AIQuickHackStatusEffect.BuffDamageReduction_inline1.value", 50)
	TweakDB:SetFlat("AIQuickHackStatusEffect.BuffDamageReduction_inline2.value", 0)
	TweakDB:SetFlat("AIQuickHackStatusEffect.BuffDamageReduction_inline3.value", 0)
	TweakDB:SetFlat("AIQuickHackStatusEffect.BuffDamageReduction_inline4.value", 0)





	function setMinigame(minigamename, bufferSize, extraDifficulty, gridSize, gridSymbols, gridTraps, overlapProbability, overrideProgramsList, timeLimit, trapsProbability)
		TweakDB:SetFlat(minigamename..".bufferSize", bufferSize)
		TweakDB:SetFlat(minigamename..".extraDifficulty", extraDifficulty)
		TweakDB:SetFlat(minigamename..".gridSize", gridSize)
		TweakDB:SetFlat(minigamename..".gridSymbols", gridSymbols)
		TweakDB:SetFlat(minigamename..".gridTraps", gridTraps)
		TweakDB:SetFlat(minigamename..".overlapProbability", overlapProbability)
		TweakDB:SetFlat(minigamename..".overrideProgramsList", overrideProgramsList)
		TweakDB:SetFlat(minigamename..".timeLimit", timeLimit)
		TweakDB:SetFlat(minigamename..".trapsProbability", trapsProbability)
	end




	--default netrunner minigame grid 7 buffer 0
	--tougher netrunner/default miniboss grid 8 buffer 0
	--sasquatch has special cyberwaremalf with long chain(8) to disable reflect grid 8 buffer 12. Only has reflect ability
	--brigitte/vdb has more difficult minigame than sasquatch, higher trap prob
	--oda only has thick ice/graphite, same minigame as sasquatch
	--smasher has all ice protection


	--suicide quickhack damage
	TweakDB:SetFlat("Attacks.SuicideBulletEffect_inline0.modifierType", "Additive")
	TweakDB:SetFlat("Attacks.SuicideBulletEffect_inline0.value", 150)

	--no change to defaultminigame because it's used by access points
	--setMinigame("minigame_v2.DefaultMinigame", 0, 30, 7, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.1)

	--setMinigame("minigame_v2.DefaultMinigameNoCameras", 0, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.15)

	--setMinigame("minigame_v2.DefaultMinigameNoTurrets", 10, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.15)

	--default netrunner minigame
	--setMinigame("minigame_v2.PredefinedBoardWithProgramsTest", 0, 30, 7, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.1)
	--setMinigame("minigame_v2.DefaultMinigameNoCameras", 0, 30, 7, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.1)

	--elite netrunner minigame
	--setMinigame("minigame_v2.DefaultMinigameNoTurrets", 0, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.15)
	--setMinigame("minigame_v2.SuicideMinigame", 0, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.15)

	--setMinigame("minigame_v2.PlacideMinigame", 10, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.2)

	--setMinigame("minigame_v2.DefaultMinigameNoCamerasNoTurrets", 12, 100, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.25)

	--setMinigame("minigame_v2.PredefinedBoardMinigameTest", 12, 100, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.25)


	--working ones
	--[[
	setMinigame("minigame_v2.PredefinedBoardWithProgramsTest", 0, 30, 7, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.1)

	setMinigame("minigame_v2.SuicideMinigame", 0, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.15)

	setMinigame("minigame_v2.PlacideMinigame", 10, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.2)

	setMinigame("minigame_v2.PredefinedBoardMinigameTest", 12, 100, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.25)

	]]


	if EnableUltimateQuickhacksBreach then

		setMinigame("minigame_v2.PredefinedBoardWithProgramsTest", 0, 30, 7, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.1)

		setMinigame("minigame_v2.SuicideMinigame", 0, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "MassSuicideProgram", "MassMadnessProgram", "MassCollapseProgram", "MassGrenadeProgram"}, 30, 0.15)

		setMinigame("minigame_v2.PlacideMinigame", 10, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.2)

		setMinigame("minigame_v2.PredefinedBoardMinigameTest", 12, 100, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.25)

	else

		setMinigame("minigame_v2.PredefinedBoardWithProgramsTest", 0, 30, 7, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram"}, 30, 0.1)

		setMinigame("minigame_v2.SuicideMinigame", 0, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram"}, 30, 0.15)
	
		setMinigame("minigame_v2.PlacideMinigame", 10, 30, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.2)
	
		setMinigame("minigame_v2.PredefinedBoardMinigameTest", 12, 100, 8, {}, {}, 0.5, {"ICEPickProgram", "WeaponJamProgram", "AutoBlindProgram", "AutoLocomotionProgram", "AutoCyberwareProgram", "MassVulnProgram", "MassWeakProgram", "DisableICEProtectionProgram"}, 30, 0.25)

    end

	DefaultNetrunnerList = {"Character.afterlife_merc_netrunner_m_easy", "Character.afterlife_merc_netrunner_m_hard", "Character.afterlife_merc_netrunner_m_medium", "Character.afterlife_merc_netrunner_w_easy", "Character.afterlife_merc_netrunner_w_hard", "Character.afterlife_merc_netrunner_w_medium", "Character.afterlife_netrunner_netrunner2_yukimura_ma_rare", "Character.afterlife_netrunner_netrunner2_yukimura_wa_rare", "Character.bou_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.bou_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.combat_tower_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.combat_zone_gate_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.con_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.con_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.cpz_security_netrunner_m_hard", "Character.cvi_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.dtn_security_netrunner_netrunner2_lexington_ma_rare", "Character.dtn_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.ep1_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.generic_netrunner_netrunner_chao_ma_rare", "Character.generic_netrunner_netrunner_chao_ma_rare_ow_city_scene", "Character.generic_netrunner_netrunner_chao_wa_rare", "Character.generic_netrunner_netrunner_chao_wa_rare_ow_city_scene", "Character.high_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.high_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.hil_07_netrunner", "Character.hil_security_netrunner_netrunner2_lexington_ma_rare", "Character.hpark_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.hpark_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.jpn_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.kab_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.kab_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.lch_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.lch_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.ma_pac_cvi_07_scavenger_grunt3_netrunner2_nova_ma_rare_Michal_Glowinski", "Character.ma_wat_nid_26_netrunner", "Character.ma_wbr_nok_05_netrunner", "Character.maelstrom_netrunner_netrunner2_lexington_ma", "Character.mon_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.mon_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.mq002_scavenger_netrunner", "Character.mq036_scavenger_netrunner", "Character.mq301_ambush_scav_soldier_netrunner2_netrunner2_nova_wa_rare", "Character.mq306_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.nid_generic_netrunner_netrunner_chao_ma_rare", "Character.nid_generic_netrunner_netrunner_chao_wa_rare", "Character.nid_maelstrom_netrunner_m_medium", "Character.nid_maelstrom_netrunner_netrunner2_lexington_ma", "Character.nid_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.nid_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.prevention_bountyhunter_netrunner_wa", "Character.q003_maelstrom_netrunner", "Character.q003_meat_factory_grunt3_netrunner2_nove_ma_rare", "Character.q103_wraiths_netrunner", "Character.q105_bds_officer_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.q105_bds_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.q105_dollhouse_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.q301_crashsite_kurt_netrunner", "Character.q301_gate_reinforcements_kurt_netrunner", "Character.q304_stadium_kurtz_scene_netrunner2_lexington_ma", "Character.rcr_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.rcr_security_netrunner_netrunner2_lexington_ma_rare", "Character.sa_ep1_courier_loop_enemies_scav_netrunner2_nova_wa", "Character.scavenger_grunt3_netrunner2_nova_ma_rare", "Character.scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.security_netrunner_netrunner2_lexington_ma_rare", "Character.sta_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.sta_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.sts_ep1_01_netrunner_wa", "Character.sts_ep1_03_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.sts_ep1_04_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.sts_ep1_06_enemy_netrunner_rare_ma", "Character.sts_ep1_06_enemy_netrunner_rare_suit_ma", "Character.sts_ep1_06_enemy_netrunner_rare_suit_ma_outside_sts", "Character.sts_ep1_07_kurtz_ranger_netrunner_ma_rare", "Character.sts_ep1_08_scavenger_netrunner2_netrunner2_nova_wa_rare", "Character.sts_ep1_13_guard_netrunner2_lexington_ma_rare", "Character.sts_std_arr_03_netrunner", "Character.sts_std_arr_11_6thStreet_ganger_netrunner", "Character.sts_wat_nid_04_enemy_maelstrom_netrunner_netrunner2_lexington_ma", "Character.sts_wat_nid_06_maelstrom_netrunner_netrunner2_lexington_ma", "Character.sts_wbr_jpn_12_tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.tygerclaw_gangster3_netrunner_nue_wa_rare", "Character.we_ep1_01_kurtz_netrunner2_netrunner2_lexington_ma_rare", "Character.wwd_scavenger_grunt3_netrunner2_nova_ma_rare", "Character.sts_cct_dtn_02_dozy", "Character.sts_wat_kab_03_solo", "Character.rcr_05_cyberpsycho", "Character.sts_hey_gle_05_el_gallo", "Character.wwd_05_target", "Character.q103_raffen_nash", "Character.ma_hey_gle_07_afterlife_merc_generic_medium_range_w_hard_Tracy_Phillips", "Character.ma_pac_cvi_13_afterlife_rare_fmelee3_katana_ma_elite", "Character.sts_ep1_10_dodger", "Character.sts_ep1_02_kurt_netrunner_wa", "Character.we_ep1_17_miniboss", "Character.we_ep1_17_techie", "Character.sts_ep1_07_kurt_officer", "Character.sts_ep1_07_6thstreet_grunt1_ranged1_nova_ma_deal", "Character.sts_ep1_07_kurtz_ma_fast_handgun", "Character.mq306_angie", "Character.we_ep1_17_techie", "Character.wst_ep1_17_merc", "Character.sts_ep1_13_enemy_mini_boss", "Character.cbj_ep1_001_cyberjunkie", "Character.cbj_ep1_002_cyberjunkie", "Character.cbj_ep1_003_cyberjunkie", "Character.cbj_ep1_004_cyberjunkie", "Character.cbj_ep1_005_cyberjunkie", "Character.cbj_ep1_006_cyberjunkie", "Character.cbj_ep1_007_cyberjunkie", "Character.cbj_ep1_008_cyberjunkie", "Character.cbj_ep1_009_cyberjunkie", "Character.cbj_ep1_010_cyberjunkie", "Character.cbj_ep1_011_cyberjunkie", "Character.q304_stadium_kurt_spec_pistol_escape_ma", "Character.sts_ep1_07_kurtz_ma_sniper", "Character.q110_mall_animals_grunt2_hmelee2_hammer_wba_rare", "Character.q110_mall_animals_grunt3_gunner2_defender_mb_rare", "Character.sq004_raffen_shiv_boss_alpha", "Character.sq004_raffen_shiv_boss_gamma", "Character.we_ep1_01_kurtz_tech_franged2_handgun_ma_rare", "Character.q304_stadium_kurt_soldier_fast_escape_ma"}

	for i,v in ipairs(DefaultNetrunnerList) do
		TweakDB:SetFlat(v..".minigameInstance", "minigame_v2.PredefinedBoardWithProgramsTest")
	end



	EliteNetrunnerMinigameList = {"Character.arasaka_netrunner_netrunner2_yukimura_ma_rare", "Character.arasaka_netrunner_netrunner2_yukimura_wa_rare", "Character.arr_arasaka_netrunner_netrunner2_yukimura_wa_rare", "Character.bou_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.bou_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.bou_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.con_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.con_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.con_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.cpz_netwatch_agent_netrunner3_omaha_elite", "Character.cvi_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.cvi_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.dtn_arasaka_netrunner_netrunner2_yukimura_wa_rare", "Character.ep1_voodooboys_netrunner3_netrunner3_quasar_ma_elite", "Character.ep1_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.high_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.high_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.high_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.hpark_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.hpark_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.hpark_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.kab_netwatch_agent_netrunner3_omaha_elite", "Character.mon_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.mon_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.mon_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.netwatch_agent_netrunner3_omaha_elite", "Character.nid_netwatch_agent_netrunner3_omaha_elite", "Character.nok_arasaka_netrunner_netrunner2_yukimura_ma_rare", "Character.q110_esc_reinforcementcaller_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.q110_esc_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.q113_estate_mansion_netrunner", "Character.q303_voodoo_boy_guard_netrunner_wa", "Character.q304_voodooboys_car_rental_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.sta_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.sta_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.sta_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.sts_ep1_12_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.sts_ep1_12_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.wwd_voodooboys_netrunner2_netrunner2_lexington_ma_rare", "Character.wwd_voodooboys_netrunner2_netrunner2_lexington_wa_rare", "Character.wwd_voodooboys_netrunner3_netrunner3_quasar_wa_elite", "Character.ma_wat_nid_01_outpost_miniboss", "Character.ina_09_jason_2", "Character.ma_bls_ina_se1_08_cyberpsycho", "Character.ma_hey_spr_06_cyberpsycho", "Character.ma_cct_dtn_03_cyberpsycho", "Character.ma_wat_nid_03_shard_psycho", "Character.ma_cct_dtn_07_cyberpsycho", "Character.ma_hey_spr_04_cyberpsycho", "Character.ma_wat_kab_02_cyberpsycho", "Character.ma_bls_ina_se1_22_psycho", "Character.ma_pac_cvi_08_psycho", "Character.ma_wat_lch_06_cyberpsycho", "Character.ma_wat_kab_08_cyberpsycho", "Character.ma_wat_nid_22_monk", "Character.ma_wat_lch_01_outpost_miniboss", "Character.ma_wat_lch_08_outpost_miniboss", "Character.ma_wbr_jpn_20_outpost_miniboss", "Character.ma_wat_nid_02_outpost_miniboss", "Character.ma_wat_nid_06_outpost_miniboss", "Character.ma_wbr_nok_05_outpost_miniboss", "Character.ma_std_arr_03_outpost_miniboss", "Character.ma_std_rcr_08_outpost_miniboss", "Character.ma_std_rcr_18_outpost_miniboss", "Character.ma_bls_ina_se1_17_outpost_miniboss", "Character.ma_bls_se5_07_outpost_miniboss", "Character.ma_pac_cvi_12_outpost_miniboss", "Character.ma_pac_wwd_02_outpost_miniboss", "Character.ma_hey_gle_02_outpost_miniboss", "Character.ma_hey_rey_06_outpost_miniboss", "Character.ma_hey_spr_11_outpost_miniboss", "Character.sts_wat_kab_107_taki_kenmochi", "Character.sts_std_arr_01_sixthstreet_officer_officer_overture_ma", "Character.mq008_6th_street_representative", "Character.sts_std_arr_11_lucius", "Character.sts_hey_rey_08_karubo", "Character.spr_03_valentinos_man_Pablo", "Character.kruger", "Character.kruger_combat", "Character.bou_kurtz_exo", "Character.combat_tower_kurtz_exo", "Character.combat_zone_gate_kurtz_exo", "Character.con_kurtz_exo", "Character.hpark_kurtz_exo", "Character.kurtz_exo", "Character.mon_kurtz_exo", "Character.q303_tech_floor_guard_exo", "Character.sta_kurtz_exo", "Character.we_ep1_01_mini_boss_2nd_phase", "Character.we_ep1_01_mini_boss_1st_phase", "Character.sts_ep1_12_droid_miniboss", "Character.mq304_vdb_04_wa", "Character.sq027_militech_escort_officer", "Character.sts_cct_cpz_01_enemy_security_shotgun", "Character.mq304_vdb_04_wa"}

	for i,v in ipairs(EliteNetrunnerMinigameList) do
		TweakDB:SetFlat(v..".minigameInstance", "minigame_v2.SuicideMinigame")
	end


	TweakDB:SetFlat("Character.q110_animals_boss.minigameInstance", "minigame_v2.PlacideMinigame")
	TweakDB:SetFlat("Character.Cyberninja_Oda.minigameInstance", "minigame_v2.PlacideMinigame")
	--addToList("Character.q110_animals_boss.abilities", "Ability.IsTier4Archetype")
	--addToList("Character.Cyberninja_Oda.abilities", "Ability.IsTier4Archetype")


	--add arasaka netrunners from main quest. prevent mass suicide on entire compound
	BrigitteMinigameList = {"Character.q110_vdb_elder_1", "Character.q110_vdb_elder_2", "Character.q110_vdb_elder_3", "Character.q110_vdb_elder_4", "Character.q110_vdb_elder_5", "Character.q110_vdb_elder_2", "Character.Voodoo_Queen", "Character.Placide", "Character.maxtac_av_netrunner_ma", "Character.maxtac_av_netrunner_ma_2nd_wave", "Character.q305_maxtac_miniboss_netrunner_ma", "Character.q306_black_ops_netrunner", "Character.sts_wat_kab_04_ryoko", "Character.ma_wat_nid_15_psycho", "Character.ma_wat_nid_15_psycho_02", "Character.ma_wat_nid_15_psycho_03", "Character.ma_std_arr_06_cyberpsycho", "Character.ma_pac_cvi_15_cyberpsycho", "Character.ma_wat_nid_01_outpost_miniboss", "Character.q112_infiltration_arasaka_guard_officer_ninja", "Character.q112_arasaka_agent_rifle_flashlight_officer", "Character.q115_arasaka_jungle_officer", "Character.q115_arasaka_atrium_melee_mantis_blades", "Character.q115_lobby_arasaka_ninja_mantis_elite", "Character.q114_arasaka_manufacturing_officer", "Character.sts_wat_kab_04_ryoko", "Character.sts_wat_kab_04_tanyimu", "Character.we_ep1_05_mini_boss", "Character.sts_ep1_08_kgb_boss", "Character.q304_kurt_miniboss", "Character.q305_maxtac_miniboss_fshotgun_mb", "Character.q305_maxtac_miniboss_frifle_wa", "Character.q305_maxtac_miniboss_mantis_ma", "Character.q113_estate_mansion_guard_ninja", "Character.q112_arasaka_agent_netrunner", "Character.q005_arasaka_kill_squad_netrunner", "Character.q112_arasaka_netrunner", "Character.q112_infiltration_arasaka_netrunner", "Character.q113_arasaka_jungle_netrunner", "Character.q114_arasaka_manufacturing_netrunner", "Character.q115_atrium_netrunner", "Character.q113_ceo_floor_netrunner", "Character.q306_black_ops_fast_ranged", "Character.q306_black_ops_ma_fast_spotter", "Character.q306_black_ops_shotgunner_fast_spotter"}
	for i,v in ipairs(BrigitteMinigameList) do
		TweakDB:SetFlat(v..".minigameInstance", "minigame_v2.PlacideMinigame")
	end

	TweakDB:SetFlat("Character.q113_boss_smasher.minigameInstance", "minigame_v2.PredefinedBoardMinigameTest")--q113 is used for all smasher fights it seems
	--addToList("Character.q113_boss_smasher.abilities", "Ability.IsTier4Archetype")
	TweakDB:SetFlat("Character.q113_smasher_arasaka_netrunner.minigameInstance", "minigame_v2.PredefinedBoardMinigameTest")

	--some bosses dont have breach action
	addToList("Character.we_ep1_05_mini_boss.objectActions", "QuickHack.RemoteBreach")

	--TweakDB:SetFlat("Character.q304_kurt_miniboss.minigameInstance", "minigame_v2.SuicideMinigame")
	TweakDB:SetFlat("Character.jurij.minigameInstance", "minigame_v2.SuicideMinigame")
	--TweakDB:SetFlat("Character.kruger_combat.minigameInstance", "minigame_v2.SuicideMinigame")

	--vdb robot, ayozarin and ribakov have icebreaker
	--kurt,yuri,murphy have mass ultimates

		
end




