@ECHO OFF
SETLOCAL EnableDelayedExpansion
FOR /F "tokens=*" %%I IN (list.txt) DO (
    SET /A NUM = !RANDOM! %% 10
    IF !NUM! LEQ 5 (
        ECHO %%I >> train.txt
    ) ELSE IF !NUM! LEQ 7 (
        ECHO %%I >> val.txt
    ) ELSE (
        ECHO %%I >> test.txt
    )
)
