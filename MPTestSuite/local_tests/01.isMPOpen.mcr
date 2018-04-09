SET CLIPBOARD : 0 : 0 : Please enter the text to store in clipboard:
Keyboard : Enter : KeyPress
IF PROCESS EXISTS : Multipresenca
SET CLIPBOARD : 1 : 0 : Please enter the text to store in clipboard:
ELSE
OPEN FILE : C:\MultipresencaTeste\bin\ProcessesManager.exe :  : 0
WAIT FOR : ^(?!.*Room).*Multipresença.*$ : appear : 0 : 1
SET CLIPBOARD : 1 : 0 : Please enter the text to store in clipboard:
DELAY : 3000
ENDIF
SWITCH TO WINDOW : ^(?!.*Room).*Multipresença.*$ : 1
IF CLIPBOARD EQUALS : 1 : 0 : 0
SET CLIPBOARD : Teste 01;MP has oppened correcty;PASSED : 0 : Please enter the text to store in clipboard:
ELSE
SET CLIPBOARD : Teste 01;MP has oppened correcty;FAILED : 0 : Please enter the text to store in clipboard:
ENDIF
PLAY MACRO : C:\Users\PRAV211\Desktop\MPTestSuite\tools\tool_writeResultToCsV.mcr
