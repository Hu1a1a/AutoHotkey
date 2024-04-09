#Requires AutoHotkey v2.0
Global save := ""

f1::
{
    Global save
    Send "^c" 
    ClipWait
    save := save . A_Clipboard
    Send "{Down down}{Down up}" 
}

f2::
{
    Global save
    A_Clipboard := save
    ClipWait
}

f3::
{
    Global save
    save := ""
    A_Clipboard := ""
}

