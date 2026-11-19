@echo off
rem Mo DirectNotes trong cua so nho bang Chrome hoac Edge. Giu file nay cung thu muc voi directnotes.html.
setlocal
set "PAGE=file:///%~dp0directnotes.html"
set "PAGE=%PAGE:\=/%"
set "BROWSER="
for %%P in ("%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%LocalAppData%\Google\Chrome\Application\chrome.exe" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe") do if not defined BROWSER if exist %%P set "BROWSER=%%~P"
if not defined BROWSER goto :nobrowser
start "" "%BROWSER%" --app="%PAGE%" --window-size=420,640 --window-position=40,40
exit /b 0
:nobrowser
echo Khong tim thay Chrome hoac Edge. Hay mo file directnotes.html bang Chrome hoac Edge.
pause
exit /b 1
