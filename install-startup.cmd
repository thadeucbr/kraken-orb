@echo off
setlocal
schtasks.exe /Create /TN "Kraken Orb Web Server" /SC ONLOGON /TR "\"C:\Users\thade\Projects\kraken-orb\start-kraken-orb.cmd\"" /F
if errorlevel 1 (
  echo [ERROR] Could not register scheduled task.
  exit /b 1
)
echo [OK] Kraken Orb will start automatically at logon.
endlocal
