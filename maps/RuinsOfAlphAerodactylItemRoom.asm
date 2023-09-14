	object_const_def
	const RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL1
	const RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL2
	const RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL3
	const RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL4

RuinsOfAlphAerodactylItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

RuinsOfAlphAerodactylItemRoomGoldBerry:
	opentext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	disappear RUINSOFALPHAERODACTYLITEMROOM_POKE_BALL1
	setevent EVENT_PICKED_UP_GOLD_BERRY_FROM_AERODACTYL_ITEM_ROOM
	writetext FoundAerodactylText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke AERODACTYL, 25
	closetext
	end

.NoRoom
	writetext FoundAerodactylText
	waitsfx
	promptbutton
	writetext AerodactylPartyFullText
	waitbutton
	closetext
	end

RuinsOfAlphAerodactylItemRoomMoonStone:
	itemball LEAF_STONE

RuinsOfAlphAerodactylItemRoomHealPowder:
	itemball WATER_STONE

RuinsOfAlphAerodactylItemRoomEnergyRoot:
	itemball METAL_COAT	

RuinsOfAlphAerodactylItemRoomAncientReplica:
	jumptext RuinsOfAlphAerodactylItemRoomAncientReplicaText

RuinsOfAlphAerodactylItemRoomAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

FoundAerodactylText:
	text "<PLAYER> found"
	line "AERODACTYL!"
	done
	
AerodactylPartyFullText:
	text "But there's no"
	line "more room left"
	cont "in the party…"
	done

RuinsOfAlphAerodactylItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_AERODACTYL_WORD_ROOM, 2

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, RuinsOfAlphAerodactylItemRoomAncientReplica
	bg_event  5,  1, BGEVENT_READ, RuinsOfAlphAerodactylItemRoomAncientReplica

	def_object_events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomGoldBerry, EVENT_PICKED_UP_GOLD_BERRY_FROM_AERODACTYL_ITEM_ROOM
	object_event  5,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomMoonStone, EVENT_PICKED_UP_MOON_STONE_FROM_AERODACTYL_ITEM_ROOM
	object_event  2,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomHealPowder, EVENT_PICKED_UP_HEAL_POWDER_FROM_AERODACTYL_ITEM_ROOM
	object_event  5,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RuinsOfAlphAerodactylItemRoomEnergyRoot, EVENT_PICKED_UP_ENERGY_ROOT_FROM_AERODACTYL_ITEM_ROOM
