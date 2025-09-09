BattleCommand_FocusEnergy:
    ld a, BATTLE_VARS_SUBSTATUS1
    call GetBattleVarAddr
    res SUBSTATUS_NIGHTMARE, [hl]
    ld a, BATTLE_VARS_STATUS
    call GetBattleVarAddr
    xor a
    ld [hl], a
    call AnimateCurrentMove
    ld hl, GettingPumpedText
    call StdBattleTextbox
    ldh a, [hBattleTurn]
    and a
    jp z, CalcPlayerStats
    jp CalcEnemyStats
