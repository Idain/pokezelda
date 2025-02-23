	object_const_def
	const GOLDENRODDEPTSTOREROOF_CLERK
	const GOLDENRODDEPTSTOREROOF_POKEFAN_F
	const GOLDENRODDEPTSTOREROOF_FISHER
	const GOLDENRODDEPTSTOREROOF_TWIN
	const GOLDENRODDEPTSTOREROOF_SUPER_NERD
	const GOLDENRODDEPTSTOREROOF_POKEFAN_M
	const GOLDENRODDEPTSTOREROOF_TEACHER
	const GOLDENRODDEPTSTOREROOF_BUG_CATCHER

GoldenrodDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, .CheckSaleChangeBlock
	callback MAPCALLBACK_OBJECTS, .CheckSaleChangeClerk

.CheckSaleChangeBlock:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	endcallback

.SaleIsOn:
	changeblock 0, 2, $3f ; cardboard boxes
	changeblock 0, 4, $0f ; vendor booth
	endcallback

.CheckSaleChangeClerk:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeClerk
	setevent EVENT_GOLDENROD_SALE_OFF
	clearevent EVENT_GOLDENROD_SALE_ON
	endcallback

.ChangeClerk:
	clearevent EVENT_GOLDENROD_SALE_OFF
	setevent EVENT_GOLDENROD_SALE_ON
	endcallback

GoldenrodDeptStoreRoofClerkScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStoreRoofDecorClerkHiThereText
	waitbutton
GoldenrodDeptStoreRoofDecorClerk_LoopScript:
	writetext GoldenrodDeptStoreRoofDecorClerk_AskWhichDecorText
	special PlaceMoneyTopRight
	loadmenu GoldenrodDeptStoreRoofDecorClerkMenu
	verticalmenu
	closewindow
	ifequal 1, .Doll1
	ifequal 2, .Doll2
	ifequal 3, .Doll3
	ifequal 4, .Doll4
	jump GoldenrodDeptStoreRoofDecorClerk_Cancel
	
.Doll1
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, GoldenrodDeptStoreRoofDecorClerkNotEnoughMoney
	writetext GoldenrodDeptStoreRoofDecorClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStoreRoofDecorClerk_Cancel
	checkevent EVENT_DECO_GRIMER_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_GRIMER_DOLL
	takemoney YOUR_MONEY, 500
	jump GoldenrodDeptStoreRoofDecorClerk_FinishScript
	end
	
.Doll2
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, GoldenrodDeptStoreRoofDecorClerkNotEnoughMoney
	writetext GoldenrodDeptStoreRoofDecorClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStoreRoofDecorClerk_Cancel
	checkevent EVENT_DECO_GEODUDE_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_GEODUDE_DOLL
	takemoney YOUR_MONEY, 500
	jump GoldenrodDeptStoreRoofDecorClerk_FinishScript
	end
	
.Doll3
	checkmoney YOUR_MONEY, 500
	ifequal HAVE_LESS, GoldenrodDeptStoreRoofDecorClerkNotEnoughMoney
	writetext GoldenrodDeptStoreRoofDecorClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStoreRoofDecorClerk_Cancel
	checkevent EVENT_DECO_ODDISH_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_ODDISH_DOLL
	takemoney YOUR_MONEY, 500
	jump GoldenrodDeptStoreRoofDecorClerk_FinishScript
	end

.Doll4
	checkmoney YOUR_MONEY, 2500
	ifequal HAVE_LESS, GoldenrodDeptStoreRoofDecorClerkNotEnoughMoney
	writetext GoldenrodDeptStoreRoofDecorClerk_AreYouSureText
	yesorno
	iffalse GoldenrodDeptStoreRoofDecorClerk_Cancel
	checkevent EVENT_DECO_BIG_ONIX_DOLL
	iftrue .AlreadyHaveDecorItem
	setevent EVENT_DECO_BIG_ONIX_DOLL
	takemoney YOUR_MONEY, 2500
	jump GoldenrodDeptStoreRoofDecorClerk_FinishScript
	end
	
.AlreadyHaveDecorItem
	writetext GoldenrodDeptStoreRoofDecorClerk_AlreadyHaveDecoText
	waitbutton
	jump GoldenrodDeptStoreRoofDecorClerk_LoopScript

GoldenrodDeptStoreRoofDecorClerkMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 19, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "GRIMER DOLL  ¥500@"
	db "GEODUDE DOLL ¥500@"
	db "ODDISH DOLL  ¥500@"
	db "ONIX DOLL   ¥2500@"

.AlreadyHaveDecorItem
	writetext GoldenrodDeptStoreRoofDecorClerk_AlreadyHaveDecoText
	waitbutton
	jump GoldenrodDeptStoreRoofDecorClerk_LoopScript

GoldenrodDeptStoreRoofDecorClerk_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodDeptStoreRoofDecorClerk_HereYouGoText
	waitbutton
	jump GoldenrodDeptStoreRoofDecorClerk_LoopScript

GoldenrodDeptStoreRoofDecorClerk_Cancel:
	writetext GoldenrodDeptStoreRoofDecorClerkTakeCare
	waitbutton
	closetext
	end

GoldenrodDeptStoreRoofDecorClerkNotEnoughMoney:
	writetext GoldenrodDeptStoreRoofDecorClerkNotEnoughMoneyText
	waitbutton
	closetext
	end

GoldenrodDeptStoreRoofPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanFText

GoldenrodDeptStoreRoofFisherScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStoreRoofFisherText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_FISHER, UP
	end

GoldenrodDeptStoreRoofTwinScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTwinText

GoldenrodDeptStoreRoofSuperNerdScript:
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdOhWowText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, UP
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, RIGHT
	end

GoldenrodDeptStoreRoofPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanMText

GoldenrodDeptStoreRoofTeacherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTeacherText

GoldenrodDeptStoreRoofBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofBugCatcherText

Binoculars1:
	jumptext Binoculars1Text

Binoculars2:
	jumptext Binoculars2Text

Binoculars3:
	jumptext Binoculars3Text

CapsuleToysVendingMachine:
	jumptext CapsuleToysVendingMachineText

GoldenrodDeptStoreRoofPokefanFText:
	text "Whew, I'm tired."

	para "I sometimes come"
	line "up to the rooftop"

	para "to take a break"
	line "from shopping."
	done

GoldenrodDeptStoreRoofFisherText:
	text "Pardon? Who says"
	line "an adult can't get"
	cont "into this?"

	para "I'm going to be"
	line "back every day to"
	cont "collect them all!"
	done

GoldenrodDeptStoreRoofTwinText:
	text "They have special"
	line "sales here every"
	cont "so often."

	para "They sell rare"
	line "POKéMON DOLLs."

	para "Even that huge"
	line "ONIX DOLL! The one"

	para "that is almost"
	line "life-sized!"
	done

GoldenrodDeptStoreRoofSuperNerdOhWowText:
	text "Oh, wow!"
	done

GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText:
	text "Will you quit"
	line "bothering me?"
	done

GoldenrodDeptStoreRoofPokefanMText:
	text "There's something"
	line "I really want, but"

	para "I don't have the"
	line "necessary cash…"

	para "Maybe I'll sell"
	line "off the BERRIES"
	cont "I've collected…"
	done

GoldenrodDeptStoreRoofTeacherText:
	text "Oh, everything is"
	line "so cute!"

	para "I bought so much,"
	line "my PACK's crammed!"
	done

GoldenrodDeptStoreRoofBugCatcherText:
	text "My #MON always"
	line "get paralyzed or"

	para "poisoned when the"
	line "chips are down…"

	para "So I came to buy"
	line "some FULL HEAL."

	para "Welp… There goes"
	line "my pocket change."
	done

Binoculars1Text:
	text "These binoculars"
	line "let me see far"

	para "away. Maybe I can"
	line "see my own house."

	para "Is it the one with"
	line "the green roof?"
	done

Binoculars2Text:
	text "Hey! Some trainers"
	line "are battling on"
	cont "the road!"

	para "A #MON fired a"
	line "flurry of leaves!"

	para "That makes me feel"
	line "like battling"
	cont "right now!"
	done

Binoculars3Text:
	text "A FISHER caught a"
	line "lot of MAGIKARP…"

	para "They're SPLASHing"
	line "at the same time!"

	para "Look at the water"
	line "going everywhere!"
	done

CapsuleToysVendingMachineText:
	text "A vending machine"
	line "for #MON"
	cont "capsule toys?"

	para "Insert money, then"
	line "turn the crank…"

	para "But it's almost"
	line "empty…"
	done

GoldenrodDeptStoreRoofDecorClerkHiThereText:
	text "Hi there! Looking"
	line "to give your room"
	cont "a new look?"
	done

GoldenrodDeptStoreRoofDecorClerk_AskWhichDecorText:
	text "See anything that"
	line "interests you?"
	done

GoldenrodDeptStoreRoofDecorClerk_AreYouSureText:
	text "Are you sure?"
	done

GoldenrodDeptStoreRoofDecorClerk_AlreadyHaveDecoText:
	text "Don't you already"
	line "own this DECOR?"
	done

GoldenrodDeptStoreRoofDecorClerk_HereYouGoText:
	text "Here you go! We"
	line "will deliver this"
	cont "item to your home"
	cont "without delay!"
	done

GoldenrodDeptStoreRoofDecorClerkNotEnoughMoneyText:
	text "Sorry. You don't"
	line "have enough money."
	done
	
GoldenrodDeptStoreRoofDecorClerkTakeCare:
	text "Please come again!"
	done

GoldenrodDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  1, GOLDENROD_DEPT_STORE_6F, 3

	def_coord_events

	def_bg_events
	bg_event 15,  3, BGEVENT_RIGHT, Binoculars1
	bg_event 15,  5, BGEVENT_RIGHT, Binoculars2
	bg_event 15,  6, BGEVENT_RIGHT, Binoculars3
	bg_event  3,  0, BGEVENT_UP, CapsuleToysVendingMachine

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofClerkScript, EVENT_GOLDENROD_SALE_OFF
	object_event 10,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanFScript, -1
	object_event  2,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofFisherScript, -1
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTwinScript, EVENT_GOLDENROD_SALE_ON
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofSuperNerdScript, EVENT_GOLDENROD_SALE_ON
	object_event  7,  0, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanMScript, EVENT_GOLDENROD_SALE_OFF
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTeacherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  1,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofBugCatcherScript, EVENT_GOLDENROD_SALE_OFF
