@echo off
REM JARVIS - Standalone Application Launcher
REM This creates a professional app launcher

setlocal enabledelayedexpansion

REM Get the directory where this script is located
set "SCRIPT_DIR=%~dp0"

REM Change to JARVIS directory
cd /d "!SCRIPT_DIR!"

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    msg * ERROR: Python is not installed. Please install Python 3.8+ from python.org
    exit /b 1
)

REM Run JARVIS GUI with a proper window
start "" cmd /c "cd jarvis_ai && python gui.py"

REM Keep the launcher open briefly
timeout /t 1 /nobreak >nul

exit /b 0
