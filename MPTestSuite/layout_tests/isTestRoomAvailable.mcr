SET CLIPBOARD : 0 : 0 : Please enter the text to store in clipboard:
PLAY MACRO : ..\tools\tool_openMPControlerWebPage.mcr
DELAY : 3000
IF IMAGE : Qk1eCgAAAAAAADYAAAAoAAAAGgAAABkAAAABACAAAAAAAAAAAADEDgAAxA4AAAAAAAAAAAAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////4/Li/7Tdsv+h1J//jsuL/6HUn/+03bL/4/Li////////////////////////////////////////////////////////////////////////////////////////////9vv1/5jQlf9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/mNCV//b79f///////////////////////////////////////////////////////////////////////////9nu2P9yv2//artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/cr9v/9nu2P/////////////////////////////////////////////////////////////////2+/X/cr9v/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/cr9v//b79f///////////////////////////////////////////////////////////5jQlf9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/mNCV///////////////////////////////////////////////////////j8uL/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/4/Li/////////////////////////////////////////////////7Tdsv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv+94bz/////////////////////////////////////////////////odSf/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/6HUn/////////////////////////////////////////////////+Oy4v/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/jsuL/////////////////////////////////////////////////6HUn/9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv+h1J//////////////////////////////////////////////////tN2y/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/73hvP/////////////////////////////////////////////////j8uL/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/4/Li//////////////////////////////////////////////////////+Y0JX/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/5jQlv////////////////////////////////////////////////////////////b79f9zv2//artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9zv2//9vv1/////////////////////////////////////////////////////////////////9nu2P9zv2//artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/c79v/9nu2P////////////////////////////////////////////////////////////////////////////b79f+Y0Jb/artm/2q7Zv9qu2b/artm/2q7Zv9qu2b/artm/5jQlv/2+/X////////////////////////////////////////////////////////////////////////////////////////////j8uL/td2z/6LUn/+PzIz/otSf/7Xds//j8uL///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8= : 0 : 0 : 0 : 
SET CLIPBOARD : 1 : 0 : Please enter the text to store in clipboard:
ENDIF
IF CLIPBOARD EQUALS : 1 : 0 : 0
SET CLIPBOARD : LAYOUT_01;The test room is available;PASSED : 0 : Please enter the text to store in clipboard:
ELSE
SET CLIPBOARD : LAYOUT_01;The test room is available;FAILED : 0 : Please enter the text to store in clipboard:
ENDIF
PLAY MACRO : ..\tools\tool_writeResultToCsV.mcr
