SECTION "Reserved Bytes", ROMX
ds 4  ; reserve 4 bytes

GetMaxLevel:
	ld hl, wJohtoBadges

	; Rising Badge (Clair)
	bit RISINGBADGE, [hl]
	ld a, MAX_LEVEL + 1
	jr nz, .exit

	; Glacier Badge (Pryce)
	bit GLACIERBADGE, [hl]
	ld a, 47
	jr nz, .exit

	; Mineral Badge (Jasmine)
	bit MINERALBADGE, [hl]
	ld a, 36
	jr nz, .exit

	; Storm Badge (Chuck)
	bit STORMBADGE, [hl]
	ld a, 35
	jr nz, .exit

	; Fog Badge (Morty)
	bit FOGBADGE, [hl]
	ld a, 32
	jr nz, .exit

	; Plain Badge (Whitney)
	bit PLAINBADGE, [hl]
	ld a, 24
	jr nz, .exit

	; Hive Badge (Bugsy)
	bit HIVEBADGE, [hl]
	ld a, 19
	jr nz, .exit

	; Zephyr Badge (Falkner)
	bit ZEPHYRBADGE, [hl]
	ld a, 15
	jr nz, .exit

	; No badges
	ld a, 10

.exit
	ld b, a
	ret
