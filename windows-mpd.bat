```@echo off
:: Initial Variables
set loopcount=10200
set myvalue=0
set /p URL=Enter URL: (aquí va el enlace)
set /p KEY=Enter KEY: (se acuerdan de que aquí las keys se componen como KID:KEY?, aquí solo se debe poner la parte del "KEY", no la clave entera)
set /p NAME=Enter Filename:

:loop
:: Get System Date
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"
set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"

:: Start the stream
set /a myvalue=myvalue+1
streamlink %URL% best --ffmpeg_dkey "%KEY%" -o "C:/Users/USUARIO/Videos/%NAME%/%datestamp%-%timestamp%.ts"
:: streamlink %URL% best -o "C:/Users/USUARIO/Videos/%NAME%_%myvalue%.ts"
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop
:exitloop
pause
```
