;Win + колесо мишки вгору\вниз:: для регулювання звуку по 2
;Ctrl + стрілки вгору\вниз:: для регулювання звуку по 2
;Win + Alt + колесо мишки вгору\вниз:: для регулювання звуку по 10
;Ctrl + Alt + стрілки вгору\вниз:: для регулювання звуку по 10
;Shift + Ctrl + Alt + M:: вимкнути звук
;Win + C = Alt + f4
;Win + Del:: очистити корзину
;Win + F:: папка F
;Win + A:: відкрити за допомогою Notepad++
;Win + Ctrl + Q:: закрити всі програми
;Win + Z:: сховати іконки
;Win + Backspace/CapsLock:: delete
;Win + B:: пошук в інтернеті
;Win + J:: папка завантажень
;Win + Q:: надіслати в Telegram
;Win + O:: Час до сну
;Win + T:: перезапустити скрипт
;Win + Ctrl + Alt + стрілка вверх:: перезапустити комп'ютер
;Win + Ctrl + Alt + стрілка вниз:: вимкунти комп'ютер
;Alt + space:: пошук
;Win + ctrl + t:: відкрити таймер
;Win + Esc:: заховати taskbar
;Shift + Shift:: стрілка лівору
;Win + ctrl + p:: копіювати шлях до папки\файлу
;Ctrl + Num1:: відкрити папку з збереженими AHK файлами
;Ctrl + Num2:: відкрити папку з збереженими Word файлами
; Num1:: створити AHK файл
; Num2:: створити Word файл
;Alt + Num2:: створити файл DOC в Google docs
;Alt + ` Надіслати мій улюблений смайл
;Win + S Зберегти буфер у файл "English"
;Win + Ctrl + S зберегти у Quick Notes
;Alt + Left\Right для зміни вкладок у Notepad++
;Ctrl + Shift + Alt + D:: вставити сьогоднішню дату
;win + K:: папочка SA
;Ctrl + Win + LButton:: програма для активних скріншотів
; Win + Inrest:: папка з моїми проектами (програмач)
;незапрограмована кнопка, яка є тільки на зовнішній клавіатурі
#NoTrayIcon
#SingleInstance Force
#Persistent
#NoEnv
;msgbox, Im here
^vk55::^i
!vk55::!i
#vk55::#i
;r
^sc013::^vk52
!sc013::!vk52
#sc013::#vk52
;e
^sc012::^vk45
!sc012::!vk45
#sc012::#vk45
;j
^sc024::^vk4A
!sc024::!vk4A
#sc024::#vk4A
;s
^sc01F::^vk53
!sc01F::!vk53
#sc01F::#vk53
;f
^sc021::^vk46
!sc021::!vk46
#sc021::#vk46
;t
^sc014::^vk54
!sc014::!vk54
#sc014::#vk54
;y
^sc015::^vk59
!sc015::!vk59
#sc015::#vk59
;u
^sc016::^vk55
!sc016::!vk55
#sc016::#vk55
;o
^sc018::^vk4F
!sc018::!vk4F
#sc018::#vk4F
;p
^sc019::^vk50
!sc019::!vk50
#sc019::#vk50
#sc19::#vk50
;d
^sc020::^vk44
!sc020::!vk44
#sc020::#vk44
;g
^sc022::^vk47
!sc022::!vk47
#sc022::#vk47
;h
^sc023::^vk48
!sc023::!vk48
#sc023::#vk48
;k
^sc025::^vk4B
!sc025::!vk4B
#sc025::#vk4B
;l
^sc026::^vk4C
!sc026::!vk4C
#sc026::#vk4C
;n
^sc031::^vk4E
!sc031::!vk4E
#sc031::#vk4E

;Ctrl + стрілки вгору\вниз:: для регулювання звуку 
^Up::
send {Volume_Up 1}
return
^Down::
send {Volume_Down 1}
return

;Ctrl + Alt + стрілки вгору\вниз:: для регулювання звуку по 10
^!Up::
send {Volume_Up 5}
return
^!Down::
send {Volume_Down 5}
return

;Win + колесо мишки вгору\вниз:: для регулювання звуку по 2
#WheelUp::
send {Volume_Up 1}
return
#WheelDown::
send {Volume_Down 1}
return

;Win + Alt + колесо мишки вгору\вниз:: для регулювання звуку по 10
#!WheelUp::
send {Volume_Up 5}
return
#!WheelDown::
send {Volume_Down 5}
return
;Shift + Ctrl + Alt + M:: вимкнути звук
^!+m::
SoundSet, 0
return

;Win + C = Alt + f4
#sc2e::send !{f4}

;Win + Del:: очистити корзину
#Del::FileRecycleEmpty

;Win + F:: папка F
#sc21:: 
SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak
run F:\Programs
return
^#sc21:: 
SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak
run C:\Temp
Return

;Win + A:: відкрити за допомогою Notepad++
#sc1e:: 
vvvv := % clipboard
clipboard := ""
{
    clipboard =
    SendInput, {Control Down}c{Control Up}
    ClipWait, 0
    var1 := RegExReplace(Clipboard, "m)^.+\\", "")
    Sort, Clipboard
}
{
    ControlGetText, path, ToolbarWindow323, A    
    pos := InStr(path, ": ")
    path :=  SubStr(path, pos+2)
    var2 := path
}
vv=%clipboard%
SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak
run, "F:\Programs\vscode-portable\app\Code.exe"  "%vv%" 
Sleep, 200 
clipboard := %  vvvv
return

;Win + B:: пошук в інтернеті
#sc30::
{
	Send, ^c
	Sleep 50
	Run, http://www.google.com/search?q=`%22%clipboard%`%22
	Return
}
;Win + Q:: надіслати в Telegram
#sc10::
{
    clipboard =
    SendInput, {Control Down}c{Control Up}
    ClipWait, 0
    var1 := RegExReplace(Clipboard, "m)^.+\\", "")
    Sort, Clipboard
}
{
    ControlGetText, path, ToolbarWindow323, A    
    pos := InStr(path, ": ")
    path :=  SubStr(path, pos+2)
    var2 := path
}
vv=%clipboard%
run, F:\Programs\Telegram\Telegram.exe -sendpath  "%vv%" 
Clipboard := ClipSaved
return

;Win + Ctrl + Q:: закрити всі програми
#^sc10::
WinGet, id, list, , , Program Manager
Loop, %id%
{
	StringTrimRight, this_id, id%a_index%, 0
	WinGetTitle, this_title, ahk_id %this_id%
	winclose,%this_title%
}
	run,%comspec% /k taskkill /F /IM  Telegram.exe,, hide
	run,%comspec% /k taskkill /F /IM  Spotify.exe,, hide
	run,%comspec% /k taskkill /F /IM  chrome.exe,, hide
	run,%comspec% /k taskkill /F /IM  "Win 10 Tweaker.exe",, hide
	run,%comspec% /k taskkill /F /IM "uTorrent.exe",, hide
	run,%comspec% /k taskkill /F /IM  "uTorrent.exe",, hide
	run,%comspec% /k taskkill /F /IM  Notepad++Portable.exe,, hide
	run,%comspec% /k taskkill /F /IM  notepad++.exe,, hide
	run,%comspec% /k taskkill /F /IM  ps64ldr.exe,, hide
Loop, 9  
	{
	run,%comspec% /k taskkill /F /IM cmd.exe,, hide
	}
Return

#+^sc10::
WinGetActiveTitle, keepThis
WinGet, ID, List, , , Program Manager
Loop, %ID%
   {
      StringTrimRight, This_ID, ID%A_Index%, 0
      WinGetTitle, This_Title, ahk_id %This_ID%
      If This_Title in %keepThis%
	  {
         Continue
	  }
	  if This_Title in %NoEnd%
	  {
         Continue
	  }
      WinClose, %This_Title%
   }
Return
;Win + J:: папка завантажень
#sc24::
SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak
run "E:\Download"
return

;Win + Z:: сховати іконки
#sc2c::
If (toggle := !toggle)
	Control, Hide,, SysListView321, ahk_class WorkerW
else
	Control, Show,, SysListView321, ahk_class WorkerW
return

;Win + Esc:: заховати taskbar
#sc1::HideShowTaskbar()
HideShowTaskbar() {
   static SW_HIDE := 0, SW_SHOWNA := 8, SPI_SETWORKAREA := 0x2F
   DetectHiddenWindows, On
   hTB := WinExist("ahk_class Shell_TrayWnd") 
   WinGetPos,,,, H
   hBT := WinExist("ahk_class Button ahk_exe Explorer.EXE")
   b := DllCall("IsWindowVisible", "Ptr", hTB)
   for k, v in [hTB, hBT]
      ( v && DllCall("ShowWindow", "Ptr", v, "Int", b ? SW_HIDE : SW_SHOWNA) )
   VarSetCapacity(RECT, 16, 0)
   NumPut(A_ScreenWidth, RECT, 8)
   NumPut(A_ScreenHeight - !b*(H), RECT, 12, "UInt")
   DllCall("SystemParametersInfo", "UInt", SPI_SETWORKAREA, "UInt", 0, "Ptr", &RECT, "UInt", 0)
   WinGet, List, List
   Loop % List {
      WinGet, res, MinMax, % "ahk_id" . List%A_Index%
      if (res = 1)
         WinMove, % "ahk_id" . List%A_Index%,, 0, 0, A_ScreenWidth, A_ScreenHeight - 	!b*H
   }
}
return

;Win + ctrl + p:: копіювати шлях до папки\файлу
^#sc19::
{
    clipboard =
    SendInput, {Control Down}c{Control Up}
    ClipWait, 0
    var1 := RegExReplace(Clipboard, "m)^.+\\", "")
    Sort, Clipboard
}
{
    ControlGetText, path, ToolbarWindow323, A    
    pos := InStr(path, ": ")
    path :=  SubStr(path, pos+2)
    var2 := path
}
vv=%clipboard%
clipboard="%vv%"
return

;Win + ctrl + t:: відкрити таймер
TimerCountClick = 0
#^sc14::
DetectHiddenWindows, On
TimerCountClick++
if WinExist("ahk_class Window") or WinExist("ahk_class" Window) or WinExist("ahk_pid 8204" ) or WinExist("ahk_id 0x1a0318") or WinExist("ahk_class" ClassName)
	{WinActivate
	WinWait, ahk_exe SnapTimer.exe
	Sleep 100
	Send, 25
	Send, {Enter}
	ControlClick, Static1, ahk_exe SnapTimer.exe
	ControlClick, Static1, ahk_exe SnapTimer.exe
	Send, {Enter}
	WinMinimize, A
	DetectHiddenWindows, Off
	if (TimerCountClick = 3)
{
		sleep, 1500000
		msgbox, Дядька, йди відпочинь краще. Порухайся там чи щось ніби того
		TimerCountClick == 0
}		
	return
	}
else
{
run, "F:\Programs\Timer\SnapTimerPortable\App\SnapTimer\SnapTimer.exe"
WinWait, ahk_exe SnapTimer.exe
Send, 25
Send, {Enter}
ControlClick, Static1, ahk_exe SnapTimer.exe
ControlClick, Static1, ahk_exe SnapTimer.exe
Send, {Enter}
WinMinimize, A
DetectHiddenWindows, Off
return
}

;Win + T:: перезапустити скрипт
#sc14::
{

run, cmd.exe
sleep 500
SendInput , f:{Enter}
SendInput, cd F:\Programs\AutoHotkey\Compiler\ {Enter}
SendInput, Ahk2Exe.exe /in "F:\Programs\Shortcut\Script 4.0.ahk" {Enter}
run,%comspec% /k taskkill /F /IM cmd.exe
sleep 400
ControlClick, Button2,ahk_class #32770
sleep 100
run, "F:\Programs\Shortcut\Script 4.0.exe"
return
}

;Win + Backspace:: delete
#sce::
Send,{DEL}
return

;Shift + Shift:: стрілка ліворуч

~Shift::
if WinActive("ahk_class Notepad++") or WinActive("ahk_class" Notepad++) or WinActive("ahk_exe notepad++.exe" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_pid 1744" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_exe Mathematica.exe" ) or WinActive("ahk_class XLMAIN" ) or WinActive("ahk_exe EXCEL.EXE" ) or WinActive("ahk_exe Code.exe" ) 
{
	if (A_PriorHotkey != "~Shift" or A_TimeSincePriorHotkey > 400 or A_TimeSincePriorHotkey < 100 )
	{
		; Too much time between presses, so this isn't a double-press.
		KeyWait, Shift
		return
	} 
	Send, {Left}
	return
}
return
;Shift + Shift:: стрілка ліворуч

~Ctrl::
if WinActive("ahk_class Notepad++") or WinActive("ahk_class" Notepad++) or WinActive("ahk_exe notepad++.exe" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_pid 1744" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_exe Mathematica.exe" ) or WinActive("ahk_class XLMAIN" ) or WinActive("ahk_exe EXCEL.EXE" ) or WinActive("ahk_exe Code.exe" ) 
{
	if (A_PriorHotkey != "~Ctrl" or A_TimeSincePriorHotkey > 400 or A_TimeSincePriorHotkey < 100 )
	{
		; Too much time between presses, so this isn't a double-press.
		KeyWait, Ctrl
		return
	} 
	Send, {Right}
	return
}
return
;Alt + space:: пошук
~!Space:: 
sleep 30
SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak
return


#sc23::
#sc22::
#sc32::
#sc29::
#sc11a::
#sc11b::
#sc12b::
sc46::
#sc46::


msgbox,
(
Win + H
Win + N
Win + G 
Win + Y
Win + M
Scroll Lock
)
return

;Win + Ctrl + Alt + стрілка вниз:: вимкунти комп'ютер
!#^Down::
Shutdown, 1
return

;Win + Ctrl + Alt + стрілка вверх:: перезапустити комп'ютер
!#^Up::
Shutdown, 2
return
#sc16::return
;Win + Ctrl + Alt + стрілка вверх:: перезапустити комп'ютер
!#^Left::
DllCall("PowrProf\SetSuspendState", "Int", 0, "Int", 1, "Int", 0)
return

; Num1:: створити AHK файл
sc4f::
run, "F:\Programs\Shortcut\New",, MAX
WinWaitActive, New
vPathNotepad2 := "F:\Programs\vscode-portable\app\Code.exe"
vNameNoExt := "AHK New Script"
vDotExt := ".ahk"
vPath := ""
WinGet, hWnd, ID, A
for oWin in ComObjCreate("Shell.Application").Windows
{
	if (oWin.HWND = hWnd)
	{
		vDir := RTrim(oWin.Document.Folder.Self.Path, "\")
		;if !DirExist(vDir)
		if !InStr(FileExist(vDir), "D")
		{
			oWin := ""
			return
		}

		Loop
		{
			vSfx := (A_Index=1) ? "" : " (" A_Index ")"
			vName := vNameNoExt vSfx vDotExt
			vPath := vDir "\" vName
			if !FileExist(vPath)
				break
		}

		;create a blank text file (ANSI/UTF-8/UTF-16)
		;FileAppend,, % "*" vPath
		FileAppend,, % "*" vPath, UTF-8
		;FileAppend,, % "*" vPath, UTF-6
		break
	}
}
oWin := ""
if FileExist(vPath)
IfWinExist, Code.exe
	run,%comspec% /k taskkill /F /IM  Code.exe
else
{
Run, "%vPathNotepad2%" "%vPath%"
WinWait, ahk_exe Code.exe
sleep 50
SendRaw, #SingleInstance Force
return
}


; Num2:: створити Word файл
sc50:: ;explorer - create new text file and open it with Notepad2
run, "E:\Summertime\Молочка\Quick Note",, MAX
WinWaitActive, Quick Note
vPathNotepad2 := "C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE"
vNameNoExt := "Word Document"
vDotExt := ".docx"
vPath := ""
WinGet, hWnd, ID, A
for oWin in ComObjCreate("Shell.Application").Windows
{
	if (oWin.HWND = hWnd)
	{
		vDir := RTrim(oWin.Document.Folder.Self.Path, "\")
		;if !DirExist(vDir)
		if !InStr(FileExist(vDir), "D")
		{
			oWin := ""
			return
		}

		Loop
		{
			vSfx := (A_Index=1) ? "" : " (" A_Index ")"
			vName := vNameNoExt vSfx vDotExt
			vPath := vDir "\" vName
			if !FileExist(vPath)
				break
		}

		;create a blank text file (UTF-8/UTF-8/UTF-16)
		;FileAppend,, % "*" vPath
		FileAppend,, % "*" vPath
		;FileAppend,, % "*" vPath, UTF-16
		break
	}
}
oWin := ""
if FileExist(vPath)
run, %vPath% ;%vPathNotepad2% 
return

;Shift + Num2:: відкрити папку з збереженими Word файлами
^sc50::run, "E:\Summertime\Молочка\Quick Note",, MAX

;Shift + Num1:: відкрити папку з збереженими AHK файлами
^sc4f::run, "F:\Programs\Shortcut\",, MAX
return

;Alt + Num2:: створити файл DOC в Google docs
!sc50::run, https://docs.google.com/document/u/0/create,, MAX
return

;Win + O:: Час до сну
#sc18::
SetBatchLines, -1
;MsgBox [, 262144, Time to sleep, %TimeUntil(22, 30)%, 1
MsgBox,262144,Time to sleep, % TimeUntil(22, 30)
return
; ----------------------------------------------------------------------------------------------------------------------
TimeUntil(Hour, Min := 0, Sec := 0) { ; Hour must be in 24 hour format
   TimeInterval := A_YYYY . A_MM . A_DD . SubStr("0" . Hour, -1) . SubStr("0" . Min, -1) . SubStr("0" . Sec, -1)
   TimeInterval -= %A_Now%, S
   If (TimeInterval > 0) {
      ; msdn.microsoft.com/en-us/library/bb759980(v=vs.85).aspx
      VarSetCapacity(Result, 128, 0)
      DllCall("Shlwapi.dll\StrFromTimeInterval", "Str", Result, "UInt", 64, "UInt", TimeInterval * 1000, "Int", 30)
      Return Result
   }
}
;Alt + `:: Надіслати мій улюблений смайл
;Ctrl + Alt + `:: Надіслати НЛО
!sc29::
send, 🙃
return
^!sc29::send, 👽

;Win + S::  Зберегти буфер у файл "English"
#sc1f::
a = %clipboard%
Send, {Control Down} c {Control Up}
FileAppend, %clipboard% `n, E:\Summertime\Молочка\Quick Note\English.txt, UTF-8
clipboard = %a%
return

;Win + V::  Зберегти буфер у файл "English" і пошукати в Longman
#sc2f::
a=%clipboard%
if WinActive("ahk_exe chrome.exe")
{
b=1
send, ^c
send, !{tab}
sleep 100	
send, {tab}
sleep 10
send, %Clipboard%
send, {f2}
send, {home}
SendMessage,0x50,,-0xF57FBDE
return
}
send, ^c
run, https://www.ldoceonline.com/dictionary/
WinWaitActive, Longman
sleep 400
Send, %Clipboard%
sleep 100
Send, {enter}
clipboard = %a%
b=2

;Win + Ctrl + S::  зберегти у Quick Notes
^#sc1f::
a = %clipboard%
Send, {Control Down} c {Control Up}
FileAppend, %clipboard% `n, E:\Summertime\Молочка\Quick Note\Quick notes.txt, UTF-8
clipboard = %a%
return

;Alt + Left\Right для зміни вкладок у Notepad++
;if WinActive("ahk_class Notepad++") or WinActive("ahk_class" Notepad++)  or WinActive("ahk_pid 7480") or WinActive("ahk_exe chrome.exe") or WinActive("ahk_exe notepad++.exe" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_pid 1744" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_exe Mathematica.exe" )
; {
;!Left::
;Send, {Browser_Back}
;Return
; }
; if WinActive("ahk_class Notepad++") or WinActive("ahk_class" Notepad++) or WinActive("ahk_exe notepad++.exe" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_pid 1744" ) or WinActive("ahk_pid 5704" ) or WinActive("ahk_exe Mathematica.exe" )
; {
;!Right:: 
; Send, {Browser_Forward}
;Return
; }

;Pause Продовжити\зупинити медіа 
sc45::send {Media_Play_Pause}

;Ctrl + Shift + Alt + D:: вставити сьогоднішню дату
^+!sc20::
Send, %A_DD%.%A_MM%.%A_YYYY%
return

;незапрограмована кнопка, яка є тільки на зовнішній клавіатурі
sc15d::msgbox, bind me

;Insert:: програма Wolfram Alpha
sc152:: run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Wolfram\Wolfram Mathematica 12.1.lnk"

; Win + Inrest:: папка з моїми проектами (програмач)
#sc152:: run, "E:\Education\My programs", Maximize

;Налаштування середньої клавіші
MButton::
if WinActive("ahk_exe EXCEL.exe") or WinActive("ahk_exe Code.exe")  or WinActive("ahk_exe Telegram.exe")
{
	Send, {CtrlDown}v{CtrlUp}}
	return
}
Else
{
	send, {MButton}
	}
Return

;Ctrl + Win + LButton:: програма для активних скріншотів
^#LButton:: run, "F:\Programs\WindowSnipping\WindowSnipping.ahk"

;win + K:: папочка SA
#sc25:: 
SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak
run, "E:\Education\SA"
return
~#sc2d:: SendMessage, 0x50,, -0xF3FFBF7,, A ; colemak