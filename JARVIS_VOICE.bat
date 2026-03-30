@echo off
setlocal enabledelayedexpansion

REM JARVIS AI Assistant - Voice Mode Launcher

cd /d "%~dp0"

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python not installed
    pause
    exit /b 1
)

REM Go to jarvis_ai folder and run with VOICE
cd jarvis_ai
echo Starting JARVIS in VOICE MODE...
echo Make sure your microphone is connected!
echo.
python main.py
pause
