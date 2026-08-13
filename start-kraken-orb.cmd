@echo off
setlocal
set "ROOT=%~dp0"
set "PYTHONW=C:\Users\thade\AppData\Roaming\uv\python\cpython-3.11-windows-x86_64-none\pythonw.exe"
if not exist "%PYTHONW%" set "PYTHONW=pythonw.exe"
cd /d "%ROOT%"
"%PYTHONW%" -m http.server 47821 --bind 127.0.0.1 --directory "%ROOT%"
endlocal
