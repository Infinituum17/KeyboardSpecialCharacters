; Only one instance can run at the same time
#SingleInstance

; Removing all the tray default options on right-click
Menu, Tray, NoStandard

; Adding Credits
Menu, Tray, add, Credits

; Adding back an exit option
Menu, Tray, add, Exit

; Registering all *hardcoded* keyboard combinations
^!-::Send, {U+007E}
^!'::Send, {U+0060}
^!v::Send, {U+2714}
^!x::Send, {U+2718}

Credits:
  Gui, CreditsGui:New,, Credits
  Gui, Font, s10
  Gui, Add, Text,, `nAuthor: Infinituum17
  Gui, Add, Link,, Repo: <a href="https://github.com/Infinituum17/KeyboardSpecialCharacters">KeyboardSpecialCharacters</a>
  Gui, Add, Text,, License: MIT
  Gui, Add, Button, w80 x200 y105, OK
  Gui, Show, w300 h150 Center, Credits
  Return

  CreditsGuiButtonOK:
    Gui, Hide
  Return
Return

Exit:
  ExitApp
Return
