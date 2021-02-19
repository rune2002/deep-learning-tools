REM @ECHO OFF
SETLOCAL EnableDelayedExpansion
SET /A LABEL=0
SET /A INDEX=0
FOR /D %%I IN (.\*) DO (
    FOR %%J IN (%%I\*) DO (
        SET FILE=n!LABEL!_!INDEX!%%~xJ
        REN %%J !FILE!
        ECHO n!LABEL!\!FILE! !LABEL! >> list.txt
        SET /A INDEX+=1
    )
    REN %%~nxI n!LABEL!
    SET /A LABEL+=1
    SET /A INDEX=0
)
@ECHO DONE!
