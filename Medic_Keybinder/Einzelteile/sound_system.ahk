IfWinNotActive, GTA:SA:MP
return

:?:/sound::
Suspend Permit
Sound := !Sound
SoundStatus := (Sound) ? "An" : "Aus"
AddChatMessage(0xFFFFF, "Sound: " SoundStatus)
;MsgBox, Soundnotification: %SoundStatus% ;Sollte ausgebaut werden
if (Sound = 1)
{
	SetTimer, Sound, 100
}
else
{
	SetTimer, Sound, Off
}
Suspend Off
return
 
Sound:
IfWinNotActive, GTA:SA:MP
return
GetChatLine(0, Str)
;Sollte ausgebaut werden von hier -->
; Such Strings Anfang----------------------------------
bankrob := "raubt die Bank in"
fahrzeugklau := "hat einen Versuch ein"
ticket := "hat ein Support Ticket erstellt"
; Such Strings Ende------------------------------------
if InStr(Str, bankrob)
{
	;MsgBox % "heal.wav würde nun spielen"
	SoundPlay, %MainDir%\heal.wav ;Bankrobsound
	Sleep, 5000
	;AddChatMessage(0xFFFFF, "Sound play Heal")
	return
}
else if InStr(Str, fahrzeugklau)
{
	;MsgBox % "tot.wav würde nun spielen"
	SoundPlay, %MainDir%\tot.wav ;Fahrzeugklau
	Sleep, 5000
	;AddChatMessage(0xFFFFF, "Sound play Tot")
}
else if InStr(Str, ticket)
{
	;MsgBox % "tot.wav würde nun spielen"
	SoundPlay, %MainDir%\beep.wav
	Sleep, 5000
	;AddChatMessage(0xFFFFF, "Sound play Tot")
}
return