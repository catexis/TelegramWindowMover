; From time to time telegram update his desktop client and main change it's Qt
; component of window. Main change their is version of component.

; Size of window
$winWight = Int(IniRead("settings.ini", "WindowSize", "width", 1024))
$winHeight = Int(IniRead("settings.ini", "WindowSize", "width", 768))

; Counter for loop
$i = 0

; In the center of screen by default
$desktopCenterPointX =  Int(IniRead("settings.ini", "CenterPoint", "x", (@DesktopWidth / 2)))
;~ Taskbar = 40 pixels
$desktopCenterPointY = Int(IniRead("settings.ini", "CenterPoint", "y", ((@DesktopHeight - 40) / 2)))

; Generate dynamic window handle and try to get it's handler from system
; If gets system handler - exit loop
While $i <= 6000
	$dynamicName = "[TITLE:Telegram; CLASS:Qt" & String(5150 + $i) & "QWindowIcon]"
	$winHandle = WinGetHandle($dynamicName)
	IF Not @error Then
		ExitLoop
	EndIf
	$i = $i + 1
WEnd

; And finally move window
WinMove($winHandle, "", $desktopCenterPointX - $winWight/2, $desktopCenterPointY - $winHeight/2, $winWight, $winHeight)