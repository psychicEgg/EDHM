; EDHM Pixel Colour Tool by psychicEgg
; https://github.com/psychicEgg/EDHM
; https://forums.frontier.co.uk/threads/elite-dangerous-hud-mod-edhm.557033/

^!z::  ; Control+Alt+Z hotkey. Don't delete the double-colon ::
; You can change this hotkey, please see
; https://www.autohotkey.com/docs/Hotkeys.htm

PixelGetColor, colour1, 1530, 1224, RGB ; Insert your pixel of interest here

1blue := (colour1 & 0xFF)
1green := ((colour1 & 0xFF00) >> 8)
1red := ((colour1 & 0xFF0000) >> 16)

MsgBox Element`nR%1red% G%1green% B%1blue%

return