BattleCommand_HiddenPower:
	ld a, [wAttackMissed]
	and a
	ret nz
	farcall BattleHiddenPowerDamage
	ret
