MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MACHOP,     "MUSCLE@@@@@", $99, $75, BLACKBELT_I,  37460, "MIKE@@@@@@@", TRADE_GENDER_EITHER ;GOLDENROD
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY@@@@@@", $96, $F3, CLEANSE_TAG,  48926, "KYLE@@@@@@@", TRADE_GENDER_EITHER ;VIOLET
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "VOLTY@@@@@@", $b9, $57, MAGNET,       29189, "TIM@@@@@@@@", TRADE_GENDER_EITHER ;OLIVINE
	npctrade TRADE_DIALOGSET_GIRL,      LICKITUNG,  DRAGONAIR,  "BAILU@@@@@@", $96, $78, BRIGHTPOWDER, 00283, "EMY@@@@@@@@", TRADE_GENDER_EITHER ;BLACKTHORN
	npctrade TRADE_DIALOGSET_NEWBIE,    PIKACHU,    HORSEA,     "FURIN@@@@@@", $7b, $89, SMOKE_BALL,   15616, "CHRIS@@@@@@", TRADE_GENDER_EITHER ;CHERRYGROVE
	npctrade TRADE_DIALOGSET_GIRL,      DODUO,      NINETALES,  "WALNUT@@@@@", $aa, $89, BITTER_BERRY, 26491, "KIM@@@@@@@@", TRADE_GENDER_EITHER ;CIANWOOD
	npctrade TRADE_DIALOGSET_COLLECTOR, FARFETCH_D, SANDSHREW,  "NICO@@@@@@@", $c5, $d4, SOFT_SAND,    50082, "FOREST@@@@@", TRADE_GENDER_EITHER ;MAHOGANY
	assert_table_length NUM_NPC_TRADES
