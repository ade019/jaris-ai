@echo off
setlocal enabledelayedexpansion
REM JARVIS AI - Background Mode Launcher
REM Runs JARVIS in the background without a visible console

REM Change to script directory
cd /d "%~dp0"

REM Run JARVIS in background (no console window)
start /b /d "%CD%\jarvis_ai" pythonw main.py --text

REM Notify user (optional)
timeout /t 1 /nobreak >nul

exit /b 0
