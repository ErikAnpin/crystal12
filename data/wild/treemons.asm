TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 25, SPEAROW,    10
	db 25, EKANS,      11
	db 25, MANKEY,     12
	db 25, BEEDRILL,   13
	db -1
; rare
	db 25, SPEAROW,    11
	db 25, EKANS,      12
	db 25, MANKEY,     13
	db 25, BEEDRILL,   14
	db -1

TreeMonSet_Town:
; common
	db 25, PIDGEY,     10
	db 25, BUTTERFREE, 11
	db 25, BEEDRILL,   12
	db 25, PINECO,     13
	db -1
; rare
	db 25, PIDGEY,     11
	db 25, BUTTERFREE, 12
	db 25, BEEDRILL,   13
	db 25, PINECO,     14
	db -1

TreeMonSet_Route:
; common
	db 25, PIDGEY,     10
	db 25, HOOTHOOT,   11
	db 25, PINECO,     12
	db 25, LEDYBA,     13
	db -1
; rare
	db 25, PIDGEY,     11
	db 25, HOOTHOOT,   12
	db 25, PINECO,     13
	db 25, LEDYBA,     14
	db -1

TreeMonSet_Kanto:
; common
	db 50, HOOTHOOT,   10
	db 15, EKANS,      11
	db 15, HOOTHOOT,   12
	db 10, EXEGGCUTE,  13
	db  5, EXEGGCUTE,  14
	db  5, EXEGGCUTE,  15
	db -1
; rare
	db 50, HOOTHOOT,   11
	db 15, PINECO,     12
	db 15, PINECO,     13
	db 10, EXEGGCUTE,  14
	db  5, EXEGGCUTE,  15
	db  5, EXEGGCUTE,  16
	db -1

TreeMonSet_Lake:
; common
	db 25, PINECO,     22
	db 25, EXEGGCUTE,  23
	db 25, MURKROW,    24
	db 25, VENONAT,    25
	db -1
; rare
	db 25, PINECO,     23
	db 25, EXEGGCUTE,  24
	db 25, MURKROW,    25
	db 25, VENONAT,    26
	db -1

TreeMonSet_Forest:
; common
	db 25, MANKEY,     13
	db 25, AIPOM,      12
	db 25, HERACROSS,  15
	db 25, MURKROW,    14
	db -1
; rare
	db 25, MANKEY,     14
	db 25, AIPOM,      13
	db 25, HERACROSS,  16
	db 25, MURKROW,    15
	db -1

TreeMonSet_Rock:
	db 50, KRABBY,     15
	db 30, DIGLETT,    15
	db 20, SHUCKLE,    15
	db -1