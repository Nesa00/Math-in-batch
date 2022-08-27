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

set /a bilosta=%random% %%2
if %bilosta% equ 0 (goto sabiranje)
if %bilosta% equ 1 (goto oduzimanje)

:pocetak
cls
color D7
echo.
echo -----------------------------
echo --Matematika za male znalce--
echo -----------------------------
echo.
set /a bilosta=%random% %%3
set /a PB=%random% %%RR1%
set /a DB=%random% %%RR2%
if %bilosta% equ 0 (goto sabiranje)
if %bilosta% equ 1 (goto oduzimanje)
if %bilosta% equ 2 (goto mnozenje)

:sabiranje
set /a TR=%PB% + %DB%
::echo %PB% + %DB% = 
set /p MR=%PB% + %DB% = 
if %TR% == %MR% (
color A0
echo Tacan odgovor :^) :^) :^)
echo %PB% + %DB% = %MR% Tacno >>s_o_m.txt
) else (
color C7
echo Netacan odgovor :^( :^( :^(
echo %PB% + %DB% = %MR% Netacno >>s_o_m.txt)
pause>nul
goto pocetak

:oduzimanje
if %PB% equ %DB% (
echo Brojevi su isti
echo Prvi broj %PB%
echo Drugi broj %DB%
::pause>nul
goto pocetak
) else (
if %PB% gtr 0 (
if %DB% gtr 0 (
rem ovde treba da se stavi sve ostalo
rem ---------------------------------------
if %PB% gtr %DB% (
rem echo Prvi je veci
set /a TR=%PB% - %DB%
set /p MR=%PB% - %DB% = 
set /a NP=%PB%
set /a ND=%DB%
goto stampanje
) else (
rem echo Drugi je veci
set /a TR=%DB% - %PB%
set /a NP=%DB%
set /a ND=%PB%
set /p MR=%DB% - %PB% = 
rem ---------------------------------------
rem pause>nul
goto stampanje
)) else (
echo Prvi broj je veci od 0
echo Drugi broj nije veci od 0
echo.
echo Prvi broj %PB%
echo Drugi broj %DB%
::pause>nul
goto pocetak)) else (
::echo Prvi broj nije veci od 0
echo.
echo Prvi broj %PB%
echo Drugi broj %DB%
::pause>nul
goto pocetak))

:stampanje
if %TR% == %MR% (
color A0
echo Tacan odgovor :^) :^) :^)
echo %NP% - %ND% = %MR% Tacno >>s_o_m.txt) else (
color C7
echo Netacan odgovor :^( 
echo %NP% - %ND% = %MR% Netacno >>s_o_m.txt)
pause>nul
goto pocetak

:mnozenje
set /a TR=%PB% * %DB%
::echo %PB% + %DB% = 
set /p MR=%PB% * %DB% = 
if %TR% == %MR% (
color A0
echo Tacan odgovor :^) :^) :^)
echo %PB% * %DB% = %MR% Tacno >>s_o_m.txt
) else (
color C7
echo Netacan odgovor :^( :^( :^(
echo %PB% * %DB% = %MR% Netacno >>s_o_m.txt)
pause>nul
goto pocetak


