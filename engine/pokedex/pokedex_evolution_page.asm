DisplayDexMonEvos:
	ld a, DEXENTRY_EVO
	ld [wPokedexEntryType], a
	call DisableSpriteUpdates
	callfar ClearSpriteAnims2
	farcall Pokedex_GetSelectedMon
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	hlcoord 0, 4
	lb bc, SCREEN_HEIGHT - 4, SCREEN_WIDTH
	call ClearBox
	call EVO_Draw_border
	ld a, [wTempSpecies]
	callfar GetPreEvolution
	callfar GetPreEvolution
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	
	ld de, .stage1_text
	hlcoord 6, 1
	call PlaceString
	hlcoord 6, 2
	call EVO_sethlcoord
	call GetPokemonName
	call PlaceString
	ld a, -1
	ld [wStatsScreenFlags], a
	call EVO_DrawSpriteBox
	call EVO_place_CaughtIcon
	hlcoord 6, 2
	call EVO_sethlcoord
	call EVO_place_Mon_Types
	call EVO_place_Mon_Icon
	xor a
	ld [wStatsScreenFlags], a
	
	ld a, [wCurPartySpecies]
	dec a
	ld b, 0
	ld c, a
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarWord
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; if zero, no evos
	and a
	jr nz, .does_evo
	hlcoord 3, 6
	ld de, .doesnt_evo_text
	call PlaceString
	ret ; no Evos
.does_evo
	push hl
	push af ; manner of evo
	ld a, [wCurDamage]
	and a
	jr z, .normal_line
	; we're in a multi-page evo line
	pop hl ; dont need this value, just fix stack
	pop af ; dont need this value, just fix stack
	;call EVO_print_pagenum ; returns additional page num/index
	ld a, [wCurDamage] ; page num
	ld c, 4 ; we want the 4th Evo
	call SimpleMultiply
	call EVO_set_multi_page_ptr
	ld a, d
	push hl ; manner of evo byte
	push af ; manner of evo
	ld a, [wCurDamage + 1] ; stage 2
	and a
	jr z, .normal_line
	hlcoord 6, 4
	ld de, .stage3_text
	call PlaceString
	ld b, 1 ; stage 3
	jr .cont
.normal_line
	hlcoord 6, 4
	ld de, .stage2_text
	call PlaceString
	ld b, 0 ; stage 2
.cont	
	hlcoord 6, 5
	call EVO_sethlcoord
	pop af ; manner of evo
	pop hl ; manner of EVO byte
	inc hl ; hl points to manner byte +1  
	
	ld c, 0 ; count
; get num of stage 2 evos
; MAIN LOOP START
.main_loop
	push bc ; count and stage
	push af ; manner of evo
	push hl ; manner of EVO byte + 1
; get Species	
	cp EVOLVE_STAT
	jr nz, .no_extra1
	inc hl
.no_extra1
	inc hl ; species byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; species
	ld [wNamedObjectIndex], a
	call GetPokemonName ; uses NamedObjectIndex
	call EVO_gethlcoord
	call PlaceString
	call EVO_DrawSpriteBox
	call EVO_place_CaughtIcon
	call EVO_place_Mon_Types
	call EVO_place_Mon_Icon
	call EVO_inchlcoord

; done printing species
	pop hl ; manner of evo byte +1
	pop af ; manner of evo
	push hl ; manner of evo byte +1
	push af ; manner of evo
; print evo info
	cp EVOLVE_LEVEL
	call z, EVO_level
	cp EVOLVE_ITEM
	call z, EVO_item
	cp EVOLVE_TRADE
	call z, EVO_trade
	cp EVOLVE_HAPPINESS
	call z, EVO_happiness
	cp EVOLVE_STAT
	call z, EVO_stats
; after the Evo manner specific prints, HL should be pointing to next EVO manner or 0
	pop af ; manner of evo
	pop hl ; manner of evo byte +1
; get Next EVO Manner or 0	
	cp EVOLVE_STAT
	jr nz, .no_extra2
	inc hl
.no_extra2
	inc hl ; species byte
	inc hl ; points to next evo manner or 0
	ld a, BANK(EvosAttacksPointers)
	call GetFarByte
	pop bc ; previous count
	inc c ; current count
	inc hl ; if there's a next EVO entry, points to Evo +1 now
	push af ; manner of next evo
	ld a, c
	ld [wStatsScreenFlags], a ; current page slot counter
	pop af ; manner of next evo 
	and a ; checks if evo left in stage
	jr z, .done_stage

	push af
	ld a, c ; ld a, [wStatsScreenFlags]
	cp 3
	jp z, .exit_early_print_cont
	pop af
	jr .main_loop
.done_stage
	xor a
	cp b
	jr nz, .done ; we were in stage 3
.done_stage2
	ld a, c ; count of stage 2
	cp $1
	jr nz, .done
	cp 3
	jp z, .exit_early_print_cont2
	push bc ; count and stage
	ld a, [wCurPartySpecies] ; stage 1 evo
	dec a
	ld b, 0
	ld c, a
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarWord
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; manner of stage 1 evo ; if zero, no evos
	cp EVOLVE_STAT
	jr nz, .no_extra3
	inc hl
.no_extra3
	inc hl
	inc hl ; species byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; stage 2 species
	dec a
	ld b, 0
	ld c, a
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarWord
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; manner of stage 1 evo ; if zero, no evos

	pop bc
	and a
	jr z, .done ; stage 2 mon doesnt evolve
	; stage 2 mon does evolve
	push hl ; manner of evo byte
	push af ; manner of evo
	; print Stage 3:
	call EVO_gethlcoord
	ld de, .stage3_text
	inc b
	push bc
	call PlaceString
	call DelayFrame
	call EVO_inchlcoord
	pop bc
	pop af ; manner of evo
	pop hl ; manner of evo byte
	inc hl ; manner of evo byte +1
	jp .main_loop
.done
	xor a
	ld [wPokedexEvoStage2], a
	ld [wPokedexEvoStage3], a
	ld a, [wCurDamage]
	and a
	jr nz, .done_multi
	ld a, [wStatsScreenFlags]
	cp 1
	jr nz, .not_single
.not_single
	xor a
	ld [wStatsScreenFlags], a
	ret
.done_multi
	ld a, b
	inc a
	ld [wStatsScreenFlags], a
	ld a, -1
	ld [wCurDamage + 1], a

	ld de, .cont_page_text
	hlcoord 12, 16
	call PlaceString
	ret
.stage1_text:
	db $6b, $6c, $6d, "1@"
	; db "STAGE 1:@"
.stage2_text:
	db $6b, $6c, $6d, "2@"
	; db "STAGE 2:@"
.stage3_text:
	db $6b, $6c, $6d, "3@"
	; db "STAGE 3
.cont_page_text:
	db $63, $64, $65, $66, "@"
.doesnt_evo_text:
	db "DOES NOT EVOLVE@"
.exit_early_print_cont
	pop af
.exit_early_print_cont2
	ld a, b ; current stage, 0 = stage 2, 1 = stage 3
	ld [wCurDamage + 1], a

	ld de, .cont_page_text
	hlcoord 12, 16
	call PlaceString
	ret

EVO_sethlcoord:
	push af
	ld a, h
	ld [wPokedexEvoStage2], a
	ld a, l
	ld [wPokedexEvoStage3], a
	pop af
	ret
EVO_gethlcoord::
	push af
	ld a, [wPokedexEvoStage2]
	ld h, a
	ld a, [wPokedexEvoStage3]
	ld l, a
	pop af
	ret	
EVO_inchlcoord:
	push af
	push bc
	ld a, [wPokedexEvoStage2]
	ld h, a
	ld a, [wPokedexEvoStage3]
	ld l, a
	push hl
	ld b, 0
	ld c, SCREEN_WIDTH
	add hl, bc
	ld a, h
	ld [wPokedexEvoStage2], a
	ld a, l
	ld [wPokedexEvoStage3], a
	pop hl
	pop bc
	pop af
	ret

EVO_level:
	push hl ; pointing to lvl byte
	call EVO_gethlcoord
	ld [hl], $75 ; $5d

	pop hl ; pointing to lvl byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	call EVO_inchlcoord
	inc hl
	lb bc, PRINTNUM_LEFTALIGN | 1, 2
	call PrintNum ; lvl evolved at
	call EVO_inchlcoord	
	ret

EVO_item:
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	call EVO_inchlcoord
	push af ; item index
	ld de, .item_text
	call PlaceString ; item:

	pop af ; item index
	ld [wNamedObjectIndex], a
	call GetItemName

	call EVO_inchlcoord
	call PlaceString
	call EVO_inchlcoord
	ret
.item_text:
	db "ITEM@"

EVO_trade:
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	push af ; item index or -1 for no item
	call EVO_gethlcoord
	ld de, .trade_text
	call PlaceString ; mon species
	
	pop af ; item index
	cp -1
	jr z, .done
	push af ; trade item index
	
	call EVO_inchlcoord
	ld b, 0
	ld c, 5
	add hl, bc
	ld de, .hold_text
	call PlaceString
	
	pop af
	ld [wNamedObjectIndex], a
	call GetItemName
	call EVO_inchlcoord
	call PlaceString
.done
	call EVO_inchlcoord
	ret
.trade_text:
	db "TRADE@"
.hold_text:
	db " ", "<+>","@"

EVO_happiness:
	push hl ; time of day byte
	; call EVO_inchlcoord
	; ld de, .happiness_text
	; call PlaceString ; mon species
	
	pop hl ; time of day byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte
	
	ld de, .anytime_text
	cp TR_ANYTIME
	jr z, .done
	ld de, .sunup_text
	cp TR_MORNDAY
	jr z, .done
	ld de, .nite_text
.done
	call EVO_inchlcoord
	call PlaceString
	call EVO_inchlcoord
	ret
.happiness_text:
	db $6e, "@"; "HAPPINESS@"
.anytime_text:
	db $6e, "@"
	; db "ANYTIME@"
.sunup_text:
	db $6e, $71, $72, "@"
	; db "MORN/DAY@"
.nite_text:
	db $6e, $73, "@"
	; db "NITE@"

EVO_stats:
	push hl ; level Needed byte
	call EVO_gethlcoord
	ld [hl], $75 ; for vram1 side

	pop hl ; level needed byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; stats needed
	
	inc hl ; stats const needed byte
	push hl ; stats const needed byte
;print lvl
	ld [wTextDecimalByte], a
	ld de, wTextDecimalByte
	call EVO_inchlcoord
	lb bc, PRINTNUM_LEFTALIGN | 1, 2
	inc hl ;
	call PrintNum
	
	pop hl ; stats const needed byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; Stats Const, ATK >= DEF etc

	ld de, .atk_eq_def_text
	cp ATK_EQ_DEF
	jr z, .done
	ld de, .atk_gt_def_text
	cp ATK_LT_DEF
	jr z, .done
	ld de, .atk_lt_def_text
.done
	call EVO_inchlcoord
	call PlaceString
	call EVO_inchlcoord
	ret

.atk_eq_def_text:
	db "ATK = DEF@"
.atk_gt_def_text:
	db "ATK > DEF@"
.atk_lt_def_text:
	db "ATK < DEF@"

EVO_place_Mon_Types:
	push af
	push bc
	push hl
	ld a, [wTempMonSpecies]
	ld a, [wTempSpecies]
	ld a, [wCurSpecies]
	push af
	ld a, [wCurPartySpecies]
	
	ld a, [wTempSpecies]
	ld [wCurSpecies], a	
	call GetBaseData

	ld a, [wBaseType1]
	ld c, a
	call EVO_adjust_type_index
	ld a, c

	push af
	call EVO_type_gethlcoord
	pop af
	inc hl
	call DEX_PrintType_Short
; 2nd Type
	ld a, [wBaseType1]
	ld b, a
	ld a, [wBaseType2]
	cp b
	jp z, .done
	ld c, a ; type 2
	call EVO_adjust_type_index

	ld a, c ; type 2
	push af
	call EVO_type2_gethlcoord
	pop af
	inc hl
	call DEX_PrintType_Short	

.done
	pop af
	ld [wCurSpecies], a
	pop hl
	pop bc
	pop af
	ret

EVO_type_gethlcoord:
	push bc
	push af
	call EVO_gethlcoord
	ld b, 0
	ld c, 11
	add hl, bc

	dec hl
	pop af
	pop bc
	ret

EVO_type2_gethlcoord:
	push bc
	push af
	call EVO_gethlcoord
	ld b, 0
	ld c, 11
	add hl, bc
	ld b, 0
	ld c, SCREEN_WIDTH
	add hl, bc
	dec hl
	pop af
	pop bc
	ret

EVO_adjust_type_index:
	ld a, c
; Skip Bird
	cp BIRD
	jr c, .done
	cp UNUSED_TYPES
	dec a
	jr c, .done
	sub UNUSED_TYPES
.done
	ld c, a
	ret

EVO_place_Mon_Icon:
	push af
	push bc
	push de
	push hl
	ld a, [wStatsScreenFlags]
	inc a
	ldh [hObjectStructIndex], a
	ld hl, LoadMenuMonIcon
	ld a, BANK(LoadMenuMonIcon)
	ld e, MONICON_UNUSED
	rst FarCall
	
	pop hl
	pop de
	pop bc
	pop af
	ret

EVO_DrawSpriteBox:
	push hl
	push de
	push bc
	push af
; white rectangle/squares

	call EVO_gethlcoord
	ld a, [wStatsScreenFlags]
	cp -1
	jr z, .stage1
	cp 1
	jr z, .slot3
	cp 2
	jr z, .slot4
; slot 1
	hlcoord 1, 5 ; 0, 4
	jr .start
.slot3
	hlcoord 1, 9 ; 0, 8
	jr .start
.slot4
	hlcoord 1, 13 ; 0, 12
	jr .start
.stage1
	hlcoord 1, 1 ; 0, 0
.start
; top left corner
	ld [hl], $77
	push hl
	inc hl
; top border
	ld a, $7b
	ld bc, 2
	push hl
	call ByteFill
	pop hl
; top right corner
	inc hl
	inc hl	
	ld [hl], $78

	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	push hl
; left side	
	push hl
	lb bc, 2, 1
	ld a, $7d
	call FillBoxWithByte
	pop hl
	inc hl
;white sprite box fill
	lb bc, 2, 2
	ld a, $62 ; $7f
	push hl
	call FillBoxWithByte
	pop hl
; right side
	inc hl
	inc hl
	lb bc, 2, 1
	ld a, $7e
	call FillBoxWithByte

; bottom left corner
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	add hl, bc
	ld [hl], $79
; bottom border
	inc hl
	ld a, $7c
	ld bc, 2
	push hl
	call ByteFill
	pop hl
; bottom right corner
	inc hl
	inc hl
	ld [hl], $7a
.notslot4
	pop af
	pop bc
	pop de
	pop hl
	ret

EVO_set_multi_page_ptr:
	ld c, a
	ld a, [wCurDamage + 1]
	; if we're continuing the stage 3 mons,
	; need to dec a to account for stage 2 mon that wont be in evo list
	and a
	jr z, .start
	ld a, [wCurDamage]
	ld b, a
	ld a, c
	sub b
	ld c, a
.start
	push bc
	ld a, [wCurPartySpecies] ; stage 1 evo
	dec a
	ld b, 0
	ld c, a
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarWord
	ld a, [wCurDamage + 1]
	and a 
	call nz, .get_stage2
.loop
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; manner of evo ; if zero, no evos
	ld d, a
	pop bc ; 4th entry, 8th entry, etc 
	dec c
	ld a, c
	and a
	ret z ; hl should be pointing at "espeon"'s manner of EVO byte ptr
	push bc
	; check for 0? shouldnt encounter 0
	ld a, d
	cp EVOLVE_STAT
	jr nz, .no_extra1
	inc hl
.no_extra1
	inc hl
	inc hl ; species byte
	inc hl ; next EVO manner byte
	jr .loop
.get_stage2:
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; manner of evo ; if zero, no evos
	; check for 0? shouldnt encounter 0
	cp EVOLVE_STAT
	jr nz, .no_extra2
	inc hl
.no_extra2
	inc hl
	inc hl ; species byte
	ld a, BANK("Evolutions and Attacks")
	call GetFarByte ; stage 2 species		
	dec a
	ld b, 0
	ld c, a
	ld hl, EvosAttacksPointers
	add hl, bc
	add hl, bc
	ld a, BANK(EvosAttacksPointers)
	call GetFarWord	
	ret

EVO_place_CaughtIcon:
	push hl
	push de
	push bc
	push af
	ld a, [wTempSpecies]
	dec a
	call CheckCaughtMon
	and a
	jr z, .done
	call EVO_gethlcoord
	ld a, [wStatsScreenFlags]
	cp -1
	jr z, .stage1
	cp 1
	jr z, .slot3
	cp 2
	jr z, .slot4
; slot 1
	hlcoord 5, 5 ; 0, 4
	jr .start
.slot3
	hlcoord 5, 9 ; 0, 8
	jr .start
.slot4
	hlcoord 5, 13 ; 0, 12
	jr .start
.stage1
	hlcoord 5, 2 ; 0, 0
.start
	ld [hl], $76 ; pokeball icon
.done
	pop af
	pop bc
	pop de
	pop hl
	ret

EVO_Draw_border:
; Request1bpp
; Load 1bpp at b:de to occupy c tiles of hl.
	xor a
	ldh [hBGMapMode], a
	farcall Pokedex_BlackOutBG
	
	ld a, 1
	ldh [rVBK], a

	lb bc, BANK(vTiles2), 16
	ld de, $8c00 
	ld hl, vTiles2
	call Request1bpp
	lb bc, BANK(vTiles2), 16
	ld de, $8c00 
	ld hl, vTiles2 tile $10 ; + $10
	call Request1bpp
	lb bc, BANK(vTiles2), 16
	ld de, $8c00 
	ld hl, vTiles2 tile $20 ; + $20
	call Request1bpp
	lb bc, BANK(vTiles2), 16
	ld de, $8c00 
	ld hl, vTiles2 tile $30 ; + $30
	call Request1bpp	
	farcall DrawDexEntryScreenRightEdge_Evo
	hlcoord 19, 1
	lb bc, SCREEN_HEIGHT - 2, 1
	ld a, $7f ; erase copied right border
	call FillBoxWithByte
	hlcoord 19, 0
	ld [hl], $34
	hlcoord 19, 17
	ld [hl], $39
	hlcoord 0, 0
	ld bc, SCREEN_WIDTH
	ld a, $34 ; top border
	call ByteFill

	hlcoord 0, 17
	ld bc, SCREEN_WIDTH
	ld a, $39 ; bottom border
	call ByteFill

	hlcoord 0, 0
	lb bc, SCREEN_HEIGHT, 1
	ld a, $36 ; left border
	call FillBoxWithByte

	hlcoord 0, 0
	ld a, $33
	ld [hl], a; $65 ; upper left corner
	hlcoord 0, 17 ; lower left corner
	ld [hl], $38
	xor a
	ldh [hBGMapMode], a

	ld b, SCGB_POKEDEX_EVO
	call GetSGBLayout
	
	; print b > back
	hlcoord 16, 16
	ld de, .back_page_text
	call PlaceString
	call WaitBGMap
	ret
.back_page_text:
	db $67, $68, $69, $6a, "@"