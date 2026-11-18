# Enemies of Night City — Patch 2.5.1 (Fixed)

Updated community patch for **Enemies of Night City** on Cyberpunk 2077 (Patch 2.5), resolving gameplay/TweakDB bugs, adding Redscript scanner integration for Shock Immunity, and ensuring full compatibility with **Cyber Engine Tweaks 1.38.0**, **Native Settings UI 1.97**, and **Redscript 0.5.32**.

See [`BUG_ANALYSIS_REPORT.md`](./BUG_ANALYSIS_REPORT.md) for the complete root-cause investigation of all 8 reported play-testing bugs (including editable fixes and WolvenKit remediation steps for binary `.archive` assets) and the dependency compatibility audit.

## Summary of Fixes in Patch 2.5.1

- **Bug 1 (T-Posing Fixes):** Added `T3HeavyRangedNoJumpAbilityGrp` and `MaxtHeavyAbilityList` so unpatched `maxtac-heavy` and `NUSAHeavyRanged` NPCs no longer trigger unsupported Charge Jump / Berserk / Sandevistan / Dodge actions; added stun/defeated/wounded/equip/defend/hit-timeout guards to `HumanoidSandyVersusSandySelector`, `BerserkRangedActivationAction`, `Consumable*Action`, `DodgeAfterHitReaction*`, and `GenericMeleeDodge*`; reverted `Items.Base_Katana_NPC_Stats_inline1` `CanGuardBreak` to `0`.
- **Bug 2 (Frozen / Stalled AI Fixes):** Added `WoundImmuneAbility` to `HitReactionNormalAbilityGrp` and `HitReactionLightAbilityGrp`; removed `<30%` HP lockouts from `CatchUpSelector` and `ShotgunStrafeAroundTarget*`; restored `LowHealthRetreatSelector` + `GenericArchetype.RingSelector` fallback before `HoldPosition`; bounded `ReflectQuickhackPhase` (`duration = 4`) and set `useDurationFromAnimSlot = false` on ChargeJump / Berserk phases.
- **Bug 3 (Legendary Weapon Scaling Fix):** Fixed `createLegendaryWeapon` to stop double-applying `Quality.LegendaryQualityModifier` (which pushed quality to `8+` -> `Common`), added `scaleToPlayer = true` and `"AutoScalingItem"`, and stripped inherited `Quality.BrokenItem`.
- **Bug 4 (Smasher Debug Symbols Fix):** Removed `"fallback"` and `"weakspot_weak"` VFX from Smasher status effects, cleared inherited `SmasherBlackwallEffect.uiData`, and restored `LocKey(1182ull)` on Smasher's Arasaka reinforcements.
- **Bug 5 (Delayed Enemy Blocking Fix):** Restored `CombatDecorator.MeleeBlockState_inline1.duration` (`BlockStateCooldown`) from `10s` back to vanilla `1s`, removed `Condition.NotInStatesAttack` from `MeleeActions.MeleeBlockCondition_inline1.AND`, and restored `MeleeActions.MeleeBlockCondition_inline3`.
- **Bugs 6 & 7 (Smasher Dialogue & Final Wave — Binary Assets):** Documented exact `.scene`, `.behavior`, and `.questphase` CR2W root causes and WolvenKit steps in [`BUG_ANALYSIS_REPORT.md`](./BUG_ANALYSIS_REPORT.md).
- **Bug 8 (Shock Immunity & Scanner Menu):** Preserved Short Circuit immunity (`Items.GroundingPlating_inline3` + dynamic immunity modifiers) while enabling `Ability.HasElectrocuteImmunity.showInCodex = true` and adding `r6/scripts/ENC/ShockImmunityScanner.reds` so static and dynamic shock-immune enemies display **Shock Immunity** in the scanner UI.
- **Dependency Compatibility (CET 1.38.0 / Native Settings UI 1.97 / Redscript 0.5.32):** Added `nativeSettings` nil-guard fallback, isolated `ENCSettings` namespace, `config.lua` nil/table guards, `defaultSettings` + `tryCreateConfig` + `backwardComp` ordering, `"Modules/"` casing normalization, `BreachAction` guard when Breach Protocol is disabled, and `KurtHP` (`4.7`) / `SniperSpeed` (`400`) UI description fixes.

## Installation

1. Ensure the following dependencies are installed and up to date:
   - **Cyber Engine Tweaks** (`1.38.0`+)
   - **Native Settings UI** (`1.97`+, optional fallback supported)
   - **Redscript** (`0.5.32`+)
   - **REDmod** (if required by your setup)
2. Extract the contents of `Enemies_of_Night_City_Patch_2.5_Fixed.zip` (`archive/`, `bin/`, `r6/`) directly into your `Cyberpunk 2077` root folder.
