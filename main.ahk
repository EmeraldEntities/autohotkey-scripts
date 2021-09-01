; I don't know how to import from an actual env/json yet so here we go
#include secrets.ahk

; HELPERS----------------------------------------------------------------------------------------
; Function given by https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=75 = 
StrRepeat(string, times) {
    loop % times
        output .= string
    return output
}
;------------------------------------------------------------------------------------------------

; hotstrings to replace abbreviations with text
:C:WU::whats up
:C:LY::love you
:C:Y::yes
:C:N::no

; complicated hotstrings
:C:IC::
    Random, rand, 3, 10
    following := StrRepeat("e", rand)
    SendInput, i se%following% 
    SendInput, {Enter}
    Return

:C:LYY::
    Random, rand, 3, 10
    following := StrRepeat("u", rand)
    SendInput, love yo%following% 
    Return

; social medias which are stored in secrets.ahk
:*:ll@::
:*:l@::
    SendInput, % linkedin_url
    Return

:*:i@::
    SendInput, % ig_handle
    Return

:*:li@::
    SendInput, % ig_url
    Return

:*:g@::
:*:lg@::
    SendInput, % github_url
    Return

; avoiding that dumb # being recognized as a special symbol
:*:d@::
:*:ld@::
    SendRaw, % discord_handle
    Return

; shift+caps lock, always on top
+CapsLock:: WinSet, AlwaysOnTop, Toggle, A

; ctrl+delete empty recycle bin
^Del:: FileRecycleEmpty

; once ctrl+alt+c pressed, it will search google for the thing I highlighted
^!c::
    Send, ^c
    Sleep, 50
    Run, https://www.google.com/search?q=%clipboard%
    Return

; open messenger using ctrl+alt+m
^!m::
    Run, https://www.messenger.com/
    Return

; google translate whatever i highlight + ctrl+alt+t
^!t::
    Send, ^c
    Sleep, 50
    Run, https://translate.google.ca/?sl=auto&tl=en&text=%clipboard%&op=translate
    Return

; Volume keys using shift+numpad
+NumpadAdd:: Send {Volume_Up}
+NumpadSub:: Send {Volume_Down}

; pause - ctrl+esc (sorta useless for now, TODO: fix)
; exit - shift+esc
^Esc:: Pause
+Esc:: ExitApp