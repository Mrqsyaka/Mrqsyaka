﻿#SingleInstance Force
;hello

!Shift:: 
^Shift:: 
+Alt::
+Ctrl::
msgbox,262144,🙃, Натисни кнопку Windows (і не відпускай) + Пробіл\Space  для зміни мови
return
f8::
{
Hotkey, ^Shift, toggle
Hotkey, +Alt, toggle
Hotkey, !Shift, toggle
Hotkey, +Ctrl, toggle
}
;Alt + 1
!1::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"D6")
xl.ActiveSheet.Paste
return

;Alt + 2
;Zleceniobiorca; перший рядок з індексом, другий рядок з адресою, третій рядок з NIP
!2::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"D7")
xl.ActiveSheet.Paste	
XL_Border(XL,RG:="d6:d7",Weight:="2",Line:="1")
XL_Format_Font_Color(XL,RG:="D8:D10",Color:=0)
XL_Format_Font(XL,RG:="D8:D10",Font:="Arial",Size:=10)
XL_Format_Format(XL,RG:="D8:D10",Bold:=0,Italic:=0,Underline:=0)
XL_Format_HAlign(XL,RG="D8:D10",h="1")
XL_Format_HAlign(XL,RG="d6:d7",h="1")


return


;Alt + 3
;Номери телефону
!3::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"D9")
xl.ActiveSheet.Paste
XL_Format_Font_Color(XL,RG:="d9",Color:=0)
XL_Format_Font(XL,RG:="D9",Font:="Arial",Size:=10)
XL_Format_Format(XL,RG:="D9",Bold:=0,Italic:=0,Underline:=0)
XL_Format_HAlign(XL,RG="D9",h="1")
XL_Border(XL,RG:="D8:D10",Weight:="2",Line:="1")

return

;Alt + 4
;Номера машини
!4::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"B13")
xl.ActiveSheet.Paste
XL_Border(XL,RG:="b13",Weight:="2",Line:="1")
XL_Format_Font_Color(XL,RG:="b13",Color:=0)
XL_Format_Font(XL,RG:="B13",Font:="Arial",Size:=10)
XL_Format_Format(XL,RG:="B13",Bold:=0,Italic:=0,Underline:=0)
XL_Format_HAlign(XL,RG="B13",h="1")

return

;Alt + 5
!5::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"D13")
xl.ActiveSheet.Paste	
XL_Border(XL,RG:="d13",Weight:="2",Line:="1")
XL_Format_Font_Color(XL,RG:="d13",Color:=0)
XL_Format_Font(XL,RG:="d13",Font:="Arial",Size:=10)
XL_Format_Format(XL,RG:="d13",Bold:=0,Italic:=0,Underline:=0)
XL_Format_HAlign(XL,RG="d13",h="1")

return

;Alt + 6
!6::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"D16")
xl.ActiveSheet.Paste	
XL_Border(XL,RG:="d15:d17",Weight:="2",Line:="1")
XL_Format_Font_Color(XL,RG:="d16:d17",Color:=0)
XL_Format_Font(XL,RG:="d16:d17",Font:="Arial",Size:=10)
XL_Format_Format(XL,RG:="d16:d17",Bold:=0,Italic:=0,Underline:=0)
XL_Format_HAlign(XL,RG="d16:d17",h="1")

return

;Alt + 7
!7::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
Send, {Control Down} c {Control Up}
XL_Select_Range(XL,"D19")
xl.ActiveSheet.Paste	
XL_Border(XL,RG:="d18:d20",Weight:="2",Line:="1")
XL_Format_Font_Color(XL,RG:="d19:d20",Color:=0)
XL_Format_Font(XL,RG:="d19:d20",Font:="Arial",Size:=10)
XL_Format_Format(XL,RG:="d19:d20",Bold:=0,Italic:=0,Underline:=0)

return

;Alt + 8
; !8::
; try XL := ComObjActive("Excel.Application") ;handle to running application
; XL_Handle(1)
; XL_Select_Range(XL,"D19")
; XL_Border(XL,RG:="D19",Weight:="2",Line:="1")
; 
; return

;Alt + 9
; !9::
; try XL := ComObjActive("Excel.Application") ;handle to running application
; XL_Handle(1)
; XL_Select_Range(XL,"B24")
; XL_Format_Font(XL,RG:="B24",Font:="Arial",Size:=10) ;Arial, Arial Narrow, Calibri,Book Antiqua
; XL_Border(XL,RG:="B24",Weight:="2",Line:="1")
; 
; Return

; Alt + 0
!0::
try XL := ComObjActive("Excel.Application") ;handle to running application
XL_Handle(1)
; Gui +LastFound +OwnDialogs +AlwaysOnTop
InputBox, Income, in Euro, Kierowca otrzyma kwotę,,,,0,0 
InputBox, Difference, z czego, należy pobrać jako zapłatę za fracht,,,,0,0
c := Income - Difference
str := "" Income
str2 := "" Difference
str3 := "" c
XL_Search_Replace(XL,,Sch:="600",Rep:=str,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
XL_Search_Replace(XL,,Sch:="500",Rep:=str2,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
XL_Search_Replace(XL,,Sch:="100",Rep:=str3,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any

;Кількість палет
InputBox, Cargo, towar, palet,,,,0,0
str4 := "" Cargo
XL_Search_Replace(XL,RG:="D23:D23",Sch:="2-3",Rep:=str4,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any

;Дата 1
InputBox, ZaladunokDateOD, OD, Data załadunku ,,,,0,0
Date1 := "" ZaladunokDateOD
XL_Search_Replace(XL,RG:="B16:B16",Sch:="13.08.2021",Rep:=Date1,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any;
;Година 1
InputBox, ZaladunokHourOD, OD, Godzina załadunku,,,,0,0
Hour1 := "" ZaladunokHourOD
XL_Search_Replace(XL,RG:="B16:B16",Sch:="18.00",Rep:=Hour1,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
;Дата 2
InputBox, ZaladunokDateDO, DO, Data załadunku,,,,0,0
Date2 := "" ZaladunokDateDO
XL_Search_Replace(XL,RG:="B17:B17",Sch:="14.08.2021",Rep:=Date2,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
;Година 2
InputBox, ZaladunokHourDO, DO, Godzina załadunku,,,,0,0
Hour2 := "" ZaladunokHourDO
XL_Search_Replace(XL,RG:="B17:B17",Sch:="20.00",Rep:=Hour2,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
;Дата 3
InputBox, RozladunokDoteDO, DO, Data rozładunku,,,,0,0
Date3 := "" RozladunokDoteDO
XL_Search_Replace(XL,RG:="B19:B19",Sch:="14.09.2021",Rep:=Date3,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
;Година 3
InputBox, RozladunokHourDO, DO, Godzina rozładunku,,,,0,0
Hour3 := "" RozladunokHourDO
XL_Search_Replace(XL,RG:="B19:B19",Sch:="11:00",Rep:=Hour3,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
;Дата 4
InputBox, RozladunokDoteOD, OD, Data rozładunku,,,,0,0
Date4 := "" RozladunokDoteOD
XL_Search_Replace(XL,RG:="B20:B20",Sch:="15.09.2021",Rep:=Date4,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any
;Година 4
InputBox, RozladunokHourOD, OD, Godzina rozładunku ,,,,0,0
Hour4 := "" RozladunokHourDO
XL_Search_Replace(XL,RG:="B20:B20",Sch:="12:00",Rep:=Hour4,Match_Case:="False",CellCont:=0) ;CC=1 Exact, 2=Any

return


;readme документанція аля звіт
#f1::
Msgbox, 262144, 🙃,
(
Привіт-привіт. 
Для того, щоб **переключити мову** - тисни Win + Space (пробіл)
Для того, щоб викликати менюшку **заповнення даних** (Скільки євро, кількість палет, дата і час) натисни Alt + 0

Для того, щоб розблокувати можливість **перемикати мову з Shift + Alt** натисни F8, але краще навчися win + space
)




















;~ Joe Glines   https://the-Automator.com  https://www.the-automator.com/excel-and-autohotkey/
;***********************Excel Handles********************************.
;~ XL:=XL_Handle(1) ; 1=pointer to Application   2= Pointer to Workbook
XL_Handle(Sel){
	ControlGet, hwnd, hwnd, , Excel71, ahk_class XLMAIN ;identify the hwnd for Excel
	Obj:=ObjectFromWindow(hwnd,-16)
	return (Sel=1?Obj.Application:Sel=2?Obj.Parent:Sel=3?Obj.ActiveSheet:"")
}
;***borrowd & tweaked from Acc.ahk Standard Library*** by Sean  Updated by jethrow*****************
ObjectFromWindow(hWnd, idObject = -4){
	if(h:=DllCall("LoadLibrary","Str","oleacc","Ptr"))
		If DllCall("oleacc\AccessibleObjectFromWindow","Ptr",hWnd,"UInt",idObject&=0xFFFFFFFF,"Ptr",-VarSetCapacity(IID,16)+NumPut(idObject==0xFFFFFFF0?0x46000000000000C0:0x719B3800AA000C81,NumPut(idObject==0xFFFFFFF0?0x0000000000020400:0x11CF3C3D618736E0,IID,"Int64"),"Int64"), "Ptr*", pacc)=0
			Return ComObjEnwrap(9,pacc,1)
}
;***********************Show name of object handle is referencing********************************.
;~ XL_Reference(XL) ;will pop up with a message box showing what pointer is referencing
XL_Reference(PXL){
	;~ MsgBox, %HWND%
	;~ MsgBox, % ComObjType(window)
	MsgBox % ComObjType(PXL,"Name")
}

;;********************Reference Cell by row and column number***********************************
;~ XL.Range(XL.Cells(1,1).Address,XL.Cells(5,5).Address)
;~ MsgBox % XL.Cells(1,4).Value  ;Row, then column
;~ XL.Range(XL.Cells(1,1).Address,XL.Cells(5,5).Address)

;***********************Screen update toggle********************************.
;~ XL_Screen_Update(XL)
XL_Screen_Update(PXL){
	PXL.Application.ScreenUpdating := ! PXL.Application.ScreenUpdating ;toggle update
}

;~ XL_Speedup(XL,1) ;Speed up Excel tweaked from Tre4shunter https://github.com/tre4shunter/XLFunctions/
XL_Speedup(PXL,Status){ ;Helps COM functions work faster/prevent screen flickering, etc.
	if(!Status){
		PXL.application.displayalerts := 0
		PXL.application.EnableEvents := 0
		PXL.application.ScreenUpdating := 0
		PXL.application.Calculation := -4135
	}else{
		PXL.application.displayalerts := 1
		PXL.application.EnableEvents := 1
		PXL.application.ScreenUpdating := 1
		PXL.application.Calculation := -4105
	}
}

;~ XL_Screen_Visibility(XL)
XL_Screen_Visibility(PXL){
	PXL.Visible:= ! PXL.Visible ;Toggle screen visibility
}
;***********************First row********************************.
;~ XL_First_Row(XL)
XL_First_Row(PXL){
	Return, PXL.Application.ActiveSheet.UsedRange.Rows(1).Row
}
;***********************Used Rows********************************.
;~ Rows:=XL_Used_Rows(XL)
XL_Used_rows(PXL){
	;  To do
}
;***********************Last Row********************************.
;~ LR:=XL_Last_Row(XL)
XL_Last_Row(PXL){
	Return PXL.ActiveSheet.Cells.SpecialCells(11).Row
}

;***********************Last Row in Specific Column********************************.
;~ Last_Row:=XL_Last_Row_in_Column(XL,"A")
XL_Last_Row_in_Column(PXL,Col){
	return PXL.Cells(PXL.Rows.Count,XL_String_To_Number(Col)).End(-4162).Row
}

;~ XL.cells.rows.count count of all rows available in Excel.  Last row available
;***********************First Column********************************.
;~ XL_First_Col_Nmb(XL)
XL_First_Col_Nmb(PXL){
	Return, PXL.Application.ActiveSheet.UsedRange.Columns(1).Column
}
;***********************First Column Alpha**********************************.
;~ XL_Last_Col_Alpha(XL)
XL_First_Col_Alpha(PXL){
	FirstCol:=PXL.Application.ActiveSheet.UsedRange.Columns(1).Column
	return (FirstCol<=26?(Chr(64+FirstCol)):(FirstCol>26)?(Chr((FirstCol-1)/26+64) . Chr(Mod((FirstCol- 1),26)+65)):"")
}
;***********************Used Columns********************************.
;~ LC:=XL_Used_Cols_Nmb(XL)
XL_Used_Cols_Nmb(PXL){
	Return, PXL.Application.ActiveSheet.UsedRange.Columns.Count
}
;***********************Last Column********************************.
;~ LC:=XL_Last_Col_Nmb(XL)
XL_Last_Col_Nmb(PXL){
	Return, PXL.Application.ActiveSheet.UsedRange.Columns(PXL.Application.ActiveSheet.UsedRange.Columns.Count).Column
}
;***********************Last Column Alpha**  Needs Workbook********************************.
;~ XL_Last_Col_Alpha(XL)
XL_Last_Col_Alpha(PXL){
	d:=XL_Last_Col_Nmb(PXL)
	while(d>0){
		m:=Mod(d-1,26)
		Col:=Chr(65+m) Col
		d:=Floor((d-m)/26)
	}return Col
}
;***********************Used_Range Used range********************************.
;~ RG:=XL_Used_RG(XL,Header:=1) ;Use header to include/skip first row
XL_Used_RG(PXL,Header=1){
	return Header=0?XL_First_Col_Alpha(PXL) . XL_First_Row(PXL) ":" XL_Last_Col_Alpha(PXL) . XL_Last_Row(PXL):Header=1?XL_First_Col_Alpha(PXL) . XL_First_Row(PXL)+1 ":" XL_Last_Col_Alpha(PXL) . XL_Last_Row(PXL):""
}
;***********************Numeric Column to string********************************.
;~ XL_Col_To_Char(26)
XL_Col_To_Char(Index){ ;Converting Columns to Numeric for Excel
	return Index<=26?(Chr(64+index)):Index>26?Chr((index-1)/26+64) . Chr(mod((index - 1),26)+65):""
}
;***********************alpha to Number********************************.
;~ XL_String_To_Number("ab")
XL_String_To_Number(Column){
	StringUpper, Column, Column
	Index := 0
	Loop, Parse, Column  ;loop for each character
	{ascii := asc(A_LoopField)
    	if (ascii >= 65 && ascii <= 90)
		index := index * 26 + ascii - 65 + 1    ;Base = 26 (26 letters)
	else { return
	} }
return, index+0 ;Adding zero here is needed to ensure you're returning an Integer, not a String
}
;***********************Freeze Panes********************************.
;~ XL_Freeze(XL,Row:="1",Col:="B") ;Col A will not include cols which is default so leave out if unwanted
;***********************Freeze Panes in Excel********************************.
XL_Freeze(PXL,Row="",Col="A"){
	PXL.Application.ActiveWindow.FreezePanes := False ;unfreeze in case already frozen
	IfEqual,row,,return ;if no row value passed row;  turn off freeze panes
	PXL.Application.ActiveSheet.Range(Col . Row+1).Select ;Helps it work more intuitivly so 1 includes 1 not start at zero
	PXL.Application.ActiveWindow.FreezePanes := True
}

;*******************************************************.
;***********************Formatting********************************.
;*******************************************************.
;***********************Alignment********************************.
;~ XL_Format_HAlign(XL,RG:="A1:A10",h:=2) ;1=Left 2=Center 3=Right
XL_Format_HAlign(PXL,RG="",h="1"){ ;defaults are Right bottom
	PXL.Application.ActiveSheet.Range(RG).HorizontalAlignment:=(h=1?-4131:h=2?-4108:h=3?-4152?h=4:-4108:"")
	/*
		IfEqual,h,1,Return,PXL.Application.ActiveSheet.Range(RG).HorizontalAlignment:=-4131 ;Left
		IfEqual,h,2,Return,PXL.Application.ActiveSheet.Range(RG).HorizontalAlignment:=-4108 ;Center
		IfEqual,h,3,Return,PXL.Application.ActiveSheet.Range(RG).HorizontalAlignment:=-4152 ;Right
	*/
}
;~ XL_Format_VAlign(XL,RG:="A1:A10",v:=4) ;1=Top 2=Center 3=Distrib 4=Bottom 5=Horiz align
XL_Format_VAlign(PXL,RG="",v="1"){
	PXL.Application.ActiveSheet.Range(RG).VerticalAlignment:=(v=1?-4160:v=2?-4108:v=3?-4117:v=4?-4107:"")
	/*
		IfEqual,v,1,Return,PXL.Application.ActiveSheet.Range(RG).VerticalAlignment:=-4160 ;Top
		IfEqual,v,2,Return,PXL.Application.ActiveSheet.Range(RG).VerticalAlignment:=-4108 ;Center
		IfEqual,v,3,Return,PXL.Application.ActiveSheet.Range(RG).VerticalAlignment:=-4117 ;Distributed
		IfEqual,v,4,Return,PXL.Application.ActiveSheet.Range(RG).VerticalAlignment:=-4107 ;Bottom
		IfEqual,v,4,Return,PXL.Application.ActiveSheet.Range(RG).VerticalAlignment:=-4107 ;Bottom
		*/
}
;***********************Wrap text********************************.
;~ XL_Format_Wrap(XL,RG:="A1:B4",Wrap:=0) ;1=Wrap text, 0=no
XL_Format_Wrap(PXL,RG:="",Wrap:="1"){ ;defaults to Wrapping
	PXL.Application.ActiveSheet.Range(RG).WrapText:=Wrap
}

;********************Indent text in a cell***********************************
;~ XL_Indent(XL,"A1:A10",3)
XL_Indent(PXL,RG,Indent){
	PXL.Application.ActiveSheet.Range(RG).IndentLevel := 3
}
;***********Shrink to fit*******************
;~ XL_Format_Shrink_to_Fit(XL,RG:="A1",Shrink:=0) ;1=Wrap text, 0=no
XL_Format_Shrink_to_Fit(PXL,RG:="",Shrink:="1"){ ;defaults to Shrink to fit
	(Shrink=1)?(PXL.Application.ActiveSheet.Range(RG).WrapText:=0) ;if setting Shrink to fit need to turn-off Wrapping
	PXL.Application.ActiveSheet.Range(RG).ShrinkToFit :=Shrink
}

;***********************Merge / Unmerge cells********************************.
;~ XL_Merge_Cells(XL,RG:="A12:B13",Warn:=0,Merge:=1) ;set to true if you want them merged
XL_Merge_Cells(PXL,RG,warn:=0,Merge:=0){ ;default is unmerge and warn off
	PXL.Application.DisplayAlerts := warn ;Warn about unmerge keeping only one cell
	PXL.Application.ActiveSheet.Range(RG).MergeCells:=Merge ;set merge for range
	(warn=0)?(PXL.Application.DisplayAlerts:=1) ;if warnings were turned off, turn back on
}
;***********************Font size, type, ********************************.
;~ XL_Format_Font(XL,RG:="A1:B1",Font:="Arial Narrow",Size:=25) ;Arial, Arial Narrow, Calibri,Book Antiqua
XL_Format_Font(PXL,RG:="",Font:="Arial",Size:="11"){
	PXL.Application.ActiveSheet.Range(RG).Font.Name:=Font
	PXL.Application.ActiveSheet.Range(RG).Font.Size:=Size
}

;********************Font color***********************************
;2=none 3=Red 4=Lt Grn 5=Blue 6=Brt Yel 7=Mag 8=brt blu 15=Grey 17=Lt purp  19=Lt Yell 20=Lt blu 22=Salm 26=Brt Pnk
;~ XL_Format_Font_Color_RGB(XL,RG:="A1",3)
XL_Format_Font_Color(PXL,RG:="",Color:=0){
	PXL.Application.ActiveSheet.Range(RG).Font.ColorIndex:=Color
}

;********************Font color***********************************
;~ XL_Format_Font_Color_RGB(XL,RG:="A1",Red:=0,Green:=0,Blue:=0,Color:="Red")
XL_Format_Font_Color_RGB(PXL,RG:="",Red:=0,Green:=0,Blue:=0,Color:=""){
	If (Color){
		(Color="White")?(Red:=255,Green:=255,Blue:=255)
         :(Color="Red")  ?(Red:=255,Green:=0  ,Blue:=0)
         :(Color="Green")?(Red:=0  ,Green:=255,Blue:=0)
         :(Color="Blue") ?(Red:=0  ,Green:=0  ,Blue:=255)
         :                (Red:=0  ,Green:=0  ,Blue:=0) ;otherwise make it black	
	}
	PXL.Application.ActiveSheet.Range(RG).Font.Color:=(Blue<<16) + (Green<<8) + Red ;eduardo bispo
	
}


;***********************Font bold, normal, italic, Underline********************************.
;~ XL_Format_Format(XL,RG:="A1:B1",1) ; Bold:=1,Italic:=0,Underline:=3  Underline 1 thru 5
XL_Format_Format(PXL,RG:="",Bold:=0,Italic:=0,Underline:=0){
	PXL.Application.ActiveSheet.Range(RG).Font.Bold:= bold
	PXL.Application.ActiveSheet.Range(RG).Font.Italic:=Italic
	(Underline="0")?(PXL.Application.ActiveSheet.Range(RG).Font.Underline:=-4142):(PXL.Application.ActiveSheet.Range(RG).Font.Underline:=Underline+1)
}
;***********Cell Shading*******************
;2=none 3=Red 4=Lt Grn 5=Blue 6=Brt Yel 7=Mag 8=brt blu 15=Grey 17=Lt purp  19=Lt Yell 20=Lt blu 22=Salm 26=Brt Pnk
;~ XL_Format_Cell_Shading(XL,RG:="A1:H1",Color:=28)
XL_Format_Cell_Shading(PXL,RG:="",Color:=0){
	PXL.Application.ActiveSheet.Range(RG).Interior.ColorIndex :=Color
}
;***********************Cell Number format********************************.
;~ XL_Format_Number(XL,RG:="A1:B4",Format:="#,##0") ;#,##0 ;0,000 ;0,00.0 ;0000 ;000.0 ;.0% ;$0 ;m/dd/yy ;m/dd ;dd/mm/yyyy ;for plain text use:="@"
XL_Format_Number(PXL,RG:="",format="#,##0"){
	PXL.Application.ActiveSheet.Range(RG).NumberFormat := Format
}
;***********tab/Worksheet color*******************
;1=Black 2=White  3=Red 4=Lt Grn 5=Blue 6=Brt Yel 7=Mag 8=brt blu 15=Grey 17=Lt purp  19=Lt Yell 20=Lt blu 22=Salm 26=Brt Pnk
;XL_Tab_Color(xl,"Sheet1","4")
XL_Tab_Color(PXL,Sheet_Name,Color){
	PXL.Sheets(Sheet_Name).Tab.ColorIndex:=Color ;color tab yellow
}
;********************Select / Activate sheet***********************************
;XL_Select_Sheet(XL,"Sheet2")
XL_Select_Sheet(PXL,Sheet_Name){
	PXL.Sheets(Sheet_Name).Select
}

;XL_Format_Text_Alignment(XL,"A1","80")
;********************Change text orientation***********************************
XL_Format_Text_Alignment(PXL,RG:="",Rotate:="90"){
	PXL.Range(RG).Orientation:=Rotate
}

;***********************Search- find text- Cell shading and Font color********************************.
;~ XL_Color(PXL:=XL,RG:="A1:D50",Value:="Joe",Color:="2",Font:=1) ;change the font color
;~ XL_Color(PXL:=XL,RG:="A1:D50",Value:="Joe",Color:="1") ;change the interior shading
;***********************to do ********************************.
;*this is one or the other-  redo it so it does both***************.
;~ XL_Color(XL,"A1:A2","asdf",<Color Value>,<Background=0,Text=1>)
XL_Color(PXL:="",RG:="",Value="",CellShading:="1",FontColor:="0"){
	if(f:=PXL.Application.ActiveSheet.Range[RG].Find[Value]){
		first :=f.Address
		Loop
		{
			f.Interior.ColorIndex:=CellShading
			f.Font.ColorIndex :=FontColor
			f :=PXL.Application.ActiveSheet.Range[RG].FindNext[f]
			if(Last)
				Break
			if(PXL.Application.ActiveSheet.Range[RG].FindNext[f].Address=First)
				Last:=1
		}
	}

	return

	/*
		if  f:=PXL.Application.ActiveSheet.Range[RG].Find[Value]{ ; if the text can be found in the Range
			first :=f.Address  ; save the address of the first found match
			Loop
				If (FontColor=0){
					f.Interior.ColorIndex:=CellShading
					f :=PXL.Application.ActiveSheet.Range[RG].FindNext[f] ;color Interior & move to next found cell
				}Else{
				f.Font.ColorIndex :=FontColor, f :=PXL.Application.ActiveSheet.Range[RG].FindNext[f] ;color font & move to next found cell
			}Until (f.Address = first) ; stop looking when we're back to the first found cell
		}
	*/
}

;***********************Cell Borders (box)********************************.
;***********Note- some weights and linestyles overwrite each other*******************
;~ XL_Border(XL,RG:="a20:b21",Weight:=2,Line:=2) ;Weight 1=Hairline 2=Thin 3=Med 4=Thick  ***  Line 0=None 1=Solid 2=Dash 4=DashDot 5=DashDotDot 13=Slanted Dashes
;***********************Cell Borders (box)********************************.
XL_Border(PXL,RG:="",Weight:="3",Line:="1"){
	Line:=Line=0?-4142:Line
	/*
		xlContinuous		1	Continuous line.
		xlDash			-4115	Dashed line.
		xlDashDot			4	Alternating dashes and dots.
		xlDashDotDot		5	Dash followed by two dots.
		xlDot			-4118	Dotted line.
		xlDouble			-4119	Double line.
		xlLineStyleNone	-4142	No line.
		xlSlantDashDot		13	Slanted dashes.
	*/
	/*
		https://docs.microsoft.com/en-us/office/vba/api/excel.xlbordersindex
		PXL.Application.ActiveSheet.Range(RG).Borders(6).Weight:=1
		xlDiagonalDown		5	Border running from the upper-left corner to the lower-right of each cell in the range.
		xlDiagonalUp		6	Border running from the lower-left corner to the upper-right of each cell in the range.
		xlEdgeLeft		7	Border at the left edge of the range.
		xlEdgeTop			8	Border at the top of the range.
		xlEdgeBottom		9	Border at the bottom of the range.
		xlEdgeRight		10	Border at the right edge of the range.
		xlInsideVertical	11	Vertical borders for all the cells in the range except borders on the outside of the range.
		xlInsideHorizontal	12	Horizontal borders for all cells in the range except borders on the outside of the range.
	*/
	Obj:=PXL.Application.ActiveSheet.Range(RG)
	while((Index:=A_Index+6)<=10){
		Border:=Obj.Borders(Index)
		Border.Weight:=Weight
		Border.LineStyle:=Line
	}
}

;***********************Row Height********************************.
;~ XL_Row_Height(XL,RG:="1:4=-1|10:13=50|21=15") ;rows first then height -1 is auto
XL_Row_Height(PXL,RG:=""){
	for k, v in StrSplit(rg,"|") ;Iterate over array
		((Obj:=StrSplit(v,"=")).2="-1")?(PXL.Application.ActiveSheet.rows(Obj.1).AutoFit):(PXL.Application.ActiveSheet.rows(Obj.1).RowHeight:=Obj.2)
}

;***********************Column Widths********************************.
;~ XL_Col_Width_Set(XL,RG:="A:B=-1|D:F=-1|H=15|K=3") ;-1 is auto
XL_Col_Width_Set(PXL,RG:=""){
	for k, v in StrSplit(rg,"|") ;Iterate over array
		((Obj:=StrSplit(v,"=")).2="-1")?(PXL.Application.ActiveSheet.Columns(Obj.1).AutoFit):(PXL.Application.ActiveSheet.Columns(Obj.1).ColumnWidth:=Obj.2)
}

;***********************Column Insert********************************.
XL_Col_Insert(PXL,RG:="",WD:="5"){ ;Default width is 5
	PXL.Application.ActiveSheet.Columns(RG).Insert(-4161)
	PXL.Application.ActiveSheet.Columns(RG).ColumnWidth:=WD
}

;***********************Row Insert********************************.
;~ XL_Row_Insert(XL,RG:="1:5",HT:=16)  ;~ XL_Row_Insert(XL,RG:="1")
XL_Row_Insert(PXL,RG:="",HT:="15"){ ;default height is 15
	PXL.Application.ActiveSheet.Rows(RG).Insert(-4161)
	PXL.Application.ActiveSheet.Rows(RG).RowHeight:=HT
}

;***********************Column Delete********************************.
;~  XL_Col_Delete(XL,RG:="A:B|F|G|Z|BD ")
XL_Col_Delete(PXL,RG:=""){
	for j,k in StrSplit(RG,"|")
		List.=(InStr(k,":")?k:k ":" k) "," ;need to make for two if only 1 Row
	PXL.Application.ActiveSheet.Range(Trim(List,",")).Delete
}

;***********************Row Delete********************************.
;~ XL_Row_Delete(XL,RG:="4:5|9|67|9|10") ;range or single but cannot overlap
XL_Row_Delete(PXL,RG:=""){
	for j,k in StrSplit(RG,"|")
		List.=(InStr(k,":")?k:k ":" k) "," ;need to make for two if only 1 Row
	PXL.Application.ActiveSheet.Range(Trim(List,",")).Delete ;use list but remove final comma
}

;***********************Delete Column Based on Value********************************.
;~ XL_Delete_Col_Based_on_Value(XL,RG:="A1:H1",Val:="Joe")
XL_Delete_Col_Based_on_Value(PXL,RG:="",Val:=""){
	Columns:=[]
	For C in PXL.Application.ActiveSheet.Range(RG)
		If(C.Value==Val)
			Columns.InsertAt(1,(Col:=XL_Col_To_Char(C.Column)) ":" Col)
	for a,b in Columns
		PXL.Application.ActiveSheet.Range(b).EntireColumn.Delete
}

;***********************Row delete based on Column value********************************.
;~ XL_Delete_Row_Based_on_Value(XL,RG:="B1:B20",Val:="Joe")
XL_Delete_Row_Based_on_Value(PXL,RG:="",Val:=""){
	Rows:=[]
	For C in PXL.Application.ActiveSheet.Range(RG)
		If(C.Value==Val)
			Rows.InsertAt(1,(C.Row) ":" C.Row)
	for a,b in Rows
		PXL.Application.ActiveSheet.Range(b).EntireRow.Delete
}

;***********looping over cells*******************
/*
	For Cell in xl.range(XL.Selection.Address) {
		Current_Cell:=Cell.Address(0,0) ;get absolue reference; change to 1 if want releative
		MsgBox % cell.value
	}
*/


;*******************************************************.
;***********************Clipboard actions********************************.
;*******************************************************.
;***********************Copy to clipboard********************************.
;~ XL_Copy_to_Clipboard(XL,RG:="A1:A5")
XL_Copy_to_Clipboard(PXL,RG:=""){
	PXL.Application.ActiveSheet.Range(RG).Copy ;copy to clipboard
}

;***********************Copy to a var and specify delimiter********************************.
;~ XL_Copy_to_Var(XL,RG:="A1:A5",Delim="|")
XL_Copy_to_Var(PXL,RG:="",Delim:="|"){ ;pipe is defualt
	For Cell in PXL.Application.ActiveSheet.Range(RG)
		Data.=Cell.Text Delim
	return Data:=Trim(Data,Delim) ;trimming off last delimiter
}
XL_Copy_To_Object(PXL,RG:="",Blank_Values:=0){
	Data:=[]
	For Cell in PXL.Application.ActiveSheet.Range(RG)
		if(Cell.Text||Blank)
			Data[Cell.Address(0,0)]:=Cell.Text
	return Data
}
;***********************Paste ********************************.
;~ XL_Paste(XL,Source_RG:="C1",Dest_RG:="F1:F10",Paste:=1)
XL_Paste(PXL,Source_RG:="",Dest_RG:="",Paste:=""){       ;1=All 2=Values 3=Comments 4=Formats 5=Formulas 6=Validation 7=All Except Borders
	IfEqual,Paste,1,SetEnv,Paste,-4104 ;xlPasteAll        ;8=Col Widths 11=Formulas and Number formats 12=Values and Number formats
	IfEqual,Paste,2,SetEnv,Paste,-4163 ;xlPasteValues
	IfEqual,Paste,3,SetEnv,Paste,-4144 ;xlPasteComments
	IfEqual,Paste,4,SetEnv,Paste,-4122 ;xlPasteFormats
	IfEqual,Paste,5,SetEnv,Paste,-4123 ;xlPasteFormulas
	; Everything after 5 is the correct parameter for the setting  I.e. "All Except Borders"=7
	PXL.Application.ActiveSheet.Range(Source_RG).Copy
	PXL.Application.ActiveSheet.Range(Dest_RG).PasteSpecial(Paste)
}

;********************Select Cells / Range***********************************
;~ XL_Select_Range(XL,"A1:A4")
XL_Select_Range(PXL,Range,Sheet_Name:=""){
	if (Sheet_Name="")
		PXL.Application.ActiveSheet.Range(Range).Select
	Else {
		XL_Select_Sheet(PXL,Sheet_Name)
		PXL.Sheets(Sheet_Name).Range(Range).Select
	}
}


;***********************deselect cells ********************************.
;~ XL_UnSelect(XL) ;Unselects highlighted cells
XL_UnSelect(PXL){
	PXL.Application.ActiveSheet.CutCopyMode := False
}
;***********************Set cell values / Formulas********************************.
;~ XL_Set_Values(XL,{"A1":"the","A2":"last","B1":"term"}) ;Destination cell & Words are in an object with key-value pairs
XL_Set_Values(PXL,Obj){
	For key,Value in Obj ;use For loop to iterate over object keys & Values
		PXL.Application.ActiveSheet.Range(key).Value:=Value ;Set the cell(key) to the corresponding value
}
;***********************Insert Comment********************************.
;~ XL_Insert_Comment(XL,RG:="b3",Comment:="Hello there`n`rMr monk`n`rWhatup",Vis:=1,Size:=11,Font:="Book Antique",ForeClr:=5)
XL_Insert_Comment(PXL,RG:="",Comment="",Vis:=0,Size:=11,Font:="Arial",ForeClr:=5){
	If (PXL.Application.ActiveSheet.Range(RG).comment.text) <> ""
		PXL.Application.ActiveSheet.Range(RG).Comment.Delete
	PXL.Application.ActiveSheet.Range(RG).Addcomment(Comment)
	PXL.Application.ActiveSheet.Range(RG).Comment.Visible := Vis
	PXL.Application.ActiveSheet.Range(RG).Comment.Shape.Fill.ForeColor.SchemeColor:=ForeClr
	PXL.Application.ActiveSheet.Range(RG).Comment.Shape.TextFrame.Characters.Font.size:=Size
	PXL.Application.ActiveSheet.Range(RG).Comment.Shape.TextFrame.Characters.Font.Name:=Font
}
;***********Insert new worksheet*******************
;~  XL_Insert_Worksheet(XL,"Test")
XL_Insert_Worksheet(PXL,Name:=""){
	PXL.Sheets.Add ; Worksheet.Add ;add a new workbook
	If (Name)
		PXL.ActiveSheet.Name := Name
}
XL_Delete_Worksheet(PXL,Name=""){
	/*
		(Name)?PXL.Sheets(Name).Delete():PXL.ActiveSheet.Delete()
	*/
	If !(Name)
		PXL.ActiveSheet.Delete()
	Else PXL.Sheets(Name).Delete()
}
;********************Rename sheet***********************************
;~ XL_Rename_Sheet(XL,"Sheet 1","New_Name")
XL_Rename_Sheet(PXL,Orig_Name,New_Name){
	PXL.Sheets(Orig_Name).Name := New_Name
}
;********************move Active worksheet to be first***********************************
XL_Move_Active_Sheet_to_First(PXL){
	PXL.ActiveSheet.Move(PXL.Sheets(1)) ;# move active sheet to front
}
;********************Move X sheet to y location***********************************
XL_Move_Xindex_to_yIndex(PXL,Orig_Index,Dest_Index){
	PXL.Sheets(Orig_Index).Move(PXL.Sheets(Dest_Index))
}
;********************Move XXX sheet name to y location***********************************
XL_Move_SheetName_to_yIndex(PXL,Sheet_Name,Dest_Index){
	PXL.Sheets(Sheet_Name).Move(PXL.Sheets(Dest_Index))
}
;***********************Insert Hyperlink********************************.
;url needs to be in format https://www.google.com
;~ XL_Insert_Hyperlink(XL,URL:="B1",Display:="C1",Destination_Cell:="B8")
;~ XL_Insert_Hyperlink(XL,URL:="""https://jszapp.com""",Display:="""Coo coo""",Destination_Cell:="C2")
XL_Insert_Hyperlink(PXL,URL,Display,Destination_Cell){
	PXL.Application.ActiveSheet.Range(Destination_Cell).Value:="=Hyperlink(" URL "," Display ")"
}
;***********************Insert Hyperlink via OFFSET in Columns (data is in rows)******************.
;~ XL_Insert_Hyperlink_Offset_Col(XL,RG:="E1:E8",URL:="-3",Freindly:="-2") ;Neg values are col to left / Pos are col to right
XL_Insert_Hyperlink_Offset_Col(PXL,Destination_RG,URL_Offset,Freindly_Offset){
	For Cell in PXL.Application.ActiveSheet.Range(Destination_RG){
		Cell.Value:="=Hyperlink(""" . Cell.offset(0,URL_Offset).value . """,""" . Cell.Offset(0,Freindly_Offset).Text . """)"
}}
;***********************Insert Hyperlink via OFFSET in Rows (data is in Columns)******************.
;~ XL_Insert_Hyperlink_Offset_Row(XL,RG:="B18:C18",URL:="-2",Freindly:="-1") ;Neg values are rows Above/ Pos are Rows below
XL_Insert_Hyperlink_Offset_Row(PXL,RG:="",URL_Offset:="",Freindly_Offset:=""){
	For Cell in PXL.Application.ActiveSheet.Range(RG){
		Cell.Value:="=Hyperlink(" "" . Cell.offset(URL_Offset,0).value . """,""" . Cell.Offset(Freindly_Offset,0).Value . """)"
}}
;***********************Remove Hyperlink********************************.
;~ XL_Delete_Hyperlink_on_URL(XLs,RG="B1:B10")
XL_Delete_Hyperlink_on_URL(PXL,RG){
	For Cell in PXL.Application.ActiveSheet.Range(RG)
		Cell.Hyperlinks.Delete
}
;***********************insert email link********************************.
;~ XL_Insert_Email(XL,"A2","C2","E2","B2","D2")
XL_Insert_Email(PXL,email,Subj,Body,Display,Destination_RG:=""){
	PXL.Application.ActiveSheet.Range(Destination_RG).Value:= "=HYPERLINK(""Mailto:"
   . PXL.Application.ActiveSheet.Range(email).value
   . "?Subject=" . PXL.Application.ActiveSheet.Range(Subj).value
   . "&Body=" . PXL.Application.ActiveSheet.Range(Body).value ""","""
   . PXL.Application.ActiveSheet.Range(Display).Value . """)"
}
;***********************Insert email OFFSET in Columns ********************************.
;~ XL_Insert_email_Offset_Col(XL,RG:="E1:E5",URL:="-4",Freindly:="-3",Subj:="-2",Body:="-1") ;Neg values are col to left / Pos are col to right
XL_Insert_email_Offset_Col(PXL,Destination_RG,email_OffSet:="",Freindly_OffSet:="",Subj_OffSet:="",Body_OffSet:=""){
	For Cell in PXL.Application.ActiveSheet.Range(Destination_RG){
		Cell.Value:="=Hyperlink(""mailto:" . Cell.offset(0,email_OffSet).value
		. "?Subject=" . Cell.offset(0,Subj_OffSet).Value "&Body=" Cell.offset(0,Body_OffSet).Value ""","""
		. Cell.Offset(0,Freindly_OffSet).Value  """)"
}}
;***********************Insert email OFFSET in Rows ********************************.
;~ XL_email_Offset_Row(XL,RG:="B24:D24",URL:="-3",Freindly:="-2",Subj:="-1") ;Neg values are Rows Above / Pos are Rows below
XL_email_Offset_Row(PXL,Destination_RG,URL:="",Freindly:="",Subj:=""){
	For Cell in PXL.Application.ActiveSheet.Range(Destination_RG){
		Cell.Value:="=Hyperlink(""mailto:" . Cell.offset(URL,0).value . "?Subject=" . Cell.offset(Subj,0).Value . """,""" . Cell.Offset(Freindly,0).Value . """)"
}}

;~ XL_Search_Replace(XL,RG:="A1:A39",Sch:="Text",Rep:="New Text",Match_Case:="True",CellCont:=0) ;CC=1 Exact, 2=Any
XL_Search_Replace(PXL,RG:="",Sch:="",Rep:="",Match_Case:="0",Exact_Match:="0"){
	Exact_Match:= (Exact_Match="0")?("2"):("1") ;If set to zero then change to 2 so matches any
	;~ Exact_Match:= Exact_Match=0?2:1 ;If set to zero then change to 2 so matches any
	RG:=(RG)?(RG):(XL_Used_RG(PXL,0)) ;If Range not provided, default to used range
	For Cell in PXL.Application.ActiveSheet.Range(RG){
		If Cell.Find[Sch]{
			cell.Replace(Schedule:=Sch,Replace:=Rep,Exact_Match,SearchOrder:=1,MatchCase:=Match_Case,MatchByte:=True, ComObjParameter(0xB, -1) , ComObjParameter(0xB, -1))
			Return
		}
		Else 
		{
			Return
		}
	}
}

;********************VLookup***********************************
;~ XL_VLookup(XL,"E2:E4","D2:D4","A1:B10",2,0)
XL_VLookup(PXL,Destination_RG,Vals_to_Lookup_RG,Source_Array_RG,ColNumb_From_Array,Exact_Match=0){
	PXL.Range(Destination_RG) :=PXL.VLookup(PXL.Range(Vals_to_Lookup_RG).value,PXL.Range(Source_Array_RG),2,0)
}

;**********************Dictionary Search / REplace - multiple in range*********************************
;~ Search_Replace_Multiple(XL,rg:="A1:A10", {"ACC":"Account Spec.","RMK":"Rel Mark"})
XL_Search_Replace_Multiple(PXL,RG:="",Terms:=""){
	RG:=(RG)?(RG):(XL_Used_RG(PXL,0)) ;If Range not provided, default to used range
	For Cell in PXL.Application.ActiveSheet.Range(RG) ;Use For loop to iterate over each cell in range
		for key, val in Terms ;Terms is Object passed in form of dictionary
			if Cell.Value=(key)  ;look for key
				Cell.Value:=Val   ;if found, change to corresponding value
}

;**********************replace "#NULL!"*********************************
;~  XL_Replace_Null(PXL,RG)
XL_Replace_Null(PXL,RG:=""){
	RG:=(RG)?(RG):(XL_Used_RG(PXL,0)) ;If Range not provided, default to used range
	PXL.Range(RG).Replace("#NULL!","")  ;
}

;********************Find location of text and return the position***********************************
;~ XL_Find_And_Return_Position(XL,"A5:F5","5",0,3)
XL_Find_And_Return_Position(PXL,RG:="",Search:="",Absolute:=0,Instance:=1){
	RG:=(RG)?(RG):(XL_Used_RG(PXL,0)) ;If Range not provided, default to used range
	Index:=0
	For Cell in PXL.Application.ActiveSheet.Range(RG) { ;Use For loop to iterate over each cell in range
		if Cell.Value=(Search) { ;Stop looping if you find the value
			Index++ ;Increment Index
			If (Index=Instance){ ;If this is the correct instance
				if Absolute
					Return Cell.address ;;~  Cell with $ in them
				Else Return Cell.address(0,0) ;;Cell without $ in them

				/*
					Return Absolute?Cell.Address:Cell.Address(0,0)
				*/
		}}
	} Return "Not found" ;If finish looping then it was not found
}


;********************search***Find columns based on header********************************.
;~  loc:=XL_Find_Headers_in_Cols(XL,["email","country","Age"]) ;pass search terms as an array
;~  MsgBox % "email: "  loc["email"]   .  "`nCountry: " loc["country's"]   .  "`nAge: " loc["Age"]
XL_Find_Headers_in_Cols(PXL,Values){
	Headers:={} ;need to create the object for storing Key-value pairs of search term and Location
	for k, Search_Term in Values{
		Loop, % XL_Last_Col_Nmb(PXL){ ;loop over all used columns
			if (PXL.Application.ActiveSheet.cells(1,A_Index).Value=Search_Term) ;if cell in row 1, column A_Index = search term
				Headers[Search_Term]:=XL_Col_To_Char(A_Index)  ;"1" ;set column to value in Hearders object
	}} return Headers ;return the key-value pairs Object
}

;***********************Clear********************************.
;~  XL_Clear(XL,RG:="A1:A8",All:=0,Format:=0,Content:=0,Hyperlink:=1,Notes:=0,Outline:=0,Comments:=1) ;0 clears contents but leaves formatting 1 clears both
XL_Clear(PXL,RG:="",All:=0,Format:=0,Content:=0,Hyperlink:=0,Notes:=0,Outline:=0,Comments:=0){
	; https://analysistabs.com/excel-vba/clear-cells-data-range-worksheet/  ;https://msdn.microsoft.com/en-us/vba/excel-vba/articles/range-clearcontents-method-excel
	Obj:=PXL.Application.ActiveSheet.Range(RG)
	if(All=1)
		Obj.Clear           ;clear the range of cells including Formats
	else{
		(Format=1)?(Obj.ClearFormats)    ;clear Formats but leave data
		(Content=1)?(Obj.ClearContents)   ;clear Data but leave Formats
		(Hyperlink=1)?(Obj.ClearHyperlinks) ;clear Hyperlinks but leave formatting & Data
		(Notes=1)?(Obj.ClearNotes)      ;clear Notes
		(Outline=1)?(Obj.ClearOutline)    ;clear Outline
		(Comments=1)?(Obj.ClearComments)   ;clear Comments
	}
}
;***********************Delete blank columns*********** ;Jetrhow wrote this http://www.autohotkey.com/board/topic/69033-basic-ahk-l-com-tutorial-for-excel/?p=557697
;~ XL_Delete_Blank_Col(XL)
XL_Delete_Blank_Col(PXL){
	for column in PXL.Application.ActiveSheet.UsedRange.Columns
		if Not PXL.Application.WorkSheetFunction.count(column)
			delete_range .= column.entireColumn.address(0,0) ","
	Try PXL.Application.Range(Trim(delete_range,",")).delete() ;remove last comma and delete columns
	Catch
		MsgBox,,No Missing Columns, no missing COLUMNS, 1
}
;***********************Delete blank Rows********************************.
;~ XL_Delete_Blank_Row(XL)
XL_Delete_Blank_Row(PXL){
	for Row in PXL.Application.ActiveSheet.UsedRange.Rows
		if Not PXL.Application.WorkSheetFunction.counta(Row)
			delete_range .= Row.entireRow.address(0,0) ","
	Try PXL.Application.Range(Trim(delete_range,",")).delete()
	Catch
		MsgBox,,No Missing Rows, no missing ROWS, 1
}
;***********************Delete Column based on Header********************************.
;~ XL_DropColumns_Per_Header(XL,Values:="One|Two|more")
XL_DropColumns_Per_Header(PXL,Values:=""){
	LoopCount:=XL_Last_Col_Nmb(PXL)
	Loop, %LoopCount% {
		Col:=loopCount-(A_Index-1)
		Header:=PXL.Application.ActiveSheet.cells(1,Col).Value
		Loop, parse, Values, |
			If (Header=A_LoopField)
				PXL.Application.ActiveSheet.Columns(Col).Delete
}}

XL_DropRows_Per_First_Col(PXL,Values:=""){
	Values:=StrSplit(Values,"|")
	LoopCount:=PXL.ActiveSheet.Cells.SpecialCells(11).Row
	Loop, %LoopCount% {
		Row:=LoopCount-(A_Index-1)
		Header:=PXL.Application.ActiveSheet.Cells(Row,1).Text
		for a,Value in Values{
			If (Header==Value){
				PXL.Application.ActiveSheet.Rows(Row).Delete
			}
		}
}}
;***********************Remove Duplicates / Dedupe********************************.
;~ XL_Remove_Dup_Used_Range(XL)
XL_Remove_Dup_Used_Range(PXL,Header_Text:=""){
	Dedupe_CL:=PXL.Application.ActiveSheet.Rows(XL_First_Row(PXL)).Find(Header_Text).column
	PXL.Application.ActiveSheet.Range(XL_Used_RG(PXL)).RemoveDuplicates(Columns:=Dedupe_CL).Header:=1 ;added header
}
;***********************Sort by Column ********************************.
;~ XL_Sort_UsedRange(XL,Head:=1,Sort_Col:="A",Ord:="d") ;Sort used range w/without header
XL_Sort_UsedRange(PXL,Head:="1",Sort_Col:="",Ord:="A"){
	Range:=XL_Used_RG(PXL,Header:=Head)
	StringUpper,Ord,Ord
	Sort_Col:=XL_String_To_Number(Sort_Col)+0 ; w/o the +0 will not work even though it is integer???
	IfEqual,Ord,A,Return,PXL.Application.ActiveSheet.Range(Range).Sort(PXL.Application.ActiveSheet.Columns(Sort_Col),1) ;Ascending
	IfEqual,Ord,D,Return,PXL.Application.ActiveSheet.Range(Range).Sort(PXL.Application.ActiveSheet.Columns(Sort_Col),2) ;Descending
}
;***********************Sort Two Columns********************************.
;~ XL_Sort_TwoCols_UsedRange(XL,Sort_1:="a",Ord_1:="D",Sort_2:="b",Ord_2:="d")
XL_Sort_TwoCols_UsedRange(PXL,Sort_1:="b",Ord_1:="a",Sort_2:="c",Ord_2:="a"){
	/*
		StringUpper, Ord_1, Ord_1, StringUpper, Ord_2, Ord_2
		IfEqual, Ord_1,A,SetEnv,Ord_1,1
		IfEqual, Ord_1,D,SetEnv,Ord_1,2
		IfEqual, Ord_2,A,SetEnv,Ord_2,1
		IfEqual, Ord_2,D,SetEnv,Ord_2,2
	*/

	Ord_1:=Ord_1="A"?1:2
	Ord_2:=Ord_2="A"?1:2

	PXL.Application.ActiveSheet.Range(XL_Used_RG(PXL,Header:=1)).Sort(PXL.Application.ActiveSheet.Columns(XL_String_To_Number(Sort_2)+0),Ord_2),PXL.Application.ActiveSheet.Range(XL_Used_RG(PXL,Header:=1)).Sort(PXL.Application.ActiveSheet.Columns(XL_String_To_Number(Sort_1)+0),Ord_1)
}

;***********Sort by Row*****https://docs.microsoft.com/en-us/office/vba/api/Excel.Range.Sort**************
XL_Sort_Rows(PXL,RG,Sort_Row:="",Ord:="A"){
	/*
		StringUpper,Ord,Ord
		IfEqual, Ord,A,SetEnv,Ord,1 ;Ascending
		IfEqual, Ord,D,SetEnv,Ord,2 ;Descending
	*/
	Ord:=Ord="A"?1:2
	PXL.Range(RG).Sort(PXL.rows(Sort_Row),Ord,,,,,,,,,2) ;the last 2 tells it to sort by rows instead of columns
}

;********************Text to Column / Parse strings in Excel***********************************
;~ XL_Text_to_Column(XL,"A1","B1",Tab:=1,Semicolon:=1,Comma:=1,Space:=0,Other:=1,"|")
XL_Text_to_Column(PXL,Src_RG,Dest_Cell,Tab:=0,semicolon:=0,comma:=0,space:=0,other:=0,Other_Value:=""){
	PXL.Range(Src_RG).TextToColumns(PXL.range(Dest_Cell),1,1,0,tab,semicolon,comma,space,other,Other_Value)
}


;***********************Auto filter********************************.
;***********************Clear Auto filter********************************.
;~ XL_Filter_Clear_AutoFilter(XL)
XL_Filter_Clear_AutoFilter(PXL){
	PXL.Application.ActiveSheet.Range(XL_Used_RG(PXL,Header:=0)).AutoFilter ;Clear autofilter
}

;***********Add filters*******************
;~ XL_Filter_Turn_On(XL,"A:G")
XL_Filter_Turn_On(PXL,Col_RG:=""){
	CoL_RG:=(RG)?(RG):(XL_Used_RG(PXL,0)) ;If Range not provided, default to used range
	PXL.Application.ActiveSheet.Range(COL_RG).AutoFilter ;Clear autofilter
}
;***********************Filter Used Range********************************.
;~ XL_Filter_Column(XL,Filt_Col:="a",FilterA:="joe",FilterB:="king")
XL_Filter_Column(PXL,Filt_Col:="",FilterA:="",FilterB:=""){
	PXL.Application.ActiveSheet.Range(XL_Used_RG(PXL,Header:=0)).AutoFilter ;Clear autofilter
	PXL.Application.ActiveSheet.Range(XL_Used_RG(PXL,Header:=0)).AutoFilter(XL_String_To_Number(Filt_Col),FilterA,2,FilterB)
}
;********************Get cell from specific worksheet / named worksheet***********************************
XL_Get_Value_On_Specific_Worksheet(PXL,Cell,Worksheet=""){
	if (Worksheet)
		return PXL.Worksheets(Worksheet).Range(Cell).Value
	Return PXL.Application.ActiveSheet.Range(Cell).Value
}

;********************Set cell from specific worksheet / named worksheet***********************************
XL_Set_Value_On_Specific_Worksheet(PXL,Cell,Value,Worksheet:=""){
	if ( Worksheet)
		PXL.Worksheets(Worksheet).Range(Cell).Value:=Value
	Else PXL.Application.ActiveSheet.Range(Cell).Value:=Value

}
;********************Get selected range (set absolute to 1 if you want $)***********************************
;~ Range:=XL_Get_Selected_Range(XL,0)
XL_Get_Selected_Range(PXL,Absolute:=0){
	if Absolute
		Address:=PXL.Selection.address ;;~  Selected range with $ in them
	Else
		Address:=PXL.Selection.address(0,0) ;;Selected range without $ in them
	return Address
}
;********************Get First selected Column***********************************
;~ XL_Get_First_Selected_Col(XL)
XL_Get_First_Selected_Col(PXL){
	return XL_Col_To_Char(PXL.Selection.column)
}

;********************Get first selected row***********************************
XL_Get_First_Selected_Row(PXL){
	return PXL.Selection.row
}
;  *******************************************************
;**************************File********************************
;  *******************************************************.
;~ XL:=XL_Start_Get(1,1) ;store pointer to Excel Application in XL
;~ XL:=XL_Start_Get(1,0) ;store pointer to Excel- start off hidden
XL_Start_Get(Vis:=1,Add_Blank_Worksheet:=1){
	Try {
		PXL := ComObjActive("Excel.Application") ;handle
		PXL.Visible := Vis
	}
	Catch{
		PXL := ComObjCreate("Excel.Application") ;handle
		PXL.Visible := Vis ; 1=Visible/Default 0=hidden
		If (Add_Blank_Worksheet)
			PXL.Workbooks.Add()
	}
		PXL:=XL_Handle(1)
	Return,PXL
}
;***********************Open********************************.
;***********************open excel********************************.
;~ XL_Open(XL,Vis:=1,Try:=1,Path:="B:\Americas.xlsx") ;XL is pointer to workbook, Vis=0 for hidden Try=0 for new Excel
XL_Open(byRef PXL,vis=1,Try=1,Path=""){
	If (Try=1){
		Try PXL := ComObjActive("Excel.Application") ;handle
		Catch
			PXL := ComObjCreate("Excel.Application") ;handle
		PXL.Visible := vis ;1=Visible/Default 0=hidden
	}Else{
		PXL := ComObjCreate("Excel.Application") ;handle
		PXL.Visible := vis ;1=Visible/Default 0=hidden
	}
	PXL:=PXL.Workbooks.Open(path) ;wrb =handle to specific workbook
	PXL:=XL_Handle(1) ;Raise it up to Application
	Return,PXL
}
;***********Detect and opens Tab & Comma delimited, HTML, XML and Excel 2003/2007 with pre-set defaults********************************.
;~ XL_Multi_Opener(XL,FullFileName:="C:\Diet.txt")
;~ XL_Multi_Opener(XL,FullFileName:="C:\Users\Joe\Downloads\Roofers_6.csv")
;~ XL_Multi_Opener(XL,FullFileName:="C:\Users\Joe\Dropbox\diet.xlsx")
;~ XL_Multi_Opener(XL,FullFileName:="C:\Users\Joe\Dropbox\Custom\MyDocs\Files\New Start.html")
;~ XL_Multi_Opener(XL,FullFileName:="B:\Progs\AutoHotkey_L\TI\Engage\API\Mailings Feb 01, 2013.xlsx")
;~ XL_Multi_Opener(XL,FullFileName:="B:\Progs\AutoHotkey_L\TI\Engage\API\mailing.xml")
XL_Multi_Opener(PXL,FullFileName=""){
	Ext := RegExReplace(FullFileName,"(.*)\.(\w{3,4})", "$L2") ;grab Extension and Lowercase it
	If (EXT="txt") or (EXT="txt") or (Ext="csv") or (Ext="tab"){
		TabD:="False", csvD:="False"
		IfEqual,ext,txt, SetEnv, tabD, True ;Sets tabD to 1 if extension is txt
		IfEqual,ext,tsv, SetEnv, tabD, True ;Sets tabD to 1 if extension is txt
		IfEqual,ext,csv, SetEnv, csvD, True ;Sets csvD to 1 if extension is csv
		SafeArray := ComObjArray(0xC,2,2)
		SafeArray[0, 0] := 1    ; Column Number
		SafeArray[0, 1] := 2    ; xlTextFormat
		SafeArray[1, 0] := 2    ; Column Number
		SafeArray[1, 1] := 1    ; xlGeneralFormat

		PXL.Workbooks.OpenText(FullFileName,origin:=65001,StartRow:=1,DataType:=1,TextQualifier:=1,ConsecutiveDelimiter:=False,Tab:=TabD,Semicolon:=False,Comma:=csvD,Space:=False,Other:=False,,SafeArray,,,True)
		;~ PXL.Application.Workbooks.OpenText(FullFileName), ;origin:=65001, StartRow:=1, DataType:=1, TextQualifier:=1, ConsecutiveDelimiter:=False, Tab:=tabD, Semicolon:=False, Comma:=csvD, Space:=False, Other:=False, FieldInfo:=Array(Array(1, 1), Array(2, 1)), TrailingMinusNumbers:=True
		;~  PXL.Application.Workbooks.OpenText(FullFileName,origin:=65001, StartRow:=1, DataType:=1, TextQualifier:=1, ConsecutiveDelimiter:=False, Tab:=tabD, Semicolon:=False, Comma:=csvD, Space:=False, Other:=False, FieldInfo:=Array(Array(1, 1), Array(2, 1)), TrailingMinusNumbers:=True)
	} Else if (Ext="xml"){
		PXL.Application.Workbooks.OpenXML(FullFileName, 1, 2) ;.LoadOption.2 ;import xml file
	} Else If (Ext contains xls,htm) {
		PXL.Application.Workbooks.Open(FullFileName) ;Opens Excel 2003,2007 and html
}}
;***********************Save as********************************.
;~  XL_Save(Wrb,File:="C:\try",Format:="2007",WarnOverWrite:=0) ;2007
;~ XL_Save(Wrb,File:="C:\try",Format:="2007",WarnOverWrite:=0) ;2007 format no warn on overwrite
;~ XL_Save(Wrb,File:="C:\try",Format:="CSV",WarnOverWrite:=1) ;CSV format warn on overwrite
;~ XL_Save(Wrb,File:="C:\try",Format:="TAB",WarnOverWrite:=0) ;Tab delimited no warn on overwrite
XL_Save(PXL,File="",Format="2007",WarnOverWrite=0){
	PXL.Application.DisplayAlerts := WarnOverWrite ;doesn't ask if I care about overwriting the file
	IfEqual,Format,TAB,SetEnv,Format,-4158 ;Tab
	IfEqual,Format,CSV,SetEnv,Format,6 ;CSV
	IfEqual,Format,2003,SetEnv,Format,56 ;2003 format
	IfEqual,Format,2007,SetEnv,Format,51 ;2007 format
	PXL.Application.ActiveWorkbook.Saveas(File, Format) ;save it
	PXL.Application.DisplayAlerts := true ;Turn back on warnings
}
;***********************Quit********************************.
XL_Quit(ByRef PXL){
	PXL.Application.Quit
	PXL:=""
}

;***********Create a new workbook*******************
;~  XL_Create_New_Workbook(XL)
XL_Create_New_Workbook(PXL){
PXL.Workbooks.Add() ;create new workbook
}

;***********************MRU*********************************.
;~ XL_Handle(XL,1) ;1=Application 2=Workbook 3=Worksheet
;~ MRU(FileName:="")
XL_MRU(PXL,FileName=""){
	/*
		XL:=XL_Handle(1)
	*/
	PXL.RecentFiles.Add(FileName) ;adds file to recently accessed file list
	mruList := []
	For file in ComObj("Excel.Application").RecentFiles
		if  (A_Index <> 1)
			mruList.Insert(file.name)
	mruList.Insert(RegExReplace(Filename,"^[A-Z]:")) ;adds to MRU list
}
;***********close workbook*******************
;~XL.Close_Workbook(1) ;close need pointer to workbook
;~ XL_Close_Workbook(XL,"B:\Tracts")
XL_Close_Workbook(PXL,File_Path=""){
	If (Workbook)
		PXL.Workbooks(File_Path).Close
	Else PXL.ActiveWorkbook.Close
}

;********************Good examples***********************************
;~ https://excel.officetuts.net/en/vba/deleting-a-row-with-vba

;~ XL_ListWorkbooks() ;Get a list of all Active Excel Instances borrowed from Jethrow and Tre4shunter https://github.com/tre4shunter/XLFunctions/
XL_ListWorkbooks(){
	wbObj:=[], i=1
	for name, obj in GetActiveObjects()
		if (ComobjType(obj, "Name") = "_Workbook"){
			splitpath,name,oFN
			wbObj[i++] := oFN
		}
	return wbObj
}

GetActiveObjects(Prefix:="", CaseSensitive:=false) {
	objects := {}
	DllCall("ole32\CoGetMalloc", "uint", 1, "ptr*", malloc) ; malloc: IMalloc
	DllCall("ole32\CreateBindCtx", "uint", 0, "ptr*", bindCtx) ; bindCtx: IBindCtx
	DllCall(NumGet(NumGet(bindCtx+0)+8*A_PtrSize), "ptr", bindCtx, "ptr*", rot) ; rot: IRunningObjectTable
	DllCall(NumGet(NumGet(rot+0)+9*A_PtrSize), "ptr", rot, "ptr*", enum) ; enum: IEnumMoniker
	while DllCall(NumGet(NumGet(enum+0)+3*A_PtrSize), "ptr", enum, "uint", 1, "ptr*", mon, "ptr", 0) = 0 { ; mon: IMoniker
		DllCall(NumGet(NumGet(mon+0)+20*A_PtrSize), "ptr", mon, "ptr", bindCtx, "ptr", 0, "ptr*", pname) ; GetDisplayName
		name := StrGet(pname, "UTF-16")
		DllCall(NumGet(NumGet(malloc+0)+5*A_PtrSize), "ptr", malloc, "ptr", pname) ; Free
		if InStr(name, Prefix, CaseSensitive) = 1 {
			DllCall(NumGet(NumGet(rot+0)+6*A_PtrSize), "ptr", rot, "ptr", mon, "ptr*", punk) ; GetObject
			if (pdsp := ComObjQuery(punk, "{00020400-0000-0000-C000-000000000046}"))   ; Wrap the pointer as IDispatch if available, otherwise as IUnknown.
				obj := ComObject(9, pdsp, 1), ObjRelease(punk)
			else
				obj := ComObject(13, punk, 1)
			objects[SubStr(name, StrLen(Prefix) + 1)] := obj	  ; Store it in the return array by suffix.
		}
		ObjRelease(mon)
	}
	ObjRelease(enum)
	ObjRelease(rot)
	ObjRelease(bindCtx)
	ObjRelease(malloc)
	return objects
}

;***********Named Cells thanks to Ryan Wells for the suggestion*******************
;***********Set name of range / Cell*******************
;~  Xl.Range("A1").name :="duh" ;Set a name. Not case sensitive
;~  XL_Name_Range(XL,"A1","Ryan")
XL_Name_Range(PXL,RG,Name){
	PXL.Range(RG).name :=Name
}
;***********Delete name for a range*******************
;~  XL_Name_Delete_Name(XL,"Ryan")
XL_Name_Delete_Name(PXL,Name){
PXL.Names(Name).Delete ;Delete a name
}

;***********Get name of range*******************
;~  MyName:=XL_Name_GetName(XL,"A1")
XL_Name_GetName(PXL,RG){
Return PXL.Range(RG).name.name ;Get the name of a cell
}

;***********Return content from range based on a name*******************
;~  duh:=XL_Name_GetData_in_Range(XL,"A1",0)
XL_Name_GetData_in_Range(PXL,RG,Type=0){
	If (Type)
		Return PXL.Evaluate(RG).text
	else
		Return PXL.Evaluate(RG).Value ;Get the text in a named cell/range
}