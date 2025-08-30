BattleCommand_Protect:
	call ProtectChance
	ret c

	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	set SUBSTATUS_PROTECT, [hl]

	call AnimateCurrentMove

	ld hl, ProtectedItselfText
	jp StdBattleTextbox

ProtectChance:
	ld de, wPlayerProtectCount
	ldh a, [hBattleTurn]
	and a
	jr z, .got_count
	ld de, wEnemyProtectCount
.got_count

	call CheckOpponentWentFirst
	jr nz, .failed


	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVar
	bit SUBSTATUS_SUBSTITUTE, a
	jr nz, .failed

	ld a, [de]  ;load count
	and a       ;check if 0
	jr nz, .failed

	ld a, [de]
	inc a
	ld [de], a

	and a
	ret

.failed
	xor a
	ld [de], a
	call AnimateFailedMove
	call PrintButItFailed
	scf
	ret
	