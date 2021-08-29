; shift s - just clikcs
+m::
    Loop {
        Random, randMilli, 100, 300
        MouseMove, A_ScreenWidth/2, A_ScreenHeight/2
        Click
        Sleep, %randMilli%
    }

; shift x
+x:: Pause

esc:: ExitApp