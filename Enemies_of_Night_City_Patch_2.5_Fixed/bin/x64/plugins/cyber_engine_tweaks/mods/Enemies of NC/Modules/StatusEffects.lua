if EnableMod then

    TweakDB:SetFlat("SpecialActions.CombatStimCooldown.duration", ConsumableCooldown)
    TweakDB:SetFlat("SpecialActions.CombatStimCooldown_Hard.duration", ConsumableCooldown)
    TweakDB:SetFlat("SpecialActions.CombatStimCooldown_VeryHard.duration", ConsumableCooldown)

    TweakDB:SetFlat("BaseStatusEffect.CombatStim_inline7.valuePerSec", CombatStimRegenRate)

    TweakDB:SetFlat("BurnChance.value", ApplicationEffectChance)
    TweakDB:SetFlat("BurnApplicationEffectdurationStat.value", ApplicationEffectDuration)
    TweakDB:SetFlat("ShockApplicationEffectdurationStat.value", ApplicationEffectDuration)
    TweakDB:SetFlat("PoisonApplicationEffectdurationStat.value", ApplicationEffectDuration)
    TweakDB:SetFlat("BleedApplicationEffectdurationStat.value", ApplicationEffectDuration)

    TweakDB:SetFlat("BerserkMeleeEffectdurationStat.value", BerserkDuration)
    TweakDB:SetFlat("BerserkCooldown.duration", BerserkCooldown)


end