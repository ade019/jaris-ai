@echo off
setlocal enabledelayedexpansion

REM JARVIS AI Assistant - GUI Mode Launcher

cd /d "%~dp0"

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python not installed
    pause
    exit /b 1
)

REM Go to jarvis_ai folder and run GUI
cd jarvis_ai
echo Starting JARVIS GUI Mode...
python gui.py
pause
