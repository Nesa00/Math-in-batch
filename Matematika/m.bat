@echo off
title ^+ ^- ^*
mode con: cols=29 lines=10
::set LOGFILE=Rezultati.dat
::call :pocetak > %LOGFILE%
::exit /B

:1
cls
color D7
echo.
echo -----------------------------
echo --Matematika za male znalce--
echo -----------------------------
echo.
echo Upisi maksimalnu vrednost 
set /p R1=prvog broja: 
set /p R2=drugog broja: 
set /a RR1=R1+1
set /a RR2=R2+1
set /a PB=%random% %%RR1%
set /a DB=%random% %%RR2%
goto mnozenje

:pocetak
cls
color D7
echo.
echo -----------------------------
echo --Matematika za male znalce--
echo -----------------------------
echo.
set /a PB=%random% %%RR1%
set /a DB=%random% %%RR2%
goto mnozenje

:mnozenje
set /a TR=%PB% * %DB%
::echo %PB% + %DB% = 
set /p MR=%PB% * %DB% = 
if %TR% == %MR% (
color A0
echo Tacan odgovor :^) :^) :^)
echo %PB% * %DB% = %MR% Tacno >>m.txt
) else (
color C7
echo Netacan odgovor :^( :^( :^(
echo %PB% * %DB% = %MR% Netacno >>m.txt)
pause>nul
goto pocetak


