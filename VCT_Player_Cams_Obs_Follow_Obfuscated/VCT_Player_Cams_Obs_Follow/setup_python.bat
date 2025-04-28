@echo off
setlocal

echo =============================================
echo VCT Player Cams OBS Follow - Python Setup
echo =============================================

echo.
echo Checking for Python...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Python is NOT installed or not in PATH.
    echo Please install Python 3.13+ from https://www.python.org/downloads/
    echo Then run the command below manually to install required packages.
    goto end
)

echo Python is installed.

echo.
echo Installing required Python packages...
python -m pip install --upgrade pip
python -m pip install keyboard pystray pillow watchdog

echo.
echo =============================================
echo Setup complete!
echo Double-click player_cams_follow.pyw to start.
echo =============================================

:end
pause
