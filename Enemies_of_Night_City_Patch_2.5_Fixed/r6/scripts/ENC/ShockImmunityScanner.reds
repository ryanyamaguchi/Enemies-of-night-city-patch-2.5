// ShockImmunityScanner.reds — Expose static and dynamic Shock Immunity in the scanner menu

@wrapMethod(NPCPuppet)
public const func CompileScannerChunks() -> Bool {
  let result: Bool = wrappedMethod();
  if !result || this.IsDead() || ScriptedPuppet.IsDefeated(this) {
    return result;
  };

  let statsSystem: ref<StatsSystem> = GameInstance.GetStatsSystem(this.GetGame());
  if !IsDefined(statsSystem) {
    return result;
  };

  let targetID: StatsObjectID = Cast<StatsObjectID>(this.GetEntityID());
  let elecImmunity: Float = statsSystem.GetStatValue(targetID, gamedataStatType.ElectrocuteImmunity);
  let empImmunity: Float = statsSystem.GetStatValue(targetID, gamedataStatType.EMPImmunity);
  if elecImmunity <= 0.0 && empImmunity <= 0.0 {
    return result;
  };

  let scannerBlackboard: wref<IBlackboard> = GameInstance.GetBlackboardSystem(this.GetGame()).Get(GetAllBlackboardDefs().UI_ScannerModules);
  if !IsDefined(scannerBlackboard) {
    return result;
  };

  let shockAbility: wref<GameplayAbility_Record> = TweakDBInterface.GetGameplayAbilityRecord(t"Ability.HasElectrocuteImmunity");
  if !IsDefined(shockAbility) {
    return result;
  };

  let abilityChunk: ref<ScannerAbilities> = FromVariant<ref<ScannerAbilities>>(scannerBlackboard.GetVariant(GetAllBlackboardDefs().UI_ScannerModules.ScannerAbilities));
  let abilities: array<wref<GameplayAbility_Record>>;
  if IsDefined(abilityChunk) {
    abilities = abilityChunk.GetAbilities();
  } else {
    abilityChunk = new ScannerAbilities();
  };

  if !ArrayContains(abilities, shockAbility) {
    ArrayPush(abilities, shockAbility);
    abilityChunk.Set(abilities);
    scannerBlackboard.SetVariant(GetAllBlackboardDefs().UI_ScannerModules.ScannerAbilities, ToVariant(abilityChunk));
  };

  return result;
}

@wrapMethod(NPCPuppet)
protected cb func OnStatusEffectApplied(evt: ref<ApplyStatusEffectEvent>) -> Bool {
  let result: Bool = wrappedMethod(evt);
  if !this.IsDead() && !ScriptedPuppet.IsDefeated(this) {
    this.SetScannerDirty(true);
  };
  return result;
}

@wrapMethod(NPCPuppet)
protected cb func OnStatusEffectRemoved(evt: ref<RemoveStatusEffect>) -> Bool {
  let result: Bool = wrappedMethod(evt);
  if !this.IsDead() && !ScriptedPuppet.IsDefeated(this) {
    this.SetScannerDirty(true);
  };
  return result;
}

@wrapMethod(ScannerAbilitiesGameController)
protected cb func OnAbilitiesChanged(value: Variant) -> Bool {
  inkCompoundRef.RemoveAllChildren(this.m_ScannerAbilitiesRightPanel);
  return wrappedMethod(value);
}

@wrapMethod(ScannerAbilityItemLogicController)
public func Setup(ability: ref<IScriptable>) -> Void {
  wrappedMethod(ability);
  let abilityData: ref<AbilityUserData> = ability as AbilityUserData;
  if IsDefined(abilityData) && abilityData.abilityID == t"Ability.HasElectrocuteImmunity" {
    inkTextRef.SetText(this.m_abilityNameText, "Shock Immunity");
  };
}