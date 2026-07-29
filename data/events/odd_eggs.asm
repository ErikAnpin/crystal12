DEF NUM_ODD_EGGS EQU 14

MACRO prob
	DEF prob_total += \1
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2
DEF prob_total = 0
; Pichu
	prob 5
	prob 5
; Cleffa
	prob 5
	prob 5
; Igglybuff
	prob 5
	prob 5
; Smoochum
	prob 10
	prob 10
; Magby
	prob 7
	prob 7
; Elekid
	prob 10
	prob 10
; Tyrogue
	prob 8
	prob 8
	assert_table_length NUM_ODD_EGGS
	assert prob_total == 100, "OddEggProbabilities do not sum to 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH

	db PICHU
	db NO_ITEM
	db THUNDERSHOCK, CHARM, HIDDEN_POWER, 0
	dw 02048 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 13, 12 ; HP Grass
	db 20, 5, 15, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 10 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db PICHU
	db NO_ITEM
	db THUNDERSHOCK, CHARM, PROTECT, 0
	dw 00256 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 20, 5, 5, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 17 ; Max HP
	bigdw 10 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db CLEFFA
	db NO_ITEM
	db POUND, CHARM, HIDDEN_POWER, 0
	dw 04096 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 14, 10, 11 ; HP Grass
	db 20, 5, 15, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 8 ; Atk
	bigdw 9 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db CLEFFA
	db NO_ITEM
	db POUND, CHARM, PROTECT, 0
	dw 00768 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 20, 5, 5, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 9 ; Atk
	bigdw 8 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db IGGLYBUFF
	db NO_ITEM
	db POUND, SING, HIDDEN_POWER, 0
	dw 04096 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 10, 10, 10, 15 ; HP Grass
	db 20, 5, 15, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db IGGLYBUFF
	db NO_ITEM
	db POUND, SING, PROTECT, 0
	dw 00768 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 20, 5, 5, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 24 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 7 ; Spd
	bigdw 10 ; SAtk
	bigdw 8 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db SMOOCHUM
	db NO_ITEM
	db POWDER_SNOW, LICK, HIDDEN_POWER, 0
	dw 03584 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 6, 12, 13, 14 ; HP Fire
	db 20, 20, 15, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 8 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 14 ; SAtk
	bigdw 12 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db SMOOCHUM
	db NO_ITEM
	db POWDER_SNOW, LICK, PROTECT, 0
	dw 00512 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 20, 20, 5, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 9 ; Atk
	bigdw 7 ; Def
	bigdw 12 ; Spd
	bigdw 14 ; SAtk
	bigdw 12 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db MAGBY
	db NO_ITEM
	db EMBER, HIDDEN_POWER, 0, 0
	dw 02560 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 12, 11, 10, 12 ; HP Ground
	db 20, 15, 0, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 13 ; Atk
	bigdw 9 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db MAGBY
	db NO_ITEM
	db EMBER, PROTECT, 0, 0
	dw 00512 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 20, 5, 0, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 14 ; Atk
	bigdw 9 ; Def
	bigdw 14 ; Spd
	bigdw 13 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db ELEKID
	db NO_ITEM
	db THUNDERSHOCK, HIDDEN_POWER, 0, 0
	dw 03072 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 14, 10, 10, 11 ; HP Grass
	db 20, 15, 0, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 12 ; Atk
	bigdw 9 ; Def
	bigdw 15 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db ELEKID
	db NO_ITEM
	db THUNDERSHOCK, PROTECT, 0, 0
	dw 00512 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 20, 5, 0, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 20 ; Max HP
	bigdw 12 ; Atk
	bigdw 9 ; Def
	bigdw 15 ; Spd
	bigdw 12 ; SAtk
	bigdw 11 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db TYROGUE
	db NO_ITEM
	db REVERSAL, HIDDEN_POWER, 0, 0
	dw 02560 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 13, 12, 12, 8 ; HP Rock
	db 10, 15, 0, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 9 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	dname "EGG", MON_NAME_LENGTH

	db TYROGUE
	db NO_ITEM
	db REVERSAL, PROTECT, 0, 0
	dw 00256 ; OT ID
	bigdt 125 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 10, 5, 0, 0 ; PP
	db 10 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db 5 ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 19 ; Max HP
	bigdw 10 ; Atk
	bigdw 9 ; Def
	bigdw 9 ; Spd
	bigdw 9 ; SAtk
	bigdw 9 ; SDef
	dname "EGG", MON_NAME_LENGTH

	assert_table_length NUM_ODD_EGGS
