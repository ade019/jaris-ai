@echo off
setlocal enabledelayedexpansion

REM JARVIS AI Assistant - Simple Launcher

cd /d "%~dp0"

REM Check Python
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python not installed
    pause
    exit /b 1
)

REM Go to jarvis_ai folder and run
cd jarvis_ai
python main.py --text
pause
