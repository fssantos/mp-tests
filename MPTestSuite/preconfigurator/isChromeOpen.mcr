SET CLIPBOARD : 0 : 0 : Please enter the text to store in clipboard:
Keyboard : Enter : KeyPress
IF PROCESS EXISTS : Multipresenca
SET CLIPBOARD : 1 : 0 : Please enter the text to store in clipboard:
ELSE
OPEN FILE : C:\Program Files (x86)\Google\Chrome\Application\chrome.exe :  : 0
WAIT FOR : Chrome : appear : 0 : 0
SET CLIPBOARD : 1 : 0 : Please enter the text to store in clipboard:
ENDIF
SWITCH TO WINDOW : ^(?!.*Room).*Multipresença.*$ : 1
IF CLIPBOARD EQUALS : 1 : 0 : 0
SET CLIPBOARD : Preconfiguration 02;is Chrome oppened;PASSED : 0 : Please enter the text to store in clipboard:
ELSE
SET CLIPBOARD : Preconfiguration 02;is Chrome oppened;FAILED : 0 : Please enter the text to store in clipboard:
ENDIF
PLAY MACRO : ..\tools\tool_writeResultToCsV.mcr
