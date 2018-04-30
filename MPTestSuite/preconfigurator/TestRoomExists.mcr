SET CLIPBOARD : 0 : 0 : Please enter the text to store in clipboard:
PLAY MACRO : ..\tools\tool_openMPControlerWebPage.mcr
IF CLIPBOARD EQUALS : 1 : 0 : 0
SET CLIPBOARD : PRECONFIGURATOR_03;The Test Room exists;PASSED : 0 : Please enter the text to store in clipboard:
ELSE
SET CLIPBOARD : PRECONFIGURATOR_03;The Test Room is exists;FAILED : 0 : Please enter the text to store in clipboard:
ENDIF
PLAY MACRO : ..\tools\tool_writeResultToCsV.mcr
