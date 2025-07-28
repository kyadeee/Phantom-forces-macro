#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

^d::
SoundBeep, 750, 300  ; Beep when starting
ToolTip, Macro Running...

IfWinActive, ahk_exe RobloxPlayerBeta.exe
{
    ; === Step 1: Go to loading ===
    MouseMove, 100, 473
    Click
    Sleep, 200
    MouseMove, 888, 566
    Click

    ; === Step 2: Wait for pixel ===
    x := 300
    y := 175
    targetColor := 0xB5B7B7

    Loop
    {
        PixelGetColor, foundColor, %x%, %y%, RGB
        if (foundColor = targetColor)
            break
        Sleep, 500
    }
    MouseMove, 401, 172
    Click
    MouseMove, 405, 172
    Click
    MouseMove, 650, 763
    Click
    MouseMove, 206, 722
    Click
    MouseMove, 412, 730
    Click, down 
    MouseMove, 412, 818
    Click, up
    MouseMove, 206, 848
    Click
    MouseMove, 206, 834
    Click
    MouseMove, 412, 818
    Click, down 
    MouseMove, 412, 888
    Click, up
    MouseMove, 1471, 243
    Click 
}
else
{
    WinActivate, ahk_exe RobloxPlayerBeta.exe
    Sleep, 500

    ; === Step 1: Go to loading ===
    MouseMove, 100, 473
    Click
    Sleep, 200
    MouseMove, 888, 566
    Click

    ; === Step 2: Wait for pixel ===
    x := 300
    y := 175
    targetColor := 0xB5B7B7

    Loop
    {
        PixelGetColor, foundColor, %x%, %y%, RGB
        if (foundColor = targetColor)
            break
        Sleep, 500
    }

    ; === Step 3: Final sequence ===
    MouseMove, 401, 172
    Click
    Sleep, 1000
    MouseMove, 405, 172
    Click
    MouseMove, 650, 763
    Click
    MouseMove, 206, 722
    Click
    MouseMove, 412, 730
    Click, down 
    MouseMove, 412, 818
    Click, up
    MouseMove, 206, 848
    Click
    MouseMove, 206, 834
    Click
    MouseMove, 412, 818
    Click, down 
    MouseMove, 412, 888
    Click, up
    MouseMove, 1471, 243
    Click 
}

ToolTip  ; Remove the tooltip when done
SoundBeep, 400, 300  ; Beep when finished
return

; Hotkey to stop the script completely
^q::ExitApp

toggle := false  

^f::
IfWinActive, ahk_exe RobloxPlayerBeta.exe
{
    toggle := !toggle  

    if (toggle) {
        SetTimer, DoClicks, 50  
    } else {
        SetTimer, DoClicks, Off
    }
}
else
{
    WinActivate, ahk_exe RobloxPlayerBeta.exe
        toggle := !toggle  

    if (toggle) {
        SetTimer, DoClicks, 50  
    } else {
        SetTimer, DoClicks, Off
    }
}
return

DoClicks:
    MouseMove, 345, 1037
    Click
    Sleep, 50

    MouseMove, 958, 626
    Click
    Sleep, 50
return

toggleR := false  

^r::
IfWinActive, ahk_exe RobloxPlayerBeta.exe
{
    toggleR := !toggleR  

    if (toggleR) {
        SetTimer, DoClickR, 50  
    } else {
        SetTimer, DoClickR, Off
    }
}
else
{
    WinActivate, ahk_exe RobloxPlayerBeta.exe
    toggleR := !toggleR  

    if (toggleR) {
        SetTimer, DoClickR, 50  
    } else {
        SetTimer, DoClickR, Off
    }
}
return

DoClickR:
    MouseMove, 1508, 716
    Click
return

^1::
IfWinActive, ahk_exe RobloxPlayerBeta.exe
{
        While GetKeyState("1") 
        {
            MouseMove, 351, 272
            Click             
            MouseMove, 351, 1036     
            Click
                }
}
else
{
        WinActivate, ahk_exe RobloxPlayerBeta.exe 
        While GetKeyState("1") 
        {
            MouseMove, 351, 272
            Click             
            MouseMove, 351, 1036     
            Click
                }
}

^2::
IfWinActive, ahk_exe RobloxPlayerBeta.exe
{
        While GetKeyState("2") 
        {
            MouseMove, 351, 292
            Click             
            MouseMove, 351, 1036     
            Click
                }
}
else
{
        WinActivate, ahk_exe RobloxPlayerBeta.exe 
         While GetKeyState("2") 
        {
            MouseMove, 351, 292
            Click             
            MouseMove, 351, 1036     
            Click
                }
}

^3::
IfWinActive, ahk_exe RobloxPlayerBeta.exe
{
        While GetKeyState("3") 
        {
            MouseMove, 351, 312
            Click             
            MouseMove, 351, 1036     
            Click
                }
}
else
{  
    WinActivate, ahk_exe RobloxPlayerBeta.exe
            While GetKeyState("3") 
        {
            MouseMove, 351, 312
            Click             
            MouseMove, 351, 1036     
            Click
        }
}

#SingleInstance Force

; === Show a tooltip when NOT suspended ===

; Press F2 to toggle Suspend
F2::
    Suspend, Toggle

    if (A_IsSuspended)
    {
        ToolTip, Macro Suspended
    }
    else
    {   
        ToolTip, Macro ACTIVE
    }
Return


