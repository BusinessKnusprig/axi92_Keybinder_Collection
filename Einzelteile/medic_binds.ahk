F2::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/acceptrevival{space}
return

F3::
SendChat("/anrufliste")
return

F4::
SendChat("/s 100l Benzin = 500$; Reparieren = 100$")
return

F5::
SendChat("/m F�r Heilung bitte mit `G einsteigen!")
return

F10::
SendChat("/m Bitte umfahren Sie die Unfallstelle")
return

Numpad7::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/medicport ls")
return

Numpad8::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/medicport sf")
return

Numpad9::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/medicport lv")
return

NumpadAdd::
SendChat("/medicport base")
return

.::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/me beginnt mit den Wiederbelebungsma�nahmen")
SendChat("/revival")
return

,::
if(IsChatOpen() == 1 || IsDialogOpen() == 1 || IsMenuOpen() == 1)
{
    return
}
SendChat("/me pr�ft den Puls des Patienten")
return

End::
Suspend On
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
Send t/heal  500{Left 4}
Keywait, ENTER, D, T10
if !errorLevel
{
	GetChatLine(0, str)
	if str contains "bereits maximales Heal"
	{
		SendChat("Du hast schon mehr als 100HP ich kann dich leider nicht heilen!")
	}
}
return

:?:/kbhelp::
Suspend Permit
AddChatMessage(0xFFFFFF, "Pause = Keybinder pausieren")
AddChatMessage(0xFFFFFF, "Linke Strg = Motor")
AddChatMessage(0xFFFFFF, "F2 = /acceptrevival")
AddChatMessage(0xFFFFFF, "F3 = /anrufliste")
AddChatMessage(0xFFFFFF, "F5 = F�r Heilung bitte mit G einsteigen!")
AddChatMessage(0xFFFFFF, "F10 = Bitte umfahren Sie die Unfallstelle")
AddChatMessage(0xFFFFFF, "Numpad7 = Medicport LS")
AddChatMessage(0xFFFFFF, "Numpad8 = Medicport SF")
AddChatMessage(0xFFFFFF, "Numpad9 = Medicport LV")
AddChatMessage(0xFFFFFF, "Numpad+ = Medicport Base")
AddChatMessage(0xFFFFFF, "Punkt (.) = /revival")
AddChatMessage(0xFFFFFF, "Ende = Heal")
AddChatMessage(0xFFFFFF, "/tempomat")
AddChatMessage(0xFFFFFF, "/ab = Anrufabsage, verweis auf SMS")
Suspend Off
return

:?:/ab::
Suspend Permit
SendChat("/p")
Sleep, 100
SendChat("Ich bin derzeit schwer besch�ftigt und kann desswegen nicht reden,")
Sleep, 100
SendChat("bitte schreibe eine SMS!")
Sleep, 100
SendChat("/h")
Suspend Off
return