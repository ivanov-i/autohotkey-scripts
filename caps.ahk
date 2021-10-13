﻿Process, Priority, , High ; set high priority for this script to avoid issues when building projects
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;CapsLock::
;Send, {LWin down} {Space} {LWin up}
;return

*CapsLock::
    Send {Blind}{Ctrl Down}
    cDown := A_TickCount
Return

*CapsLock up::
    ; Modify the threshold time (in milliseconds) as necessary
    If ((A_TickCount-cDown) < 150)
        Send {Blind}{Ctrl Up} {LWin down} {Space} {LWin up}
    Else
        Send {Blind}{Ctrl Up}
Return
