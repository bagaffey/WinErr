@ECHO OFF
SETLOCAL EnableDelayedExpansion

SET PTR=0
SET BGC=0
SET FGC=1
SET "HEX=0123456789ABCDEF"

:FA
SET /A BGC=!RANDOM! %% 16, FGC=!RANDOM! %% 16

IF !BGC! EQU !FGC! SET /A FGC = (FGC + 8) %% 16

SET "BGC=!HEX:~%BGC%,1!"
SET "FGC=!HEX:~%FGC%,1!"

COLOR %BGC%%FGC%

ECHO -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
NET HELPMSG %PTR%
REM Causes the system beep (BEL character)
ECHO 

SET /A PTR+=1

>NUL TIMEOUT /T 1
GOTO FA

ENDLOCAL
REM END OF FILE