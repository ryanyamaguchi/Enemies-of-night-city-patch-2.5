if EnableMod then

    --decrease npc smart weapon lock on time
    TweakDB:SetFlat("Items.Base_NPC_SmartGun_Stats_inline0.value", SmartWeapLockOnTime)
    TweakDB:SetFlat("Items.Base_NPC_SmartGun_Stats_inline1.value", SmartWeapLockOutTime)--lock out time

    TweakDB:SetFlat("BaseStatusEffect.GlowingTattoos_inline2.value", GlowingTattoos)
    TweakDB:SetFlat("KangSoldierSmart.value", KangTaoSmartDisrupt)

end