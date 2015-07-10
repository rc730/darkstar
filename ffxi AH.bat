@ECHO OFF
CLS
ECHO DSsearch-server Started %time:~0,5% %date:~1%
:SERVERLOOP
DSGame-server.exe
ECHO DSsearch-server Restarted %time:~0,5% %date:~1%
ECHO.
GOTO SERVERLOOP
:END

