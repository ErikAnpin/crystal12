	object_const_def
	const ICEPATH1F_POKE_BALL1
	const ICEPATH1F_POKE_BALL2
	const ICEPATH1F_POKE_BALL3
	const ICEPATH1F_BEAUTY

IcePath1F_MapScripts:
	def_scene_scripts

	def_callbacks

IcePath1FHMWaterfall:
	itemball TM_DRAGONBREATH

IcePath1FPPUp:
	itemball RARE_CANDY

IcePath1FProtein:
	itemball PROTEIN

TrainerBeautyJulie:
	trainer BEAUTY, JULIE, EVENT_BEAT_BEAUTY_JULIE, BeautyJulieSeenText, BeautyJulieBeatenText, 0, .Script

.Script
	endifjustbattled
	opentext
	writetext BeautyJulieAfterBattleText
	waitbutton
	closetext
	end

BeautyJulieSeenText:
	text "My #MON are"
    line "ice-cold and"
    cont "perfectly elegant."

	para "Can you handle"
    line "the chill?"
    done

BeautyJulieBeatenText:
	text "My composure..."
    line "It's melted away!"
    done

BeautyJulieAfterBattleText:
	text "I'm modeling my"
    line "style after a"
    cont "legend from KANTO."

    para "I even started a"
    line "doll collection,"
    cont "just like her!"
    done

IcePath1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 19, ROUTE_44, 1
	warp_event 36, 27, BLACKTHORN_CITY, 7
	warp_event 37,  5, ICE_PATH_B1F, 1
	warp_event 37, 13, ICE_PATH_B1F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 31,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FHMWaterfall, EVENT_GOT_HM07_WATERFALL
	object_event 32, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FPPUp, EVENT_ICE_PATH_1F_PP_UP
	object_event 35,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, IcePath1FProtein, EVENT_ICE_PATH_1F_PROTEIN
	object_event 23,  19, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulie, -1