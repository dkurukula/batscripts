@echo off
FOR /F "skip=1 tokens=1-6" %%A IN ('WMIC Path Win32_LocalTime Get Day^,Hour^,Minute^,Month^,Second^,Year /Format:table') DO (
    if "%%B" NEQ "" (
        SET /A FDATE=%%F*10000+%%D*100+%%A
    )
)
SET /A YEARN=%FDATE:~0,4% 
SET /A MONTHN=10000%FDATE:~4,2% %% 10000
echo date=%FDATE%
echo year=%YEARN%
echo month = %MONTHN%
