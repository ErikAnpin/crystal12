	object_const_def
	const ROUTE10_ZAPDOS
	
Route10North_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route10NorthZapdosCallback
	
Route10NorthZapdosCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .NoAppear
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .Appear
	sjump .NoAppear
	
.Appear:
	appear ROUTE10_ZAPDOS
	endcallback	
	
.NoAppear:
	disappear ROUTE10_ZAPDOS
	endcallback	
	
Route10Zapdos:
	faceplayer
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_FOUGHT_ZAPDOS
	loadvar VAR_BATTLETYPE, BATTLETYPE_ROAMING	
	loadwildmon ZAPDOS, 50
	startbattle
	disappear ROUTE10_ZAPDOS
	reloadmapafterbattle
	end

ZapdosText:
	text "Gyaoo!"
	done		

PowerPlantSign:
	jumptext PowerPlantSignText

Route10PokecenterSign:
	jumpstd PokecenterSignScript

PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  1, ROUTE_10_POKECENTER_1F, 1
	warp_event  3,  9, POWER_PLANT, 1

	def_coord_events

	def_bg_events
	bg_event  5, 11, BGEVENT_READ, PowerPlantSign
	bg_event 12,  1, BGEVENT_READ, Route10PokecenterSign

	def_object_events
	object_event 5, 1, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route10Zapdos, EVENT_ROUTE10_ZAPDOS