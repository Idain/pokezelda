	object_const_def
	const SAFFRONCITY_LASS1
	const SAFFRONCITY_POKEFAN_M
	const SAFFRONCITY_COOLTRAINER_M
	const SAFFRONCITY_COOLTRAINER_F
	const SAFFRONCITY_FISHER
	const SAFFRONCITY_YOUNGSTER1
	const SAFFRONCITY_YOUNGSTER2
	const SAFFRONCITY_LASS2

SaffronCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_SAFFRON
	endcallback

SaffronCityLass1Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityLass1Text
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityLass1Text_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityPokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityPokefanMText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityPokefanMText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityCooltrainerMScript:
	jumptextfaceplayer SaffronCityCooltrainerMText

SaffronCityCooltrainerFScript:
	jumptextfaceplayer SaffronCityCooltrainerFText

SaffronCityFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronCityFisherText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronCityFisherText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronCityYoungster1Script:
	jumptextfaceplayer SaffronCityYoungster1Text

SaffronCityYoungster2Script:
	jumptextfaceplayer SaffronCityYoungster2Text

SaffronCityLass2Script:
	jumptextfaceplayer SaffronCityLass2Text

SaffronCitySign:
	jumptext SaffronCitySignText

SaffronCitySign2:
	jumptext SaffronCitySign2Text

SaffronCitySign3:
	jumptext SaffronCitySign3Text

SaffronCitySign4:
	jumptext SaffronCitySign4Text

SaffronGymSign:
	jumptext SaffronGymSignText

FightingDojoSign:
	jumptext FightingDojoSignText

SilphCoSign:
	jumptext SilphCoSignText

MrPsychicsHouseSign:
	jumptext MrPsychicsHouseSignText

SaffronCityMagnetTrainStationSign:
	jumptext SaffronCityMagnetTrainStationSignText

SaffronCityPokecenterSign:
	jumpstd PokecenterSignScript

SaffronCityMartSign:
	jumpstd MartSignScript

SaffronCityLass1Text:
	text "A little girl who"
	line "is an expert at"

	para "mimicking people"
	line "lives here."

	para "She even mimics"
	line "the people she's"

	para "conversing with."
	line "It's confusing."
	done

SaffronCityLass1Text_ReturnedMachinePart:
	text "The COPYCAT girl"
	line "looked unhappy."

	para "She said she lost"
	line "her favorite #"
	cont "DOLL--CLEFAIRY."
	done

SaffronCityPokefanMText:
	text "You came out from"
	line "JOHTO?"

	para "You can zip back"
	line "home if the MAGNET"
	cont "TRAIN's running."
	done

SaffronCityPokefanMText_ReturnedMachinePart:
	text "You came out from"
	line "JOHTO?"

	para "You can zip back"
	line "home by hopping on"
	cont "the MAGNET TRAIN."
	done

SaffronCityCooltrainerMText:
	text "I went to the GYM,"
	line "raring for battles"
	cont "against trainers…"

	para "It turns out, I"
	line "stumbled into the"

	para "unused GYM next"
	line "door."

	para "Boy, I was pretty"
	line "embarrassed."
	done

SaffronCityCooltrainerFText:
	text "This is SILPH CO.,"
	line "famous for #MON"
	cont "merchandise."

	para "In the past, TEAM"
	line "ROCKET wanted the"

	para "company because of"
	line "that."
	done

SaffronCityFisherText:
	text "Chew… Chew…"

	para "I hear there's big"
	line "trouble brewing at"
	cont "the POWER PLANT."

	para "Chew… Chew…"
	done

SaffronCityFisherText_ReturnedMachinePart:
	text "Chew… Chew…"

	para "I hear there was"
	line "big trouble at the"
	cont "POWER PLANT."

	para "Chew… Chew…"
	line "Haaah, I'm full!"
	done

SaffronCityYoungster1Text:
	text "Going into an"
	line "alley for the"

	para "first time makes"
	line "me sorta anxious."
	done

SaffronCityYoungster2Text:
	text "There's a place"
	line "called TRAINER"

	para "HOUSE in VIRIDIAN"
	line "where trainers"

	para "gather from all"
	line "over the place."
	done

SaffronCityLass2Text:
	text "Our city was"
	line "featured on a"
	cont "radio program."

	para "It's nice to hear"
	line "praise for your"

	para "city, but it's a"
	line "bit embarrassing"
	cont "too."
	done

SaffronCitySignText:
	text "SAFFRON CITY"

	para "Shining, Golden"
	line "Land of Commerce"
	done

SaffronGymSignText:
	text "SAFFRON CITY"
	line "#MON GYM"
	cont "LEADER: SABRINA"

	para "The Master of"
	line "Psychic #MON!"
	done

FightingDojoSignText:
	text "FIGHTING DOJO"
	done

SilphCoSignText:
	text "SILPH CO."
	line "OFFICE BUILDING"
	done

MrPsychicsHouseSignText:
	text "MR.PSYCHIC's HOUSE"
	done

SaffronCityMagnetTrainStationSignText:
	text "SAFFRON CITY"
	line "MAGNET TRAIN"
	cont "STATION"
	done

SaffronCitySign2Text:
	text "Perk Up #MON"
	line "with Mellow Sounds"

	para "of the # FLUTE"
	line "on CHANNEL 20"
	done

SaffronCitySign3Text:
	text "TRAINER TIPS"

	para "New GREAT BALL"
	line "offers improved"
	cont "capture rates."

	para "Try it on those"
	line "hard-to-catch"
	cont "#MON."
	done

SaffronCitySign4Text:
	text "TRAINER TIPS"

	para "FULL HEAL cures"
	line "all ailments like"
	cont "sleep and burns."

	para "It costs a bit"
	line "more, but it's"
	cont "more convenient."
	done

SaffronCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28,  3, FIGHTING_DOJO, 1
	warp_event 36,  3, SAFFRON_GYM, 1
	warp_event 27, 11, SAFFRON_MART, 2
	warp_event 11, 29, SAFFRON_POKECENTER_1F, 1
	warp_event 31, 29, MR_PSYCHICS_HOUSE, 1
	warp_event  8,  5, SAFFRON_MAGNET_TRAIN_STATION, 2
	warp_event 20, 21, SILPH_CO_1F, 1
	warp_event 11, 11, COPYCATS_HOUSE_1F, 1
	warp_event  0, 17, ROUTE_7_SAFFRON_GATE, 3
	warp_event  0, 18, ROUTE_7_SAFFRON_GATE, 4
	warp_event 43, 17, ROUTE_8_SAFFRON_GATE, 3
	warp_event 43, 18, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 19,  5, BGEVENT_READ, SaffronCitySign
	bg_event 37,  5, BGEVENT_READ, SaffronGymSign
	bg_event 29,  5, BGEVENT_READ, FightingDojoSign
	bg_event 17, 21, BGEVENT_READ, SilphCoSign
	bg_event 29, 29, BGEVENT_READ, MrPsychicsHouseSign
	bg_event  5,  5, BGEVENT_READ, SaffronCityMagnetTrainStationSign
	bg_event 12, 29, BGEVENT_READ, SaffronCityPokecenterSign
	bg_event 28, 11, BGEVENT_READ, SaffronCityMartSign
	bg_event  3, 19, BGEVENT_READ, SaffronCitySign2
	bg_event  7, 21, BGEVENT_READ, SaffronCitySign3
	bg_event 41, 19, BGEVENT_READ, SaffronCitySign4

	def_object_events
	object_event  9, 14, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityLass1Script, -1
	object_event 21, 30, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SaffronCityPokefanMScript, -1
	object_event 34,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerMScript, -1
	object_event 22, 24, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityCooltrainerFScript, -1
	object_event 29, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityFisherScript, -1
	object_event 17, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster1Script, -1
	object_event 37, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronCityYoungster2Script, -1
	object_event 21,  8, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronCityLass2Script, -1
