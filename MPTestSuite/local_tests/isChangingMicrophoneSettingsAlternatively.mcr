SET CLIPBOARD : 0 : 0 : Please enter the text to store in clipboard:
SWITCH TO WINDOW : ^(?!.*Room).*Multipresença.*$ : 1
PLAY MACRO : ..\tools\tool_clickDevicesConfigurationButton.mcr
REPEAT : 6 : 0 : 0 : Enter the number of iterations: : 0 : 0
DELAY : 500
Mouse : 756 : 623 : Click : 0 : 0 : 0
ENDREPEAT
REPEAT : 6 : 0 : 0 : Enter the number of iterations: : 0 : 0
Mouse : R85 : R442 : LeftButtonDown : 0 : 0 : 0
DELAY : 500
Mouse : R455 : R418 : LeftButtonUp : 0 : 0 : 0
DELAY : 500
ENDREPEAT
REPEAT : 6 : 0 : 0 : Enter the number of iterations: : 0 : 0
DELAY : 500
Mouse : 764 : 658 : Click : 0 : 0 : 0
ENDREPEAT
Mouse : 1198 : 250 : Click : 0 : 0 : 0
IF PROCESS EXISTS : ProcessesManager
SET CLIPBOARD : Microphone settings are working correctly;PASSED : 0 : Please enter the text to store in clipboard:
ELSE
SET CLIPBOARD : Microphone settings are working correctly;FAILED : 0 : Please enter the text to store in clipboard:
ENDIF
PLAY MACRO : ..\tools\tool_writeResultToCsV.mcr
