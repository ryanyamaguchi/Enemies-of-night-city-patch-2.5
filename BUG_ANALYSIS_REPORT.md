# Enemies of Night City (Patch 2.5) — Bug Analysis & Compatibility Report

**Target Repository:** `https://github.com/ryanyamaguchi/Enemies-of-night-city-patch-2.5`  
**Mod Package:** `Enemies_of_Night_City_Patch_2.5_Fixed` (Patch 2.5.1)  
**Target Dependencies Verified (ignoring `.ini` files):**
- Cyber Engine Tweaks `1.38.0` (LuaJIT 2.1.0 / Lua 5.1)
- Native Settings UI `1.97` (`minCETVersion = 1.25`)
- Redscript `0.5.32` (`scc.exe` / `scc_lib.dll`)

---

## Executive Summary & Modifiability Matrix

All 8 reported play-testing bugs and all R3 dependency compatibility issues were traced against the mod's Lua modules (`Enemies_of_Night_City_Patch_2.5_Fixed\bin\x64\plugins\cyber_engine_tweaks\mods\Enemies of NC\`), Redscript (`r6\scripts\ENC\`), compiled binary CR2W archive (`archive\pc\mod\ENC_Anim_FX.archive`, 58 assets), vanilla `.tweak`/`.script` definitions, and read-only live game logs (`scripting.log`).

| # | Reported Play-Testing Bug | Modifiability | Primary Root Cause | Remediation |
|---|---|---|---|---|
| 1 | Enemies T-pose on stagger/stun, Apogee Sandevistan, `maxtac-heavy`, & general combat | **Hybrid (Lua Fixed + Binary Documented)** | `MaxtHeavyRanged`/`NUSAHeavyRanged` assign ChargeJump/Berserk/Dodge to unpatched MaxTac heavy `.ent`s; `BerserkRangedActivationAction`, `Consumable*Action`, `HumanoidSandyVersusSandySelector`, `DodgeAfterHitReaction*`, `GenericMeleeDodge*` lack stun/defeated/wounded/equip/defend/hit-timeout guards; Katana `CanGuardBreak = 1` triggers T-pose | **Fixed in `Modules\Base.lua`** (11-patch suite); documented unpatched `corpo__ep1_max_tac_mb.ent` / `corpo__max_tac_mb.ent` & `ENC_Anim_FX.archive` WolvenKit steps |
| 2 | Enemies appear frozen & AI malfunctions after considerable damage | **Editable (Lua Fixed)** | `HitReactionNormalAbilityGrp` & `HitReactionLightAbilityGrp` omit `WoundImmuneAbility`; `<30%` HP disables `CatchUpSelector` & `ShotgunStrafeAroundTarget*` without `GenericArchetype.RingSelector` fallback before `HoldPosition`; `ReflectQuickhackPhase.duration = -1` & anim-slot-dependent phases stall | **Fixed in `Modules\Base.lua`** (added `WoundImmuneAbility`, removed `<30%` HP movement lockouts, added `LowHealthRetreatSelector` + `GenericArchetype.RingSelector` fallback, bounded `ReflectQuickhackPhase` & set `useDurationFromAnimSlot = false`) |
| 3 | Legendary weapons dropped by enemies do not scale to player level | **Editable (Lua Fixed)** | `createLegendaryWeapon` double-applies `Quality.LegendaryQualityModifier` (`+4` twice = `8+`, falling out of `RPGManager.GetItemQuality` `0..4` switch to `Common`), omits `scaleToPlayer = true` + `"AutoScalingItem"` tag required by `TryScaleItemToPlayer`, and inherits `Quality.BrokenItem` | **Fixed in `Modules\Base.lua`** (`createLegendaryWeapon` removes duplicate `Quality.LegendaryQualityModifier`, sets `scaleToPlayer = true` + `"AutoScalingItem"`, strips `Quality.BrokenItem`) |
| 4 | Debug symbols popping up during Smasher bossfight | **Hybrid (Lua Fixed + Binary Documented)** | `SmasherBlackwallEffect` inherits `BlackwallCooldown.uiData`; Smasher status effects emit `"weakspot_weak"` & `"fallback"` VFX; Smasher adds use `LocKey(0ull)`; `ENC_Anim_FX.archive` embeds placeholder `.effect` & `white.xbm` | **Fixed in `Modules\Base.lua`** (stripped `"fallback"`/`"weakspot_weak"` VFX, cleared `SmasherBlackwallEffect.uiData`, restored `LocKey(1182ull)` on adds); documented `.archive` WolvenKit steps |
| 5 | Enemy blocking animations are sometimes delayed | **Hybrid (Lua Fixed + Binary Documented)** | `CombatDecorator.MeleeBlockState_inline1.duration = 10` sets `BlockStateCooldown` to **10s** (10x vanilla `1.0f`); `MeleeActions.MeleeBlockCondition_inline1.AND` adds `Condition.NotInStatesAttack` and drops Kerenzikov fallback `_inline3`; secondary melee monitor cooldowns in `root.behavior`/`root_dmm.behavior` | **Fixed in `Modules\Base.lua`** (restored `duration = 1`, removed `NotInStatesAttack`, restored `MeleeBlockCondition_inline3`); documented `root.behavior`/`root_dmm.behavior` WolvenKit steps |
| 6 | Smasher reuses reinforcement dialogue lines randomly | **Binary-Only (WolvenKit Required)** | `Modules\Base.lua:7859-7862` sets `AdamSmasherBoss.CallWave01a..02b_inline2.name = "smasher_reinforcement"` (and `:7334-7341` defines `SmasherVO_*`), routing all 4 waves to `vset_smasher`'s `"smasher_reinforcement"` (`scnRandomizerNode` + `smasher_reinforcement_var_1..4` in `q113_13_adam_smasher.scene` & `q116_01_adam_smasher.scene`, which lack `smasher_reinforcement_01..04`) without repeat exclusion | **Documented** Lua routing + `.scene` CR2W hashes/exports & WolvenKit remediation steps |
| 7 | Last reinforcement wave in Smasher bossfight does not spawn properly sometimes | **Binary-Only (WolvenKit Required)** | Zero Lua/Redscript code touches Smasher wave spawning; `CallWave02b` (`smasher_reinforcement_02b` -> `q113_smasher_combat.questphase` `exp[1846]`) only triggers on 4th `adam_smasher_combat_hmg_missile_rain.behavior` entry (`ReinforcementState == 3`), which expanded 9-branch `adam_smasher_combat_hmg.behavior` (`123,984 B`) & `EmergencyStateCondition` transitions can skip/delay | **Documented** exact `.behavior`/`.questphase` CR2W hashes/exports & WolvenKit remediation steps |
| 8 | Shock-immune enemies immune to Short Circuit (0 dmg), & Shock Immunity missing in scanner menu (R2) | **Editable (Lua + Redscript Fixed)** | `Base.lua` adds `Items.GroundingPlating_inline3` (`EMPImmunity + 1`), keeping Short Circuit 0 damage; `Ability.HasElectrocuteImmunity` has `showInCodex = False` and `LocKey(0)`; `NPCPuppet.CompileScannerChunks` ignores `StatsSystem` & status-effect shock immunities; `lang_en_text.archive` has no Shock Immunity `LocKey` | **Fixed in `Modules\Base.lua` + `r6\scripts\ENC\ShockImmunityScanner.reds`** (`EMPImmunity`/`ElectrocuteImmunity` preserved per R2; `showInCodex = true` + Redscript `CompileScannerChunks` / status-effect dirty refresh / `"Shock Immunity"` UI label) |

---

## Detailed Bug Analysis (Bugs 1–8)

### Bug 1 — T-Posing on Stagger/Stun, During Apogee Sandevistan, `maxtac-heavy`, and General Combat

- **Symptom:** Enemies—most noticeably `maxtac-heavy` spawns, enemies reacting to player Apogee Sandevistan (`Items.AdvancedSandevistanApogee`), and melee/staggered NPCs—enter a T-pose when stunned, staggered, or triggering custom Sandevistan/Berserk/dodge/charge-jump actions.
- **Evidence-Backed Root Cause:**
  1. **Unpatched `maxtac-heavy` Entity Templates (`Modules\Base.lua` & `ENC_Anim_FX.archive`):**
     - `T3HeavyRangedAbilityGrp` (`Base.lua:658-660`) grants `"Ability.HasChargeJump"`. `MaxtHeavyRanged` (`Base.lua:4362` pre-fix `4348`) assigns `{"Sandy2AbilityGrp", "BerserkAbilityGrp", "T3HeavyRangedAbilityGrp", ...}` (`ArchetypeType.HeavyRangedT3`) to `Character.maxtac_av_LMG_mb`, `Character.maxtac_av_LMG_mb_2nd_wave`, `Character.maxtac_gunner_mb_elite`, `Character.q305_maxtac_heavy`, and `Character.mq030_max_tac_3`, while `MaxtacAbilityList` (`MaxtAbilityList`) also grants `"Ability.HasDodge"`. `NUSAHeavyRanged` (`Base.lua:4559` pre-fix `4541`) similarly assigns `Sandy2AbilityGrp`, `BerserkAbilityGrp`, and `T3HeavyRangedAbilityGrp`.
     - Vanilla `q305_maxtac_heavy` / `maxtac_gunner_mb_elite` (`ncpd.tweak:1302-1333`, `q305.tweak:133`) use `ep1\characters\entities\corpo\corpo__ep1_max_tac_mb.ent` and `maxtac_av_LMG_mb` (`prevenetion_system.tweak:1825-1913`) uses `ep1\characters\entities\corpo\corpo__max_tac_mb.ent`. Neither `.ent` is patched inside `ENC_Anim_FX.archive` (which only patches 5 `man_big` entities: `[1] wraith_mb`, `[14] anton_kolev`, `[15] placide`, `[19] cyberpsycho_mb`, `[42] denzel_cryer`, along with `man_big.rig` animsets `[17]`, `[36]`, `[44]` and `animActionAnimDatabase` `[16]`).
     - `EnemyVariety.lua:3492-3554` only reassigns `q305_maxtac_miniboss_fshotgun_mb` (`MaxtFastShot`) to `MaxtacCrusherWeapon` and does not cause `maxtac-heavy` T-posing.
  2. **Unguarded `RangedWeaponChargeJump*` & `BerserkRangedActivationAction` (`Base.lua`):**
     - `GenericArchetype.WeaponHandlingComposite.nodes` (`Base.lua:1150`) injects `"BerserkRangedActivationAction"` and `"RangedWeaponChargeJumpSequence"` globally.
     - `RangedWeaponChargeJumpTauntAction`, `RangedWeaponChargeJumpAction`, and `RangedWeaponChargeJumpSequence` lacked `Condition.NotIsMaxTacNPCRarity`.
     - `BerserkRangedActivationAction` clones `StatusEffectActions.SE_Madness` (`animFeature = "SE_Madness"`, `animVariation = -1`), and its `setCOND` checked only `{"Condition.AbilityHasBerserk", "NotBerserkEffect", "Condition.TargetIsVisible"}`—lacking MaxTac, cover, workspot, wounded, dismembered, stun, defeated, equip, sync, and hit-timeout guards.
  3. **Apogee Sandevistan & Consumable Stagger/Stun Lockout (`Base.lua`):**
     - `HumanoidSandyVersusSandySelector` triggers `SandyVSandyTier0..3Action` when `Condition.AbilityHasSandevistan`, `Condition.TargetIsPlayer`, and `SandyVSandyOROR` (`StatusEffectSandevistanPlayerBuff`, e.g., Apogee Sandevistan, or `CONDPlayerKerezEffect`) are true, without checking `NotStatusEffectTypeStun`, `NotStatusEffectDefeated`, or `NotWounded`.
     - `ConsumableSandyAction`, `ConsumableFireResAction`, `ConsumableElecResAction`, and `ConsumablePoisonResAction` also lacked `Condition.NotStatusEffectTypeStun`, `Condition.NotStatusEffectDefeated`, and `Condition.NotInStatesEquip`.
  4. **Stripped Dodge Hit/Stun/Defend/Parry Guards & Katana Guardbreak (`Base.lua`):**
     - `DashAndDodgeActions.DodgeAfterHitReactionConditionDefinition_inline1.AND` omitted `Condition.NotInStatesDefend`, `Condition.NotStatusEffectTypeStun`, `Condition.NotStatusEffectDefeated`, and `Condition.NotWounded`.
     - `DashAndDodgeActions.GenericMeleeDodgeConditionDefinition.AND` stripped `Condition.NotHitTimeout2MinSeverity0`, `Condition.NotInStatesDefend`, `Condition.NotInStatesParry`, and lacked `Condition.NotStatusEffectTypeStun`.
     - `Items.Base_Katana_NPC_Stats_inline1.value` was set to `1` (`CanGuardBreak = 1`) despite the mod's own inline comment `--causes tpose with slow push from dodgeafterhit`.
- **Modifiability Split:** Action conditions, archetype ability assignments, and Katana stats are editable in `Modules\Base.lua`. Missing animation entries on `corpo__ep1_max_tac_mb.ent` / `corpo__max_tac_mb.ent` and behavior monitors in `ENC_Anim_FX.archive` (`[37] 0x7C1F7A27E1127B7D root.behavior`, `[45] 0xB39F0DFA0182C6B6 root_dmm.behavior`, `[47] 0xB9A13E1DA9E9C474 alerted_base.behavior`) are compiled CR2W assets.
- **Fixes Applied (`Modules\Base.lua`):**
  - Added `T3HeavyRangedNoJumpAbilityGrp` (without `Ability.HasChargeJump`) and assigned it to `MaxtHeavyRanged` and `NUSAHeavyRanged`, removing `Sandy2AbilityGrp` and `BerserkAbilityGrp` from those unpatched heavy rigs.
  - Added `MaxtHeavyAbilityList` (omitting `Ability.HasDodge`) for the 5 heavy MaxTac characters (`maxtac_av_LMG_mb`, `maxtac_av_LMG_mb_2nd_wave`, `maxtac_gunner_mb_elite`, `q305_maxtac_heavy`, `mq030_max_tac_3`), and added `Ability.CanSeeThroughSmoke` + `Ability.HasMemoryWipeImmunity` to `MaxtAbilityList` / `MaxtHeavyAbilityList`.
  - Added `"Condition.NotIsMaxTacNPCRarity"` to `RangedWeaponChargeJumpTauntAction`, `RangedWeaponChargeJumpAction`, and `RangedWeaponChargeJumpSequence`.
  - Added full state/stun/defeated/wounded/equip/hit-timeout/MaxTac guards to `BerserkRangedActivationAction`, `ConsumableSandyAction`, `ConsumableFireResAction`, `ConsumableElecResAction`, `ConsumablePoisonResAction`, and `HumanoidSandyVersusSandySelector`.
  - Restored `"Condition.NotInStatesDefend"`, `"Condition.NotStatusEffectTypeStun"`, `"Condition.NotStatusEffectDefeated"`, `"Condition.NotWounded"` to `DodgeAfterHitReactionConditionDefinition_inline1.AND`, restored `"Condition.NotHitTimeout2MinSeverity0"`, `"Condition.NotInStatesDefend"`, `"Condition.NotInStatesParry"`, `"Condition.NotStatusEffectTypeStun"` to `GenericMeleeDodgeConditionDefinition.AND`, and reverted `Items.Base_Katana_NPC_Stats_inline1.value` to `0`.
- **Binary-Asset Root Cause & Recommended WolvenKit Steps (if re-enabling ChargeJump/Sandevistan/Berserk on `maxtac-heavy`):**
  1. Open `ep1\characters\entities\corpo\corpo__ep1_max_tac_mb.ent` and `ep1\characters\entities\corpo\corpo__max_tac_mb.ent` from the EP1 archive in WolvenKit.
  2. Add `mb_gang_unarmed_locomotion_combat_sandevistan.anims` and bind `ENC_Anim_FX.archive` `man_big.rig` animsets `[17]`, `[36]`, `[44]` (`melee_jump_attack_01_*_ranged`, `sandevistan_activation_taunt_01`) and `[16]` (`animActionAnimDatabase`), matching the 5 patched `man_big` `.ent` files (`[1]`, `[14]`, `[15]`, `[19]`, `[42]`).
  3. Pack into `.archive` before re-adding `Sandy2AbilityGrp`/`BerserkAbilityGrp`/`Ability.HasChargeJump` to `MaxtHeavyRanged`.

---

### Bug 2 — Enemies Appear Frozen and AI Malfunctions After Considerable Damage

- **Symptom:** After taking substantial damage, enemies stop reacting/moving, appear frozen in mid-combat, or stall during action transitions.
- **Evidence-Backed Root Cause:**
  1. **Missing `WoundImmuneAbility` on Normal & Light Enemies (`Base.lua:246-250`):** `HitReactionUnstoppableAbilityGrp`, `HitReactionTankyAbilityGrp`, and `HitReactionMediumAbilityGrp` all include `"WoundImmuneAbility"` (`BaseStats.WoundedImmunity = 1`), whereas `HitReactionNormalAbilityGrp` and `HitReactionLightAbilityGrp` omitted it. When T1/T2 NPCs enter `Wounded` after heavy damage (`cripplings.tweak:14`), `Condition.NotWounded` locks them out of `QuickMeleeSelector`, `ConsumableSelector`, `CoverCatchUpSprint*`, `RecklessShotgunnerCatchUpAction`, and dodge selectors.
  2. **`<30%` HP Movement Lockout & `HoldPosition` Fallthrough (`Base.lua:1759, 1873-1884, 12547`):** Below 30% HP, `CatchUpSelector` / `CatchUpSelectorAND`, `ShotgunStrafeAroundTarget*`, `HarassSelectorHealth`, and `RangedWeaponChargeJump*` all fail `Condition.HealthAbove30perc`. Simultaneously, `GenericArchetype.MovementPolicyCompositeDefault.nodes` omitted both `LowHealthRetreatSelector` and vanilla `GenericArchetype.RingSelector` (`movementactions.tweak:35`) before `MovementActions.HoldPosition`, causing `<30%` HP enemies whose ring filters fail to fall straight into `MovementActions.HoldPosition` and stand frozen.
  3. **Infinite / Anim-Slot-Blocked Phase Durations (`Base.lua:1529, 1936-1956, 2382-2386`):**
     - `ReflectQuickhackPhase` set `duration = -1` (infinite loop until `HackingInterruptedStatusEffects` or `HitTimeout1dot5MinSeverity2`).
     - `BerserkRangedActivationAction` cloned `StatusEffectActions.SE_Madness` without cloning a phase with `useDurationFromAnimSlot = false` (unlike `SmasherBerserkActivationPhase`, which explicitly notes `--seems to fix freezing`), and `RangedWeaponChargeJumpAttackStartPhase`, `...LoopPhase`, and `...RecoverPhase` also omitted `useDurationFromAnimSlot = false`.
- **Modifiability Split:** 100% editable in `Modules\Base.lua`.
- **Fixes Applied (`Modules\Base.lua`):**
  - Added `"WoundImmuneAbility"` to `HitReactionNormalAbilityGrp.abilities` and `HitReactionLightAbilityGrp.abilities`.
  - Removed `"Condition.HealthAbove30perc"` from `CatchUpSelector`, `CatchUpSelectorAND.AND`, `ShotgunStrafeAroundTarget`, and `ShotgunStrafeAroundTargetSelector`.
  - Inserted `"LowHealthRetreatSelector"` and `"GenericArchetype.RingSelector"` before `"MovementActions.HoldPosition"` in `GenericArchetype.MovementPolicyCompositeDefault.nodes`.
  - Set `ReflectQuickhackPhase.duration = 4` and `ReflectQuickhackPhase.useDurationFromAnimSlot = false`.
  - Set `useDurationFromAnimSlot = false` on `RangedWeaponChargeJumpAttackStartPhase`, `RangedWeaponChargeJumpAttackLoopPhase`, and `RangedWeaponChargeJumpRecoverPhase`, and created `BerserkRangedActivationPhase` (`duration = 2.5`, `useDurationFromAnimSlot = false`) assigned to `BerserkRangedActivationAction.loop`.

---

### Bug 3 — Legendary Weapons Dropped by Enemies Do Not Scale to Player Level

- **Symptom:** Legendary weapons dropped by minibosses/enemies (when `LegenLoot` is enabled) do not scale to the player's level and can drop with broken/common quality behavior.
- **Evidence-Backed Root Cause:**
  1. **Double `+4` Quality Modifier (`Base.lua:4604` pre-fix `4588-4595` vs `quality.tweak:140-162` & `rpgManager.script:722-740`):** `Quality.Legendary` already includes `"Quality.LegendaryQualityModifier"` (`BaseStats.Quality += 4`). Adding `"Quality.LegendaryQualityModifier"` again in `createLegendaryWeapon` pushes `BaseStats.Quality` to `8+`, falling outside `RPGManager.GetItemQuality`'s `0..4` switch (`default: gamedataQuality.Common`).
  2. **Missing `scaleToPlayer = true` AND `"AutoScalingItem"` Tag (`player.script:3008-3021`):** `PlayerPuppet.TryScaleItemToPlayer(itemData)` requires **both** `TweakDBInterface.GetBool(tdbid + T".scaleToPlayer", false) == true` and `(PowerLevel <= 1.0 || HasTag('AutoScalingItem') || ...)`. Because NPC weapons spawn with NPC `PowerLevel > 1.0`, omitting both `scaleToPlayer = true` and `"AutoScalingItem"` prevents rescaling on pickup.
  3. **`Quality.BrokenItem` Inheritance (`Base.lua:5283`, `EnemyVariety.lua:2446`):** Weapons cloned from bases carrying `Quality.BrokenItem` (e.g., `Items.Preset_Hercules_Default` -> `Items.Preset_Hercules_Default_Legendary`) retained `Quality.BrokenItem` in `.statModifiers`.
- **Modifiability Split:** 100% editable in `Modules\Base.lua` (all 14 `Base.lua` calls and 15 active `EnemyVariety.lua` calls route through `createLegendaryWeapon`).
- **Fixes Applied (`Modules\Base.lua`):**
  - Updated `createLegendaryWeapon` (`LegenLoot` branch): removed `addToList(target..".statModifiers", "Quality.LegendaryQualityModifier")`, added `addToList(target..".tags", "AutoScalingItem")` and `TweakDB:SetFlat(target..".scaleToPlayer", true)`, kept `TweakDB:SetFlat(target..".quality", "Quality.Legendary")`, and filtered `"Quality.BrokenItem"` out of `target..".statModifiers"`.
  - Updated `createLegendaryWeapon` (`else` branch): added `"AutoScalingItem"` tag and `scaleToPlayer = true`.

---

### Bug 4 — Debug Symbols Popping Up During the Smasher Bossfight

- **Symptom:** Placeholder/debug icons, `LocKey#0` text, or debug visual effects (`weakspot_weak`, ground squares/indicators, `fallback` VFX) appear during the Adam Smasher bossfight.
- **Evidence-Backed Root Cause:**
  1. **Inherited `BlackwallCooldown.uiData` (`Base.lua:7992` pre-fix `7964`):** `SmasherBlackwallEffect` clones `BaseStatusEffect.BlackwallCooldown` (`player_cooldowns.tweak:417-435`), which carries `uiData = { displayName = "LocKey#86796"; iconPath = "Contagion"; }`, and `createStatusEffect` never cleared `.uiData`.
  2. **Debug/Placeholder VFX Names (`Base.lua:7267, 7292, 7992, 11281`):** `SmasherBerserkMeleeEffect`, `SmasherRegenPhase2Effect`, `SmasherBlackwallEffect`, and `SmasherShieldEffect` explicitly included `"weakspot_weak"` (pink/spark weakspot debug FX noted at `Base.lua:2805-2806`) and/or `"fallback"`.
  3. **Zeroed `displayName` on Smasher Adds (`Base.lua:8081` pre-fix `8052`):** `Character.q113_smasher_arasaka_mantis`, `..._mantis_officer`, `..._masamune`, `..._netrunner`, and `..._sniper` had `.displayName` set to `LocKey(0ull)` instead of vanilla `arasaka_aggressive_base`'s `LocKey#1182` (`1182ull`).
  4. **Binary Placeholder Assets in `ENC_Anim_FX.archive`:**
     - `[12]` (`0x2CFA1AC367F30CD4`, `entEntityTemplate`, `boss__adam_smasher`): binds `weakspot_indicator` to `base\fx\quest\q110\animal_boss\temp\q110_weakspot_placeholder.effect` and includes Animals/Sasquatch weakspot VFX (`animal_boss_weakspot_weak.effect`, `animal_boss_energy.effect`, `animal_boss_energy_off.effect`).
     - `[10]` (`0x25F9B8C8995BEC6F`), `[27]` (`0x60573770D43C71A5`), `[49]` (`0xC6AD34BB9265E822`), `[53]` (`0xE36F66916D87EC3D`), `[57]` (`0xF51AC14D09928588`) (`AIbehaviorResource`, Smasher combat behaviors): reference `landIndicatorFX` -> `base\fx\characters\boss_adam_shasher\ch_adam_smasher_ground_indicator.effect`.
     - `[23]` (`0x57A369BF0A6A2D30`), `[24]` (`0x5AE6F3484FF9CE0A`), `[25]` (`0x5B8D4C6CD0293472`) (`worldEffect`, electricity/fire/poison resistance VFX): reference `base\materials\placeholder\white.xbm`.
- **Modifiability Split:** `uiData`, VFX lists, and `displayName` `LocKey` are editable in `Modules\Base.lua`; embedded `.effect` / `.xbm` paths in `ENC_Anim_FX.archive` are compiled CR2W binary assets.
- **Fixes Applied (`Modules\Base.lua`):**
  - Removed `"fallback"` and `"weakspot_weak"` from `SmasherBerserkMeleeEffect` and `SmasherBlackwallEffect`; removed `"fallback"` from `SmasherRegenPhase2Effect` and `SmasherShieldEffect`.
  - Cleared `SmasherBlackwallEffect.uiData` (`TweakDB:SetFlat("SmasherBlackwallEffect.uiData", "")`).
  - Changed `LocKey(0ull)` to `LocKey(1182ull)` on all 5 `q113_smasher_arasaka_*` NPCs.
- **Binary-Asset Root Cause & Recommended WolvenKit Steps:**
  1. Unpack `ENC_Anim_FX.archive` in WolvenKit.
  2. In `[12]` (`0x2CFA1AC367F30CD4`, `boss__adam_smasher.ent`), remove or replace `q110_weakspot_placeholder.effect` (`weakspot_indicator`) and `animal_boss_*` weakspot FX.
  3. In `[10]`, `[27]`, `[49]`, `[53]`, `[57]` Smasher `.behavior` assets, remove or replace `landIndicatorFX` (`ch_adam_smasher_ground_indicator.effect`).
  4. In `[23]`, `[24]`, `[25]` resistance `worldEffect` assets, replace `base\materials\placeholder\white.xbm` with proper particle/decal textures, then repack `.archive`.

---

### Bug 5 — Enemy Blocking Animations Are Sometimes Delayed

- **Symptom:** Melee enemies exhibit noticeable delays before raising a block or fail to block consecutive attacks promptly.
- **Evidence-Backed Root Cause:**
  1. **10-Second `BlockStateCooldown` (`Base.lua:12695` pre-fix `12665`):** `TweakDB:SetFlat("CombatDecorator.MeleeBlockState_inline1.duration", 10)--not sure if it works`. In vanilla `tweakdb.bin` (`0x2070499`, `combatdecoratoractions.tweak:1210-1211`), `CombatDecorator.MeleeBlockState_inline1` is `BlockStateCooldown` (`1.0f`, inside `subActions[0].cooldowns[0]`), **not** loop duration (`MeleeBlockState_inline5`, `1.5f`). Setting it to `10` imposed a **10-second cooldown** between enemy blocks.
  2. **Attack-State Gate & Missing Kerenzikov Fallback (`Base.lua:12754` pre-fix `12724`):** `MeleeActions.MeleeBlockCondition_inline1.AND` added `"Condition.NotInStatesAttack"` (preventing block entry until an attack state fully exited) and flattened `"Condition.AbilityCanBlock"` instead of vanilla `"MeleeActions.MeleeBlockCondition_inline3"` (`OR: [AbilityCanBlock, AND(AbilityHasKerenzikov, NotTargetStatusEffectSandevistanBuff)]`, `meleeattackactions.tweak:1002-1021`).
  3. **Binary Monitor Context (`ENC_Anim_FX.archive`):** `hit_reactions.behavior`, `combat_mode_decisions.behavior`, and `combat_root.behavior` are unmodified in `ENC_Anim_FX.archive`, while `base\gameplay\ai\behaviors\root.behavior` (`0x7C1F7A27E1127B7D`, `exp[164..176]`) adds `NewMeleeDodgeStartCooldownAction` (`0x00000020EB141A5F`) and `NewMeleeDodgeCooldownConditionAction` (`0x0000002478A8A547`), and `root_dmm.behavior` (`0xB39F0DFA0182C6B6`) adds `DodgeTech*` / `CatchPlayerFromTechShoot*` monitors.
- **Modifiability Split:** Primary cooldown (`10s -> 1s`) and condition gating (`NotInStatesAttack`, `MeleeBlockCondition_inline3`) are editable in `Modules\Base.lua`; secondary melee-event monitor priority lives in compiled `root.behavior` / `root_dmm.behavior`.
- **Fixes Applied (`Modules\Base.lua`):**
  - Restored `CombatDecorator.MeleeBlockState_inline1.duration` to `1`.
  - Removed `"Condition.NotInStatesAttack"` and `"Condition.AbilityCanBlock"` from `MeleeActions.MeleeBlockCondition_inline1.AND`, restoring `"MeleeActions.MeleeBlockCondition_inline3"`.
- **Recommended WolvenKit Steps (if residual delay persists):** Open `ENC_Anim_FX.archive`'s `root.behavior` (`0x7C1F7A27E1127B7D`) `exp[164..176]` in WolvenKit and verify melee monitor branch priority/interruption relative to `hit_reactions.behavior` block transitions.

---

### Bug 6 — Smasher May Reuse Dialogue When Calling for Reinforcements

- **Symptom:** During the Smasher bossfight, Smasher can repeat the same voice line when calling for reinforcement waves because lines are selected randomly.
- **Evidence-Backed Root Cause (Binary-Only):**
  - **Editable Scripts:** `Modules\Base.lua:7859-7862` sets `AdamSmasherBoss.CallWave01a_inline2.name`, `CallWave01b_inline2.name`, `CallWave02a_inline2.name`, and `CallWave02b_inline2.name` to `"smasher_reinforcement"` (and `Base.lua:7334-7341` defines `SmasherVO_*` voice records). Because `q113_13_adam_smasher.scene` and `q116_01_adam_smasher.scene` only contain `"smasher_reinforcement"` / `"smasher_reinforcement_var_1..4"` (and do **not** contain `"smasher_reinforcement_01..04"`), this routes all 4 wave calls to `vset_smasher`'s `"smasher_reinforcement"` (`scnRandomizerNode`), so eliminating line repetition still requires WolvenKit `.scene` edits (zero Redscript files touch Smasher VO).
  - **Scene CR2W (`basegame_4_gamedata.archive`):** Neither `q113_13_adam_smasher.scene` (`0xE28ABE82115D6B75`) nor `q116_01_adam_smasher.scene` (`0xB05429CCBBB2991E`) is overridden in `ENC_Anim_FX.archive`. Both contain 4 `scnRandomizerNode` exports (`exp[3]`, `exp[12]`, `exp[18]`, `exp[48]`) and `vset_smasher` (`smasher_reinforcement_var_1..4` via `scnStartNode` `exp[41], exp[43]` / `scnDialogLineEvent` `exp[96]`). The 4 reinforcement VO lines (`"Unit Alpha, to me!"`, `"Unit Beta! Neutralize the target!"`, `"Another wave! Now!"`, `"More! Seize the advantage!"`) are wired through `scnRandomizerNode` / voiceset variants without cross-call repeat exclusion.
- **Modifiability Split:** **Binary-only** (CR2W `.scene` assets in `basegame_4_gamedata.archive`, not modifiable in Lua/Redscript).
- **Recommended WolvenKit Steps:**
  1. Extract `q113_13_adam_smasher.scene` (`0xE28ABE82115D6B75`) and `q116_01_adam_smasher.scene` (`0xB05429CCBBB2991E`) from `basegame_4_gamedata.archive` in WolvenKit.
  2. Replace or gate the `scnRandomizerNode` (`exp[3, 12, 18, 48]`) / `vset_smasher` callouts using quest facts (`smasher_reinforcement_01a`, `01b`, `02a`, `02b` set by `AdamSmasherBoss.CallWave01a..02b` in `adamsmasher_boss.tweak:2714-2775`) so each reinforcement wave plays its dedicated non-repeating line sequentially.
  3. Pack the modified `.scene` files into `.archive`.

---

### Bug 7 — Last Wave of Reinforcements in the Smasher Bossfight Does Not Spawn Properly Sometimes

- **Symptom:** The final reinforcement wave in the Adam Smasher bossfight intermittently fails to spawn.
- **Evidence-Backed Root Cause (Binary-Only):**
  - **Editable Scripts:** Zero Lua or Redscript files alter Smasher reinforcement spawning or `ReinforcementState`.
  - **Behavior & Questphase CR2W (`ENC_Anim_FX.archive` & `basegame_4_gamedata.archive`):**
    - `adam_smasher_combat_hmg_missile_rain.behavior` (`0x2CE80CEFCD2548B1`, `10,919 B`, byte-identical to vanilla in `ENC_Anim_FX.archive`) uses `exp[6]` (`AIbehaviorSelectorTreeNodeDefinition`) to step through `ReinforcementState`: `0 -> CallWave01a` (`smasher_reinforcement_01a`), `1 -> CallWave01b` (`smasher_reinforcement_01b`), `2 -> CallWave02a` (`smasher_reinforcement_02a`), and `3 -> CallWave02b` (`exp[159] -> exp[163]`, `smasher_reinforcement_02b`).
    - However, `ENC_Anim_FX.archive` heavily expands `adam_smasher_combat_hmg.behavior` (`0x60573770D43C71A5`, `22,812 B -> 123,984 B`, `420 -> 2,579` exports) and `adam_smasher_combat_emergency.behavior` (`0xC6AD34BB9265E822`, `57,540 B -> 121,700 B`, `1,125 -> 2,478` exports): `exp[65]` in `adam_smasher_combat_hmg.behavior` expands from 5 to **9 selector branches** before cycling back to `exp[63]` (`missile_rain`), while `exp[59]` monitors `AdamSmasherBoss.EmergencyStateCondition` (`exp[2568]`, `0x00000027B56BC8C2`) to transition into `adam_smasher_combat_emergency.behavior` (`exp[2570]`).
    - `q113_smasher_combat.questphase` (`0x8E887DD086EF54EF`, `basegame_4_gamedata.archive`) gates the final reinforcement `questSpawnManagerNodeDefinition` (`exp[1846]`, spawning `q113_bossfight`) on `questPauseConditionNodeDefinition` (`exp[1836]`) waiting for fact `smasher_reinforcement_02b` (`exp[1839]`). If Smasher crosses the emergency/phase-transition HP threshold before the 4th `missile_rain` cycle executes (or `CallWave02b` is interrupted during the expanded 9-branch `hmg` / `emergency` loop), `smasher_reinforcement_02b` is never set and the last wave never spawns.
- **Modifiability Split:** **Binary-only** (CR2W `.behavior` and `.questphase` assets).
- **Recommended WolvenKit Steps:**
  1. Open `ENC_Anim_FX.archive`'s `adam_smasher_combat_hmg.behavior` (`0x60573770D43C71A5`), `adam_smasher_combat_emergency.behavior` (`0xC6AD34BB9265E822`), and `adam_smasher_combat_hmg_missile_rain.behavior` (`0x2CE80CEFCD2548B1`) alongside `basegame_4_gamedata.archive`'s `q113_smasher_combat.questphase` (`0x8E887DD086EF54EF`) in WolvenKit.
  2. Add a fallback/guaranteed `CallWave02b` trigger (or set fact `smasher_reinforcement_02b`) upon entering `adam_smasher_combat_emergency.behavior` / final phase if `ReinforcementState < 3` or `smasher_reinforcement_02b == 0`, or adjust `exp[65]` selector pacing so all 4 `missile_rain` reinforcement calls complete reliably before phase transition.
  3. Pack updated `.behavior` / `.questphase` assets into `.archive`.

---

### Bug 8 — Shock Immunity Keeps Short Circuit Immune (0 Damage) & Displays in Scanner Menu (Requirement R2)

- **Symptom:** Enemies with shock immunity take 0 damage from Short Circuit (as intended by ENC's design), yet the Shock Immunity ability does not appear in the scanner menu.
- **Requirement (R2):** Keep enemies with shock immunity immune to Short Circuit damage, AND expose/display the shock immunity ability in the scanner menu.
- **Evidence-Backed Root Cause:**
  1. **Short Circuit Immunity Chain (Must Be Preserved):**
     - `Base.lua:116` executes `addToList("Ability.HasElectrocuteImmunity_inline0.stats", "Items.GroundingPlating_inline3")` (`BaseStats.EMPImmunity + 1`), complementing vanilla `BaseStats.ElectrocuteImmunity + 1`.
     - Dynamic ENC status effects (`ElecResEffect` at `Base.lua:1716`, `BerserkMeleeEffect` at `2251`, `SasquatchBerserkMeleeEffect` at `6452`, `SmasherBerserkMeleeEffect` at `7267`, `SmasherBlackwallEffect` at `7993`, `OdaShieldEffect` at `10344-10350`) also apply `Ability.HasElectrocuteImmunity_inline1` (`ElectrocuteImmunity + 1`) and/or `EMPImmunity + 1`.
     - `BaseStatusEffect.OverloadEMP.immunityStats` contains `BaseStats.EMPImmunity` (`damageSystem.script:2070-2078` `IsImmune`). Preserving `Base.lua:116` and these stat modifiers keeps Short Circuit immunity intact while avoiding adding `ElectrocuteImmunity` to `OverloadLevel4PlusPlus.immunityStats` (which would break `SmasherBlackwallBrainMelt` at `Base.lua:7996`).
  2. **Why the Scanner Menu Hid Shock Immunity:**
     - In vanilla `tweakdb.bin` & `tweakdb_ep1.bin`, `Ability.HasElectrocuteImmunity` has `showInCodex = False`, `loc_key_name = LocKey(0)`, and `loc_key_desc = LocKey(0)` (although `ui\icons\abilities.tweak:328` already provides `UIIcon.Ability.HasElectrocuteImmunity` with `ICONS_IsImmune`).
     - `lang_en_text.archive` contains `Gameplay-NPC-Abilities-HasBurningImmunity` (`LocKey#54202`), but **zero** `Gameplay-NPC-Abilities-HasElectrocuteImmunity*` or `ShockImmunity` keys.
     - `NPCPuppet.CompileScannerChunks` (`NPCPuppet.script:4463-4505`) only reads `archetypeData.AbilityGroups` and `characterRecord.Abilities`, never inspecting `StatsSystem` for `ElectrocuteImmunity`/`EMPImmunity` from `StatModifierGroup` (`AllDOTImmunity`, `we_ep1_05`, `CerberusEMPImmunity`) or dynamic status effects, and `OnStatusEffectApplied`/`OnStatusEffectRemoved` do not call `SetScannerDirty(true)`.
     - `ScannerAbilitiesGameController.OnAbilitiesChanged` (`scanner_chunks.script:811`) skips abilities where `ShowInCodex()` is false, and `ScannerAbilityItemLogicController.Setup` (`885-898`) renders blank text when `locKeyName` is invalid.
- **Modifiability Split:** Editable via `Modules\Base.lua` + a new Redscript module (`r6\scripts\ENC\ShockImmunityScanner.reds`). (Note: English label `"Shock Immunity"` is injected in Redscript because `lang_en_text.archive` lacks a localization key; non-English clients also display `"Shock Immunity"` unless a custom localization `.archive` is created in WolvenKit.)
- **Fixes Applied:**
  - **`Modules\Base.lua:116-117`:** Preserved `addToList("Ability.HasElectrocuteImmunity_inline0.stats", "Items.GroundingPlating_inline3")` and all dynamic shock/EMP immunity modifiers per R2; added `TweakDB:SetFlat("Ability.HasElectrocuteImmunity.showInCodex", true)`.
  - **`r6\scripts\ENC\ShockImmunityScanner.reds` (UTF-8 without BOM):**
    - `@wrapMethod(NPCPuppet) CompileScannerChunks()`: queries `StatsSystem` for `gamedataStatType.ElectrocuteImmunity > 0.0 || gamedataStatType.EMPImmunity > 0.0` and appends `t"Ability.HasElectrocuteImmunity"` to `UI_ScannerModules.ScannerAbilities` if not already present (covering both static `StatModifierGroup` and dynamic status-effect immunities).
    - `@wrapMethod(NPCPuppet) OnStatusEffectApplied` & `OnStatusEffectRemoved`: guarded with `if !this.IsDead() && !ScriptedPuppet.IsDefeated(this)`, calls `this.SetScannerDirty(true)` so scanner UI refreshes immediately when shock resistance buffs apply or expire on living targets.
    - `@wrapMethod(ScannerAbilitiesGameController) OnAbilitiesChanged(value: Variant) -> Bool`: calls `inkCompoundRef.RemoveAllChildren(this.m_ScannerAbilitiesRightPanel);` before `wrappedMethod(value)` so mid-scan `SetScannerDirty(true)` refreshes replace rather than duplicate `ScannerAbilityItemWidget` entries.
    - `@wrapMethod(ScannerAbilityItemLogicController) Setup`: sets `inkTextRef.SetText(this.m_abilityNameText, "Shock Immunity")` for `t"Ability.HasElectrocuteImmunity"`.

---

## R3 Dependency Compatibility Audit

Verified against the target dependency versions:
- **Cyber Engine Tweaks `1.38.0`** (LuaJIT 2.1.0 / Lua 5.1)
- **Native Settings UI `1.97`** (`minCETVersion = 1.25`)
- **Redscript `0.5.32`** (`scc.exe` + `scc_lib.dll`)

### Compatibility Defects Found & Fixed
1. **Missing `nativeSettings` Nil-Guard Crash (`Modules\Native Settings.lua`):**
   - *Live Telemetry Evidence (`bin\x64\plugins\cyber_engine_tweaks\scripting.log`, read-only):* loading `Enemies of NC` without `nativeSettings` crashed at `nativeSettings.addTab("/ENC", "ENC")` (`attempt to index local 'nativeSettings' (a nil value)`), aborting `onInit` before `"Enemies of Night City loaded"` could print.
   - *Fix:* Moved `addTab` / `addSubcategory` inside `ENCSettings:new()` guarded by `if nativeSettings == nil then ... return self end`, while running all 125 global variable assignments unconditionally from `curSettings` / `defaultSettings`.
2. **Global `ENC` Namespace Collision & Unreturned `ENC:new()` (`init.lua`, `Modules\Native Settings.lua`):**
   - `init.lua` and `Native Settings.lua` both defined global `ENC = {}` and `ENC:new()`, and `init.lua`'s `ENC:new()` did not `return self`.
   - *Fix:* Isolated `Native Settings.lua` to `local ENCSettings = {}` / `return ENCSettings:new()`, and added `return self` to `init.lua`'s `ENC:new()`.
3. **Config Initialization Order, Non-String-Key & Value-Type Hardening (`Modules\Native Settings.lua`, `Modules\config.lua`):**
   - `Native Settings.lua` previously called `config.loadFile("Data/config_new.json")` before `defaultSettings` was defined and never called `config.tryCreateConfig` or `config.backwardComp`. `config.lua` lacked `file == nil`, `pcall(json.decode, content)`, full non-string-key table guards, and value-type validation (CET's `json.decode` raises a Lua `error(...)` on malformed JSON; sparse JSON arrays with leading `null`s such as `[null, "a"]` decode with integer keys `[2]` where `rawget(t, 1) == nil`, causing `json.encode` to throw `"invalid table: mixed or invalid key types"` when merged with string keys; and mismatched value types such as `{"T1EnemyHP": "bad"}` break `Native Settings UI` sliders).
   - *Fix:* Moved `defaultSettings` above config loading, invoked `config.tryCreateConfig` + `config.backwardComp` + `config.loadFile` with fallback to `defaultSettings`, and wrapped `json.decode` in `pcall` inside `config.loadFile`. In both `config.backwardComp` and `Modules\Native Settings.lua`, replaced `rawget(..., 1) ~= nil` with a full `pairs` check rejecting any table containing any key with `type(k) ~= "string"`, and validated each loaded setting's value type against `defaultSettings` (`type(v) == type(data[k])` in `config.backwardComp`; `type(curSettings[k]) ~= type(v)` repair in `Modules\Native Settings.lua`).
4. **Path Casing Consistency (`init.lua`):**
   - `init.lua:10-18` used lowercase `"modules/..."` while the directory on disk is `Modules/`.
   - *Fix:* Normalized all 9 `dofile(...)` calls in `init.lua` to `"Modules/..."`.
5. **Unguarded `BreachAction` Flats (`Modules\reloadable_config.lua`):**
   - `reloadable_config.lua` mutated `BreachAction.targetPrereqs` / `targetActivePrereqs` even when `EnableBreachProtocol == false`.
   - *Fix:* Guarded `BreachAction` mutations behind `if EnableMod and EnableBreachProtocol and TweakDB:GetRecord("BreachAction") ~= nil then`.
6. **UI Slider Bounds & Description Parity (`Modules\Native Settings.lua`):**
   - Fixed `KurtHP` description (`"ENC default is 4.66"` -> `"ENC default is 4.7"`, matching `defaultSettings.KurtHP = 4.7` and `Data\config_new.json`) and `SniperSpeed` description (`"ENC default is 150"` -> `"ENC default is 400"`, matching `defaultSettings.SniperSpeed = 400`).
   - Cleaned `10.0` / `0.0` float bounds to integer `10` / `0` in 8 `addRangeInt` calls (`BossMaxDmgPerHitStat` .. `RibakovMaxDmgPerHitStat`).

---

## Verification Summary

All static checks were executed in an isolated temporary directory (and cleaned up afterward), with zero modifications to the live `Cyberpunk 2077` installation directory:

1. **LuaJIT 2.1 Syntax Validation (11/11 `.lua` files):**
   - All 11 `.lua` files (`init.lua`, `Base.lua` [72,238 tokens], `BreachProtocol.lua`, `config.lua` [369 tokens], `Detection.lua`, `EnemyVariety.lua` [22,950 tokens], `Native Settings.lua` [7,964 tokens], `reloadable_config.lua`, `SmartWeapon.lua`, `StatusEffects.lua`, `TimeDilation.lua`) parsed with **0 syntax errors**; negative test confirmed missing `end` is caught.
2. **JSON, 125-Setting Parity & Adversarial `cet_json.lua` Config Simulation:**
   - **125 / 125** keys match identically across `Data\config_new.json`, `defaultSettings`, global assignments, and active `nativeSettings.add*` widgets (`5` switches, `54` int sliders, `66` float sliders), with **0** bounds errors and **0** description mismatches.
   - **25 / 25** adversarial JSON/config edge cases (empty/whitespace/BOM/malformed/truncated/trailing-garbage, scalars, dense arrays, sparse numeric arrays `[null, "a"]` / `[null, 123]` / `[null, null, true]` / `[null, {"EnableMod":false}]`, partial/string-key objects, and mismatched value types) passed 100% against `CET 1.38.0` `json.lua` behavior + `Modules\config.lua` + `Modules\Native Settings.lua` with **0** uncaught errors.
   - Zero lowercase `modules/` paths remain in `init.lua`.
3. **Redscript `0.5.32` Isolated Compile (`scc.exe -W`):**
   - Verified `BreakHold.reds` (`6,800 B`) and `ShockImmunityScanner.reds` (`2,888 B`) are saved without UTF-8 BOM.
   - `scc.exe -compile "...\r6\scripts" -outputCacheFile "...\out.redscripts" -W` exited with **`ExitCode = 0`**, **0 errors**, **0 warnings**, producing `out.redscripts` (`16,781,120 B`).
4. **Archive Packaging & Live Game Read-Only Check:**
   - Rebuilt `Enemies_of_Night_City_Patch_2.5_Fixed.zip` at repository root containing `archive/`, `bin/`, `r6/` directly, verified `17 / 17` SHA256 byte-for-byte parity against `Enemies_of_Night_City_Patch_2.5_Fixed/`.
   - Confirmed the live `Cyberpunk 2077` installation directory remained 100% unmodified.
