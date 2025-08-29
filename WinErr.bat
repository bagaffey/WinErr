@ECHO OFF
SETLOCAL EnableDelayedExpansion

SET PTR=0
SET BGC=0
SET FGC=1

:FA
SET /A BGC=!RANDOM! %% 16, FGC=!RANDOM! %% 16

IF !BGC! EQU !FGC! SET /A FGC = (FGC + 8) %% 16

IF /I %FGC% EQU 10 (SET FGC=A)
IF /I %FGC% EQU 11 (SET FGC=B)
IF /I %FGC% EQU 12 (SET FGC=C)
IF /I %FGC% EQU 13 (SET FGC=D)
IF /I %FGC% EQU 14 (SET FGC=E)
IF /I %FGC% EQU 15 (SET FGC=F)
IF /I %BGC% EQU 10 (SET BGC=A)
IF /I %BGC% EQU 11 (SET BGC=B)
IF /I %BGC% EQU 12 (SET BGC=C)
IF /I %BGC% EQU 13 (SET BGC=D)
IF /I %BGC% EQU 14 (SET BGC=E)
IF /I %BGC% EQU 15 (SET BGC=F)

COLOR %BGC%%FGC%

ECHO -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
NET HELPMSG %PTR%
REM Causes the system beep (BEL character)
ECHO 

SET /A PTR+=1

GOTO FA

ENDLOCAL
REM END OF FILE