#NoEnv  ; Recommended for performance and compatibility with future AutoHotKey releases
#SingleInstance Force ; Equivalent to the reload button if the script is run again before the first instance exits
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory (location of script)
SetBatchLines, -1 ; Have the script run at maximum speed
OnExit ExitingHelper ; If the app is Exited via the Exit option in the system tray, run the cleanup before exiting


SetTitleMatchMode, RegEx ; Better match of window titles

FileInstall, 3PM.png, %A_Temp%\3PM.png ; Unpack the 3PM.png into AppData\Local\Temp
app1 := "TP Mods Manager"
app2 := "Elite - Dangerous"

; ===============================================
;     Check Correct windows are open
; ===============================================

if !WinExist("TP Mods Manager") || !WinExist("Elite - Dangerous") ; If one of the windows doesn't exist, display Error GUI
{
	; Error Page GUI Globals
	width := 400
	height := 650
	banner_height := 40
	Gui2_height := height - banner_height
	left_margin := 30

	; Gui 1
	Gui 1: -Caption ; Turn off default window banner / header
	Gui 1: Color, 3f0000 ; Background colour (dark red)
	Gui 1: Font, s13 ; Font size
	Gui 1: Add, Text, Center x0 w%width% cWhite, Application Not Found ; centre the text between 0 and GUI width, colour White
	Gui 1: Show, W%width% H%height%, CPM Helper ; Show the GUI, reference title CPM Helper (only displayed when Alt Tabbing)

	; Gui 2, overlayed on top of GUI 1
	Gui 2: +Owner1 +Parent1 +LastFound -Caption +Border ; +Owner1 +Parent1 +LastFound when visible it is always on top of its owner (GUI 1). It is also automatically destroyed when its owner is destroyed
	Gui 2: Color, White
	Gui 2: Font, s10 bold
	Gui 2: Add, Text, x%left_margin% y10, Elite Dangerous%A_Space% ; No method in AHK for bolding words, need alternate lines of bold/norm
	Gui 2: Font, s10 Norm
	Gui 2: Add, Text, X+0, and the%A_Space%
	Gui 2: Font, s10 bold
	Gui 2: Add, Text, X+0, EDHM UI 3PM%A_Space%
	Gui 2: font, s10 Norm
	Gui 2: Add, Text, X+0, applications
	Gui 2: Add, Text, x%left_margin% y+7, must be running to use the CPM Helper
	Gui 2: Add, Picture, y+20 v3PMPic, %A_Temp%\3PM.png ; Add the 3PM image from AppData\Local\Temp, assign it to variable ID 3PMPic
	Gui 2: Font, s13
	Gui 2: Add, Button, y+20 w100 h30 gCloseGUI vCloseGUI, Close ; Create a 'close' button, assign it to variable ID CloseGUI, and Gosub CloseGUI when pressed
	Gui 2: Font, s8
	Gui 2: Add, Text, Center x0 w%width% y+10, or press ESC
	Gui 2: Show, W%width% H%Gui2_height% x0 y%banner_height%, Second_GUI ; Show the second GUI moved down from GUI1 by banner_height
	; Image control
	GuiControlGet, 3PMPic, 2:Pos   ; Retrieves a list of position variables for "3PMPic" (need to put the Gui ID 2: in the sub-command param)
	GuiControl, 2:Move, 3PMPic, % "x" (width-3PMpicW)/2 ; The centre image position is the difference in gui and image width divided by 2 (put the Gui ID 2: in the sub-command param)
	GuiControlGet, CloseGUI, 2:Pos ; Button Control, Retrieves a list of position variables for "CloseGUI" (need to put the Gui ID 2: in the sub-command param)
	GuiControl, 2:Move, CloseGUI, % "x" (width-CloseGUIW)/2 ; Centre the button
	Return

	CloseGUI:
	GuiClose:
	GuiEscape:
		filedelete, %A_Temp%\3PM.png ; Clean up the image file from AppData\Local\Temp
		ExitApp ; Exit app when Close or ESC is pressed, or the GUI closes
}


; ===============================================
;     Proceed if both windows are open
; ===============================================

SetTitleMatchMode, 2 ; revert back to normal match mode
tpmm := WinExist("TP Mods Manager") ; assign an ahk_id (hwnd) to each window, makes them easier to target
edc := WinExist("Elite - Dangerous (CLIENT)")
default_trans := 220 ; default transparency of the tpmm window
new_trans := 220

; Retrieve the height of the 3PM window, reset it to large height (745) if it had been minimised and the app crashed
WinGetPos, , , , original_height, ahk_id %tpmm%
if original_height < 60
	{
		original_height := 745
		WinMove, ahk_id %tpmm%, , , , ,original_height
	}

; Activate Elite, then put the CPM manager on top, then focus it. Turn CAPS Lock ON
WinActivate, ahk_id %edc%
WinSet, Top,, ahk_id %tpmm%
WinSet, AlwaysOnTop, On, ahk_id %tpmm%
WinSet, Transparent, %default_trans%, ahk_id %tpmm%
SetCapsLockState, On

; Commands GUI Globals
	width := 400
	height := 250
	banner_height := 40
	Gui4_height := height - banner_height
	left_margin := 30

	; Gui 3
	Gui 3: -Caption +AlwaysOnTop +HwndGUI_3 ; creating a Hwnd for the GUI makes it easier to target particular GUIs
	Gui 3: Color, cfcfcf
	Gui 3: Font, s13
	Gui 3: Add, Text, Center x0 w%width% cBlack vHeader gHeader, CPM Helper Commands ; the Header rown has variable ID Header, and Gosub Header when clicked
	Gui 3: Show, W%width% H%height% xCenter y0, Commands

	; Gui 4
	Gui 4: +Owner3 +Parent3 -Caption +Border +LastFound +HwndGUI_4
	Gui 4: Color, White
	Gui 4: Font, s10
	Gui 4: Add, Text, x%left_margin% y10, F11: See your changes in-game (can press anytime)
	Gui 4: Add, Text, x%left_margin% y+7, CAPS-Lock On: After F11, will re-focus the 3PM app
	Gui 4: Add, Text, x%left_margin% y+7, CAPS-Lock Off: After F11, will focus Elite
	Gui 4: Add, Text, x%left_margin% y+7, CTRL TAB: Toggle the 3PM interface On / Off
	Gui 4: Add, Text, x%left_margin% y+7, CTRL SPACE: Exit the CPM Helper

	Gui 4: Font, s10
	Gui 4: Add, Button, x9 y+10 w18 h20 gIncreaseTrans, - ; minus button, Gosub IncreaseTrans when clicked
	Gui 4: Add, Button, x+6 w100 h20 gResetTrans, Reset Opacity ; reset button, Gosub ResetTrans when clicked
	Gui 4: Add, Button, x+6 w18 h20 gReduceTrans, + ; plus button, Gosub ReduceTrans when clicked
	Gui 4: Add, Button, x+12 w70 h20 gHideMe, HideMe ; HideMe button, Gosub HideMe when clicked
	Gui 4: Add, Button, x+10 w130 h20 gExitingHelper, Close CPM Helper ; Close button, Gosub ExitingHelper when clicked
	Gui 4: Add, Checkbox, x11 y+10 vRightMouseSwap gCheckBoxChanged, Right mouse click presses F11
	Gui 4: Show, W%width% H%Gui4_height% x0 y%banner_height%, Fourth_GUI
	WinActivate, ahk_id %tpmm%
Return


#if RightMouseSwap == 1 ; Enable or disable Right Mouse button as hotkey based on contents of RightMouseSwap variable
	RButton::
		If GetKeyState("CapsLock", "T") { ; If CapsLock True (on)
			WinActivate, ahk_id %edc%
			sleep, 100
			send {F11 down}
			sleep 100
			send {F11 up}
			sleep 100
			WinActivate, ahk_id %tpmm%
		}

		If !GetKeyState("CapsLock", "T") { ; If CapsLock not True (off)
			WinActivate, ahk_id %edc%
			sleep, 100
			send {F11 down}
			sleep 100
			send {F11 up}
			sleep 100
		}
#if
Return


CheckBoxChanged:	; Run when the CheckBox changes
	Gui, Submit, NoHide ; This will set RightMouseSwap to true or false
Return


HideMe:
	GuiControl %GUI_3%:, Header, Click to Unhide ; Replace the text in the Header of GUI 3
	Gui %GUI_4%: Hide ; Hide GUI 4
	WinMove, ahk_id %GUI_3%, , , , , %banner_height% ; Roll up GUI3, on which GUI4 sits
	WinSet, Transparent, 60, ahk_id %GUI_3% ; Make GUI3 transparent
Return


Header:
	GuiControl %GUI_3%:, Header, CPM Helper Commands ; When the hidden header is clicked, restore the original text
	WinMove, ahk_id %GUI_3%, , , , , %height% ; Restore the original height
	WinSet, Transparent, 255, ahk_id %GUI_3% ; Restore full opacity
	Gui %GUI_4%: Show ; Unhide GUI4
Return


IncreaseTrans:
	new_trans := new_trans - 20 ; Each click of the minus button decreases opacity by 20, down to 120

	if (new_trans <= 120) {

		new_trans := 120
	}

	WinSet, Transparent, %new_trans%, ahk_id %tpmm%
Return


ResetTrans:
	new_trans := 220 ; Need to reset new_trans to start from the beginning if the reset button is clicked
	WinSet, Transparent, %default_trans%, ahk_id %tpmm% ; reset default transparency
Return


ReduceTrans:
	new_trans := new_trans + 20 ; Each click of the plus button increases opacity by 20, up to 255

	if (new_trans >= 255) {

		new_trans := 255
	}

	WinSet, Transparent, %new_trans%, ahk_id %tpmm%
Return


; If CAPS LOCK is ON, press F11 in Elite then re-focus the CPM manager
#If GetKeyState("CapsLock", "T") ; If CapsLock True (on), Use # to set a conditional block for the Hotkey F11
	F11::
		WinActivate, ahk_id %edc%
		sleep, 100
		send {F11 down}
		sleep 100
		send {F11 up}
		sleep 100
		WinActivate, ahk_id %tpmm%
#If ; Need to reset the #if at the end
Return


; If CAPS Lock if OFF, press F11 in Elite and stay in Elite
#If !GetKeyState("CapsLock", "T") ; If CapsLock !(NOT) True (on) = Off
	F11::
		WinActivate, ahk_id %edc%
		sleep, 100
		send {F11 down}
		sleep 100
		send {F11 up}
		sleep 100
#If
Return


; Roll up / hide the CPM manager window
^Tab::
	WinGetPos, , , , active_height, ahk_id %tpmm% ; Get the current height of the 3PM window

	if active_height > 40 ; If the window isn't minimised
		{
			WinGetPos, , , , original_height, ahk_id %tpmm% ; Save the original height of the 3PM window into original_height
			WinMove, ahk_id %tpmm%, , , , , 40
		}
	else ; After it has been minimised, restore it back to the original height on second press of Hotkey
		{
			WinMove, ahk_id %tpmm%, , , , ,original_height
		}
return


; Exit the CPM Helper
^SPACE:: ; CTRL SPACE
	Gosub, ExitingHelper
Return


ExitingHelper: ; reset everything on Exit
	WinSet, Transparent, 255, ahk_id %tpmm%
	WinSet, AlwaysOnTop, Off, ahk_id %tpmm%
	WinSet, Bottom,, ahk_id %tpmm%
	SetCapsLockState, Off
	WinMove, ahk_id %tpmm%, , , , ,original_height
	filedelete, %A_Temp%\3PM.png ; Delete the image file from AppData\Local\Temp
	WinActivate, ahk_id %edc% ; Activate Elite
ExitApp
