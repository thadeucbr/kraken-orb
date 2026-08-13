@echo off
setlocal
set "ROOT=%~dp0"
set "TASK=Kraken Orb Web Server"
set "VBS=%ROOT%start-kraken-orb.vbs"

if not exist "%VBS%" (
  echo [ERROR] Launcher not found: "%VBS%"
  exit /b 1
)

rem Replace any previous version so old command lines cannot survive.
schtasks.exe /End /TN "%TASK%" >nul 2>&1
schtasks.exe /Delete /TN "%TASK%" /F >nul 2>&1
schtasks.exe /Create /TN "%TASK%" /SC ONLOGON /DELAY 0000:10 /TR "wscript.exe \"%VBS%\"" /RL LIMITED /F
if errorlevel 1 (
  echo [ERROR] Could not register scheduled task.
  exit /b 1
)

echo [OK] Kraken Orb will start hidden at logon.
echo [OK] Task: %TASK%
endlocal
