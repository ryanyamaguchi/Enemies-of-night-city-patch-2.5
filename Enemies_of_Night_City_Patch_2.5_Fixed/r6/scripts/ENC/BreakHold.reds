// BreakHold.reds — Patch 2.5 Compatible

func calculateTakedownBodyRequirements(const player: wref<GameObject>, const newTargetPuppet: wref<GameObject>) -> Int32 {
  if !IsDefined(player) || !IsDefined(newTargetPuppet) {
    return 0;
  };

  let statsSystem: ref<StatsSystem> = GameInstance.GetStatsSystem(player.GetGame());
  if !IsDefined(statsSystem) {
    return 0;
  };

  let targetID: StatsObjectID = Cast<StatsObjectID>(newTargetPuppet.GetEntityID());

  let targetStaminaValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.Stamina));
  let playerBodyRequirement: Int32 = targetStaminaValue / 100;

  let targetBerserkValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.HasBerserk));
  if targetBerserkValue == 1 {
    playerBodyRequirement += 8;
  };

  let targetShotgunnerValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsShotgunnerArchetype));
  if targetShotgunnerValue == 1 {
    playerBodyRequirement += 6;
  };

  let targetHeavyRangedValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsHeavyRangedArchetype));
  if targetHeavyRangedValue == 1 {
    playerBodyRequirement += 8;
  };

  let targetStrongMeleeValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsStrongMeleeArchetype));
  if targetStrongMeleeValue == 1 {
    playerBodyRequirement += 8;
  };

  if playerBodyRequirement > 20 {
    playerBodyRequirement = 20;
  };
  return playerBodyRequirement;
}

func calculateTakedownCoolRequirements(const player: wref<GameObject>, const newTargetPuppet: wref<GameObject>) -> Int32 {
  if !IsDefined(player) || !IsDefined(newTargetPuppet) {
    return 0;
  };

  let statsSystem: ref<StatsSystem> = GameInstance.GetStatsSystem(player.GetGame());
  if !IsDefined(statsSystem) {
    return 0;
  };

  let targetID: StatsObjectID = Cast<StatsObjectID>(newTargetPuppet.GetEntityID());
  let playerCoolRequirement: Int32 = 0;

  let targetSandevistanValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.HasSandevistan));
  let targetSandevistanT1Value: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.HasSandevistanTier1));
  let targetSandevistanT2Value: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.HasSandevistanTier2));
  let targetSandevistanT3Value: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.HasSandevistanTier3));

  if targetSandevistanValue == 1 && targetSandevistanT1Value == 0 && targetSandevistanT2Value == 0 && targetSandevistanT3Value == 0 {
    playerCoolRequirement += 4;
  };

  if targetSandevistanT1Value == 1 {
    playerCoolRequirement += 6;
  };

  if targetSandevistanT2Value == 1 {
    playerCoolRequirement += 8;
  };

  if targetSandevistanT3Value == 1 {
    playerCoolRequirement += 10;
  };

  let targetKerenzikovValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.HasKerenzikov));
  if targetKerenzikovValue == 1 {
    playerCoolRequirement += 2;
  };

  let targetFastRangedValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsFastRangedArchetype));
  if targetFastRangedValue == 1 {
    playerCoolRequirement += 8;
  };

  let targetSniperValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsSniperArchetype));
  if targetSniperValue == 1 {
    playerCoolRequirement += 8;
  };

  let targetTechieValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsTechieArchetype));
  if targetTechieValue == 1 {
    playerCoolRequirement += 6;
  };

  let targetFastMeleeValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.IsFastMeleeArchetype));
  if targetFastMeleeValue == 1 {
    playerCoolRequirement += 8;
  };

  if playerCoolRequirement > 20 {
    playerCoolRequirement = 20;
  };

  return playerCoolRequirement;
}

@wrapMethod(GrappleBreakFreeDecisions)
protected final const func EnterCondition(const stateContext: ref<StateContext>, const scriptInterface: ref<StateGameScriptInterface>) -> Bool {
  if wrappedMethod(stateContext, scriptInterface) {
    return true;
  };

  if !IsDefined(this.stateMachineInitData) {
    return false;
  };

  let player: wref<GameObject> = scriptInterface.executionOwner;
  let newTargetPuppet: wref<GameObject> = this.stateMachineInitData.target;
  if !IsDefined(player) || !IsDefined(newTargetPuppet) {
    return false;
  };

  let statsSystem: ref<StatsSystem> = GameInstance.GetStatsSystem(player.GetGame());
  if !IsDefined(statsSystem) {
    return false;
  };

  let playerID: StatsObjectID = Cast<StatsObjectID>(player.GetEntityID());
  let targetID: StatsObjectID = Cast<StatsObjectID>(newTargetPuppet.GetEntityID());

  let playerStrengthValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(playerID, gamedataStatType.Strength));
  let playerCoolValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(playerID, gamedataStatType.Cool));

  let playerBodyRequirement: Int32 = calculateTakedownBodyRequirements(player, newTargetPuppet);
  let playerCoolRequirement: Int32 = calculateTakedownCoolRequirements(player, newTargetPuppet);
  let targetBreakHoldValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.CanGuardBreak));

  if targetBreakHoldValue > 0 || playerStrengthValue < playerBodyRequirement || playerCoolValue < playerCoolRequirement {
    return true;
  };

  return false;
}

@wrapMethod(GrappleStandDecisions)
protected final const func ToGrappleStruggle(const stateContext: ref<StateContext>, const scriptInterface: ref<StateGameScriptInterface>) -> Bool {
  if wrappedMethod(stateContext, scriptInterface) {
    return true;
  };

  if !IsDefined(this.stateMachineInitData) {
    return false;
  };

  let player: wref<GameObject> = scriptInterface.executionOwner;
  let newTargetPuppet: wref<GameObject> = this.stateMachineInitData.target;
  if !IsDefined(player) || !IsDefined(newTargetPuppet) {
    return false;
  };

  let statsSystem: ref<StatsSystem> = GameInstance.GetStatsSystem(player.GetGame());
  if !IsDefined(statsSystem) {
    return false;
  };

  let targetID: StatsObjectID = Cast<StatsObjectID>(newTargetPuppet.GetEntityID());
  let targetBreakHoldValue: Int32 = Cast<Int32>(statsSystem.GetStatValue(targetID, gamedataStatType.CanGuardBreak));
  let targetRarity: Float = statsSystem.GetStatValue(targetID, gamedataStatType.NPCRarity);

  if targetBreakHoldValue > 0 || targetRarity >= 5.00 {
    return this.IsBreakingFreeAllowed(stateContext, scriptInterface);
  };

  return false;
}
