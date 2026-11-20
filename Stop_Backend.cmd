@echo off
setlocal
cd /d "%~dp0"
set ELECTRON_RUN_AS_NODE=1
"Aleedin Studio.exe" "resources\app.asar\server\main.js" --stop
pause
endlocal
