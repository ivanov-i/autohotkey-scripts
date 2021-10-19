Process, Priority, , High ; set high priority for this script to avoid issues when building projects
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;SetStoreCapsLockMode, Off

;CapsLock::
;Send, {LWin down} {Space} {LWin up}
;return

;z::MsgBox % GetKeyState("CapsLock", "T")

$CapsLock::
    Send {Blind}{Ctrl Up}{LWin down}{Space down}{Space up}{LWin up}
Return

;$+CapsLock::
;    Send {Blind}{CapsLock down}{CapsLock up}
;Return

~Shift::
if (A_PriorHotkey = "~Shift" and A_TimeSincePriorHotkey < 400)
{
	KeyWait, LShift
	state := GetKeyState("Capslock", "T")  ; 1 if CapsLock is ON, 0 otherwise.
	If (state="0")
		SetCapsLockState, On
	Else
		SetCapsLockState, Off
	Return
}
Return

