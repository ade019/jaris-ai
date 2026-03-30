@echo off
REM Create Windows Task Scheduler entry for JARVIS Auto-Start
REM Run this file as Administrator to enable auto-start on login

echo.
echo ========================================
echo   JARVIS Auto-Start Setup
echo ========================================
echo.

REM Check for admin privileges
net session >nul 2>&1
if errorlevel 1 (
    echo ERROR: This script must run as Administrator
    echo.
    echo Right-click this file and select "Run as administrator"
    pause
    exit /b 1
)

setlocal enabledelayedexpansion

REM Get the full path to this directory
set "JARVIS_PATH=%~dp0"
set "BATCH_FILE=!JARVIS_PATH!jarvis_background.bat"

echo Setting up JARVIS auto-start...
echo.

REM Create scheduled task
schtasks /create /tn "JARVIS-AutoStart" /tr "!BATCH_FILE!" /sc onlogon /rl highest /f 2>nul

if errorlevel 0 (
    echo.
    echo ✓ SUCCESS: JARVIS will now start automatically on login!
    echo.
    echo To disable auto-start, run:
    echo   schtasks /delete /tn "JARVIS-AutoStart" /f
    echo.
) else (
    echo ERROR: Failed to create auto-start task
)

pause
