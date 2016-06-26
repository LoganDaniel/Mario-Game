#NoTrayIcon
#include <GUIConstantsEx.au3>
#include <Resources.au3>

#Region
#AutoIt3Wrapper_icon=Mario.ico
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Run_After=ResHacker.exe -add %out%, %out%, Menu.jpg, rcdata, Menu, 0
#AutoIt3Wrapper_Run_After=upx.exe --best --compress-resources|0 "%out%"
#EndRegion

$GUI_MARIOW = GUICreate('Logan & Matts Mario Games', 400, 250)

$GUI_MARIOB = GUICtrlCreatePic('', 0, 0, 400, 250)
GuiCtrlSetState(-1,$GUI_DISABLE)
_ResourceSetImageToCtrl($GUI_MARIOB, 'Menu')

$GUI_MARIOK = GUICtrlCreateButton('Mario (Kid Version)'       , 100, 150, 200, 25)
$GUI_MARIOT = GUICtrlCreateButton('Mario (Teen Version)'      , 100, 180, 200, 25)
$GUI_MARIOI = GUICtrlCreateButton('Mario (Instane!!! Version)', 100, 210, 200, 25)
$GUI_MARIOQ = GUICtrlCreateButton('Quit'                      , 325, 210, 50, 25)

GUISetState(@SW_SHOW)

While 1
	$MSG = GUIGetMsg()
	Switch $MSG
	Case $GUI_EVENT_CLOSE
		Exit
	Case $GUI_MARIOK
		Run('"' & @ScriptDir & '\Mario (Kid Version).exe"')
	Case $GUI_MARIOT
		Run('"' & @ScriptDir & '\Mario (Teen Version).exe"')
	Case $GUI_MARIOI
		Run('"' & @ScriptDir & '\Mario (Insane!!! Version).exe"')
	Case $GUI_MARIOQ
		Exit
	EndSwitch
WEnd
