@echo off
set "BROWSERDEST=%LOCALAPPDATA%\Web2AE\Browser Extension"
if not exist "%BROWSERDEST%" (
  echo Browser extension folder not found. Run install_windows.bat first.
  pause
  exit /b 1
)
start "" explorer.exe "%BROWSERDEST%"
