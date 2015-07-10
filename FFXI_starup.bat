@ECHO OFF
CLS
ECHO DSGame-server Started %time:~0,5% %date:~1%
:SERVERLOOP
DSGame-server.exe
ECHO DSGame-server Restarted %time:~0,5% %date:~1%
ECHO.
GOTO SERVERLOOP
:END

