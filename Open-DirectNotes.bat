@echo off
rem Mo DirectNotes trong cua so nho bang Chrome hoac Edge, qua may chu cuc bo http://localhost:47831
setlocal
set "BROWSER="
for %%P in ("%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%LocalAppData%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe") do if not defined BROWSER if exist %%P set "BROWSER=%%~P"
if not defined BROWSER goto :nobrowser
start "" /min powershell -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "%~dp0Serve-DirectNotes.ps1"
timeout /t 2 /nobreak >nul
start "" "%BROWSER%" --app=http://localhost:47831/ --window-size=420,640 --window-position=40,40
exit /b 0
:nobrowser
echo Khong tim thay Chrome hoac Edge. Hay cai Chrome hoac Edge roi mo lai.
pause
exit /b 1
