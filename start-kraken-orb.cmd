@echo off
setlocal
set "ROOT=%~dp0"
set "PYTHON=C:\Users\thade\AppData\Roaming\uv\python\cpython-3.11-windows-x86_64-none\python.exe"
if not exist "%PYTHON%" set "PYTHON=python.exe"
cd /d "%ROOT%"
"%PYTHON%" -m http.server 47821 --bind 127.0.0.1 --directory "%ROOT%"
endlocal
