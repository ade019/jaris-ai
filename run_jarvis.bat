@echo off
setlocal enabledelayedexpansion

REM Change to script directory
cd /d "%~dp0"

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed
    pause
    exit /b 1
)

REM Navigate to jarvis_ai
cd /d "%~dp0jarvis_ai"

REM Run in text mode directly
python main.py --text

pause


if "%choice%"=="1" (
    echo.
    echo Starting JARVIS in Interactive Mode...
    echo.
    cd jarvis_ai
    python main.py
) else if "%choice%"=="2" (
    echo.
    echo Starting JARVIS in Text Mode...
    echo.
    cd jarvis_ai
    python main.py --text
) else if "%choice%"=="3" (
    echo.
    echo Starting JARVIS in GUI Mode...
    echo.
    cd jarvis_ai
    python gui.py
) else (
    echo Invalid choice. Exiting.
    exit /b 1
)

pause
