MACRO momitem
; money to trigger, cost, kind, item
	dt \1
	dt \2
	db \3, \4
ENDM

MomItems_1:
	momitem      0,   350,  MOM_ITEM, SUPER_POTION
	momitem      0,   200,  MOM_ITEM, FULL_HEAL
	momitem      0,   1500, MOM_ITEM, ELIXER
	momitem      0,   2400, MOM_ITEM, PP_UP
	momitem      0,   2400, MOM_ITEM, RARE_CANDY
.End

MomItems_2:
	momitem  10000,   350, MOM_ITEM, SUPER_POTION
	momitem  20000,   750, MOM_ITEM, FULL_HEAL
	momitem  30000,   750, MOM_ITEM, MOON_STONE
	momitem  40000,  1500, MOM_ITEM, ELIXER
	momitem  50000,  2400, MOM_ITEM, PP_UP
	momitem  60000,  2400, MOM_ITEM, RARE_CANDY
	momitem  70000,   750, MOM_ITEM, HYPER_POTION
	momitem  80000,  1500, MOM_ITEM, FULL_RESTORE
	momitem  90000,  2400, MOM_ITEM, PP_UP
	momitem 100000,  2400, MOM_ITEM, RARE_CANDY
.End