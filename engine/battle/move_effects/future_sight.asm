BattleCommand_CheckFutureSight:
	ld hl, wPlayerFutureSightCount
	ld de, wPlayerFutureSightDamage
	ldh a, [hBattleTurn]
	and a
	jr z, .ok
	ld hl, wEnemyFutureSightCount
	ld de, wEnemyFutureSightDamage
.ok

	ld a, [hl]
	and a
	ret z
	cp 1
	ret nz

	ld [hl], 0
	ld a, [de]
	inc de
	ld [wCurDamage], a
	ld a, [de]
	ld [wCurDamage + 1], a

; --- NEW TYPE EFFECTIVENESS LOGIC ---
	push bc
	push de
	push hl

	; 1. Temporarily set the move type to PSYCHIC
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	ld a, [hl]
	push af ; Save the original move type
	ld a, PSYCHIC_TYPE
	ld [hl], a

	; 2. Calculate matchup against the current defender
	call BattleCheckTypeMatchup

	; 3. Restore the original move type
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	pop af
	ld [hl], a

	; 4. Apply the wTypeMatchup multiplier to wCurDamage
	ld a, [wTypeMatchup]
	and a
	jr z, .Immune

	cp 10 ; 10 = 1.0x (Normal effectiveness)
	jr z, .DoneMatchup

	; Multiply wCurDamage by wTypeMatchup
	ld hl, wCurDamage
	ld a, [hli]
	ld [hMultiplicand + 1], a
	ld a, [hl]
	ld [hMultiplicand + 2], a
	xor a
	ld [hMultiplicand], a

	ld a, [wTypeMatchup]
	ld [hMultiplier], a
	call Multiply

	; Divide the hProduct by 10
	ld a, 10
	ld [hDivisor], a
	ld b, 4
	call Divide

	; Store the quotient back into wCurDamage
	ld a, [hQuotient + 2]
	ld [wCurDamage], a
	ld b, a
	ld a, [hQuotient + 3]
	ld [wCurDamage + 1], a
	or b
	jr nz, .DoneMatchup

	; Ensure a minimum of 1 damage for resisted hits
	inc a
	ld [wCurDamage + 1], a
	jr .DoneMatchup

.Immune:
	xor a
	ld [wCurDamage], a
	ld [wCurDamage + 1], a

.DoneMatchup:
	pop hl
	pop de
	pop bc
	; --- END TYPE EFFECTIVENESS LOGIC ---

	ld b, futuresight_command
	jp SkipToBattleCommand

BattleCommand_FutureSight:
	call CheckUserIsCharging
	jr nz, .AlreadyChargingFutureSight
	ld a, BATTLE_VARS_MOVE_ANIM
	call GetBattleVar
	ld b, a
	ld a, BATTLE_VARS_LAST_COUNTER_MOVE
	call GetBattleVarAddr
	ld [hl], b
	ld a, BATTLE_VARS_LAST_MOVE
	call GetBattleVarAddr
	ld [hl], b
.AlreadyChargingFutureSight:
	ld hl, wPlayerFutureSightCount
	ldh a, [hBattleTurn]
	and a
	jr z, .GotFutureSightCount
	ld hl, wEnemyFutureSightCount
.GotFutureSightCount:
	ld a, [hl]
	and a
	jr nz, .failed
	ld a, 4
	ld [hl], a
	call BattleCommand_LowerSub
	call BattleCommand_MoveDelay
	ld hl, ForesawAttackText
	call StdBattleTextbox
	call BattleCommand_RaiseSub
	ld de, wPlayerFutureSightDamage
	ldh a, [hBattleTurn]
	and a
	jr z, .StoreDamage
	ld de, wEnemyFutureSightDamage
.StoreDamage:
	ld hl, wCurDamage
	ld a, [hl]
	ld [de], a
	ld [hl], 0
	inc hl
	inc de
	ld a, [hl]
	ld [de], a
	ld [hl], 0
	jp EndMoveEffect

.failed
	pop bc
	call ResetDamage
	call AnimateFailedMove
	call PrintButItFailed
	jp EndMoveEffect
