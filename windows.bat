@echo off
setlocal enabledelayedexpansion

:: ---------------------------------------
:: User Input
:: ---------------------------------------
set /p "URL=Enter URL: "
set /p "NAME=Enter Filename: "

:: ---------------------------------------
:: Configurable Variables
:: ---------------------------------------
set "BASE_PATH=C:\StreamloopRec"
set "LOOPCOUNT=10200"
set "COUNTER=0"

:: Ensure output folder exists
if not exist "%BASE_PATH%\%NAME%" (
    mkdir "%BASE_PATH%\%NAME%"
)

:: ---------------------------------------
:: Loop Start
:: ---------------------------------------
:loop

:: Get timestamp via PowerShell (safe)
for /f %%A in ('powershell -NoLogo -NoProfile -Command "Get-Date -Format yyyyMMdd-HHmmss"') do set "STAMP=%%A"


set /a COUNTER+=1

:: Output file (centralized path usage)
set "OUTFILE=%BASE_PATH%\%NAME%\%STAMP%.ts"

echo Recording... File: %OUTFILE%
streamlink "%URL%" best -o "%OUTFILE%"

set /a LOOPCOUNT-=1
if %LOOPCOUNT% LEQ 0 goto end

goto loop

:end
echo Finished all loops.
pause
