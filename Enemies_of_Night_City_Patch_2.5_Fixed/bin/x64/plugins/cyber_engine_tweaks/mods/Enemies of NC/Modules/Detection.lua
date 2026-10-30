if EnableMod then


    --Detection speeds 

    TweakDB:SetFlat("Senses.AttentionDetectionCurve.maxDistance", 50)
    TweakDB:SetFlat("Senses.DefaultDetectionCurve.maxDistance", 50)
    TweakDB:SetFlat("Senses.StealthDetectionCurve.maxDistance", 50)
    TweakDB:SetFlat("Senses.Relaxed.detectionFactor", RelaxedSpeed)
    TweakDB:SetFlat("Senses.Alerted.detectionFactor", AlertedSpeed)
    TweakDB:SetFlat("Senses.Combat.detectionFactor", CombatSpeed)

    TweakDB:SetFlat("Senses.SniperRelaxed50m.detectionFactor", SniperSpeed)
    TweakDB:SetFlat("Senses.SniperRelaxed100m.detectionFactor", SniperSpeed)
    TweakDB:SetFlat("Senses.SniperRelaxed150m.detectionFactor", SniperSpeed)

    TweakDB:SetFlat("Senses.SniperRelaxed50m.curves", TweakDB:GetFlat("Senses.SniperRelaxed100m.curves"))
    TweakDB:SetFlat("Senses.SniperRelaxed50m.materialCurves", TweakDB:GetFlat("Senses.SniperRelaxed100m.materialCurves"))
    TweakDB:SetFlat("Senses.SniperRelaxed50m.shapes", TweakDB:GetFlat("Senses.SniperRelaxed100m.shapes"))


    TweakDB:SetFlat("Senses.q112_sniper_relaxed.detectionFactor", ParadeRelaxedSpeed)
    TweakDB:SetFlat("Senses.q112_sniper_alerted.detectionFactor", ParadeAlertedSpeed)
    --TweakDB:SetFlat("Senses.q112_sniper_combat.detectionFactor", 800)

    TweakDB:SetFlat("Senses.PeripheralMedium.range", PeriMedRange)

    TweakDB:SetFlat("Senses.AvTurret.detectionFactor", TurretSpeed)
    TweakDB:SetFlat("Senses.BasicTurret.detectionFactor", TurretSpeed)
    --TweakDB:SetFlat("Senses.DroneDefault.detectionFactor", 800)
    --TweakDB:SetFlat("Senses.DroneScan.detectionFactor", 800)
    TweakDB:SetFlat("Senses.NestTurret.detectionFactor", TurretSpeed)
    TweakDB:SetFlat("Senses.Q115_NestTurret_Gate.detectionFactor", TurretSpeed)







end