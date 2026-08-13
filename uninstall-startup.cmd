@echo off
setlocal
set "TASK=Kraken Orb Web Server"
schtasks.exe /End /TN "%TASK%" >nul 2>&1
schtasks.exe /Delete /TN "%TASK%" /F
if errorlevel 1 exit /b 1
echo [OK] Startup task removed.
endlocal
