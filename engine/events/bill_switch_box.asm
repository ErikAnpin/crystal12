BillBoxSwitchCheck:
	ld a, [wCurBox]
	cp NUM_BOXES - 1
	jr nz, .notbox14
	ld a, -1
.notbox14
	inc a
.billboxloop
	inc a
	ld c, a
	push af
	callab GetBoxCount
	cp MONS_PER_BOX
	jr nz, .foundspace
	pop af
	dec a
	cp NUM_BOXES - 1
	jr nz, .notlastbox
	ld a, -1
.notlastbox
	inc a
	ld c, a
	ld a, [wCurBox]
	cp c
	ld a, c
	jr nz, .billboxloop
	xor a
	ld [wScriptVar], a
	ret

.foundspace
	pop af
	dec a
	ld [wScriptVar], a
	ld [wBuffer1], a
	ret

BillBoxSwitch:
	ld hl, wc608
	ld de, $d000
	ld bc, $1e0
	ld a, $6
	call FarCopyWRAM
	ld a, [wBuffer1]
	ld e, a
	callba ChangeBoxSaveGameNoConfirm
	ld de, wc608
	ld hl, $d000
	ld bc, $1e0
	ld a, $6
	call FarCopyWRAM
	ret