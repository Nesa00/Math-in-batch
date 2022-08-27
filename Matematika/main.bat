@echo off

:pocetak
cls
color D7
echo.
echo -----------------------------
echo --Matematika za male znalce--
echo -----------------------------
echo.
echo 1. Vezbanje racunskih operacija
echo 2. Kontrola provezbanog
echo 3. Obrisi sacuvana vezbanja
echo.
choice /n /c:123 /M "Izaberi sta zelis: "
if %errorlevel% equ 1 (goto vezbanje)
if %errorlevel% equ 2 (goto provera)
if %errorlevel% equ 3 (goto brisanje)
pause>nul

:provera
echo.
echo Sta zelis da pogledas^?
echo 1. Sabiranje
echo 2. Oduzimanje
echo 3. Mnozenje
echo 4. Sve
rem echo 2. Sabiranje i oduzimanje
rem echo 3. Sabiranje, oduzimanje i mnozenje
rem echo 4. Sabiranje, oduzimanje, mnozenje i deljenje
echo 5. Nazad
echo.

choice /n /c:12345 /M "Izaberi: "
if %errorlevel% equ 1 (call s.txt)
if %errorlevel% equ 2 (call o.txt)
if %errorlevel% equ 3 (call m.txt)
if %errorlevel% equ 4 (call s_o_m.txt)
rem if %errorlevel% equ 2 (call s_o.txt)
rem if %errorlevel% equ 3 (call s_o_m.txt)
rem if %errorlevel% equ 4 (echo s_o_m_d)
if %errorlevel% equ 5 (goto pocetak)

pause>nul
goto pocetak

:brisanje
echo Vezbanja su obrisana
del s.txt
del o.txt
del m.txt
rem del s_o.txt
del s_o_m.txt
pause>nul
goto pocetak

:vezbanje
echo.
echo Izaberi racunske operacije 
echo  koje zelis da vezbas
echo.
echo 1. ^+
echo 2. ^-
echo 3. ^*
echo 4. Sve
rem echo 2. ^+ ^-
rem echo 3. ^+ ^- ^*
rem echo 4. ^+ ^- ^* ^:
echo 5. Nazad
echo.
choice /n /c:12345 /M "Izaberi: "
if %errorlevel% equ 1 (goto 1)
if %errorlevel% equ 2 (goto 2)
if %errorlevel% equ 3 (goto 3)
if %errorlevel% equ 4 (goto 4)
if %errorlevel% equ 5 (goto pocetak)

pause

:1
echo.
echo Vezbamo sabiranje
echo.
pause>nul
call s.bat
pause>nul

:2
echo.
echo Vezbamo oduzimanje
echo.
pause>nul
call o.bat
pause>nul

:3
echo.
echo Vezbamo mnozenje
echo.
pause>nul
call m.bat
pause>nul

:4
echo.
echo Vezbamo sve
echo.
pause>nul
call s_o_m.bat
pause>nul

