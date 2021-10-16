#InstallKeybdHook
#Persistent
#NoEnv	; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon

SetKeyDelay, –1
SetWinDelay, 20
SetWorkingDir %A_ScriptDir%	; Ensures a consistent starting directory.

; internal variables
Hiding = 0
ExCount = 0
running = 0

; -----------------------------
; Start Program Settings
; -----------------------------

; Should the Boss Key toggle mute (of sound)? 1=yes, 0=no

	ToggleMute = 1

; Time delay for displaying message on a splash window
	
	SplashDelay = 3000	

; Boss Key

	^sc29::Gosub, HideStuff

; Reverse Boss Key
	
	+sc29::Gosub, ShowStuff
	
; Hotkey to add an active window to Excluded List

	#LButton::Gosub, AddStuff
	
; Hotkey to remove an active window from Excluded List
	
	#RButton::Gosub, RemoveStuff

; The program icon will be hidden, use this hotkey to exit the program (default: Ctrl + Esc)

	#Esc::Gosub, Bye
	
; -----------------------------
; End Program Settings
; -----------------------------

Return

HideStuff:
if (running = 0) 
	if (Hiding = 0) {
		running = 1
		Hiding = 1
		
		WinGet, id, list,,, Program Manager
		
		Loop, %id%
		{
			this_id := id%A_Index%
			WinGetClass, class, ahk_id %this_id%

			; don't hide taskbar and other windows in Excluded List
			HideIt = 1
			IfInString, class, Shell_TrayWnd
			{
				Continue
			} else {
				Loop %ExCount%
				{
					id_exclude := Exclude%A_Index%
					IfInString, this_id, %id_exclude%
					{
						HideIt = 0
						Break
					}
				}
			}

			; hide stuff
			If (HideIt = 1) {
				RecordHidden = %RecordHidden% || %this_id%
				WinHide, ahk_id %this_id%
			}

		}
		
		; Toggle mute
		if (ToggleMute = 1) {
			SoundSet, +1,, mute
		}
		
		WinActivate, ahk_id %Exclude1%
		running = 0
		run "F:\Programs"
		WinWait Untitled - explorer
		WinMaximize 
		run "C:\Windows\system32\cmd.exe"
		
}
Return

ShowStuff:
if (running = 0) {
	if (Hiding = 1) {
		running = 1
		Hiding = 0
		
		; show stuff
		Loop, Parse, RecordHidden, ||
		WinShow, ahk_id %A_LoopField%
		
		if (ToggleMute = 1) {
			SoundSet, +1,, mute
		}
		
		running = 0
	}
}
Return

AddStuff:
WinGet, active_id, ID, A
WinGetTitle, active_title, A

; if already in excluded list, no need to add again
Loop %ExCount%
{
	id_exclude := Exclude%A_Index%
	IfInString, active_id, %id_exclude%
	{
		Return
	}
}

; add window to excluded list
ExCount += 1
Exclude%ExCount% := active_id
SplashTextOn,400,100, Added window to Excluded List, %active_title%
Sleep, SplashDelay
SplashTextOff
Return


RemoveStuff:
WinGet, active_id, ID, A
WinGetTitle, active_title, A

Loop %ExCount%
{
	id_exclude := Exclude%A_Index%
	IfInString, active_id, %id_exclude%
	{
		; if found, remove the window
		Exclude%A_Index% := Exclude%ExCount%
		ExCount -= 1
		SplashTextOn,400,100, Removed window from Excluded List, %active_title%
		Sleep, SplashDelay
		SplashTextOff
		Break
	}
}
Return


Bye:
Gosub, ShowStuff
