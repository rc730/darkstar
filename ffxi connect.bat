@ECHO OFF
CLS
ECHO DSconnect-server Started %time:~0,5% %date:~1%
:SERVERLOOP
DSGame-server.exe
ECHO DSconnect-server Restarted %time:~0,5% %date:~1%
ECHO.
GOTO SERVERLOOP
:END

