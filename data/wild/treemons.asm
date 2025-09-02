TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2
	dw TreeMonSet_None
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_None ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_None:
; no encounter data

TreeMonSet_Canyon:
; common
	db 25, SPEAROW,    10
	db 25, EKANS,      10
	db 25, MANKEY,     10
	db 25, BEEDRILL,   10
	db -1
; rare
	db 25, SPEAROW,    10
	db 25, EKANS,      10
	db 25, MANKEY,     10
	db 25, BEEDRILL,   10
	db -1

TreeMonSet_Town:
; common
	db 25, PIDGEY,     10
	db 25, BUTTERFREE, 10
	db 25, BEEDRILL,   10
	db 25, PINECO,     10
	db -1
; rare
	db 25, PIDGEY,     10
	db 25, BUTTERFREE, 10
	db 25, BEEDRILL,   10
	db 25, PINECO,     10
	db -1

TreeMonSet_Route:
; common
	db 25, PIDGEY,     10
	db 25, HOOTHOOT,   10
	db 25, PINECO,     10
	db 25, LEDYBA,     10
	db -1
; rare
	db 25, PIDGEY,     10
	db 25, HOOTHOOT,   10
	db 25, PINECO,     10
	db 25, LEDYBA,     10
	db -1

TreeMonSet_Kanto:
; common
	db 50, HOOTHOOT,   10
	db 15, EKANS,      10
	db 15, HOOTHOOT,   10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1
; rare
	db 50, HOOTHOOT,   10
	db 15, PINECO,     10
	db 15, PINECO,     10
	db 10, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db  5, EXEGGCUTE,  10
	db -1

TreeMonSet_Lake:
; common
	db 25, PINECO,     25
	db 25, EXEGGCUTE,  25
	db 25, MURKROW,    25
	db 25, VENONAT,   25
	db -1
; rare
	db 25, PINECO,     25
	db 25, EXEGGCUTE,  25
	db 25, MURKROW,    25
	db 25, VENONAT,   25
	db -1

TreeMonSet_Forest:
; common
	db 25, MANKEY,     10
	db 25, AIPOM,      10
	db 25, HERACROSS,  10
	db 25, MURKROW,    10
	db -1
; rare
	db 25, MANKEY,     10
	db 25, AIPOM,      10
	db 25, HERACROSS,  10
	db 25, MURKROW,    10
	db -1

TreeMonSet_Rock:
	db 60, KRABBY,     15
	db 20, DIGLETT,    15
	db 20, SHUCKLE,    15
	db -1