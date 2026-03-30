@echo off
REM Create Desktop Shortcuts for JARVIS

setlocal enabledelayedexpansion

set "JARVIS_PATH=%~dp0"
set "DESKTOP=%USERPROFILE%\Desktop"

echo.
echo Creating JARVIS shortcuts on your Desktop...
echo.

REM Create VBS script for shortcut
set "VBS_FILE=%temp%\create_shortcut.vbs"

(
echo Set oWS = WScript.CreateObject("WScript.Shell"^)
echo set oLink = oWS.CreateShortcut("%DESKTOP%\JARVIS.lnk"^)
echo oLink.TargetPath = "%JARVIS_PATH%run_jarvis.bat"
echo oLink.WorkingDirectory = "%JARVIS_PATH%"
echo oLink.Description = "JARVIS AI Assistant"
echo oLink.Save
) > "%VBS_FILE%"

cscript.exe "%VBS_FILE%"

if exist "%DESKTOP%\JARVIS.lnk" (
    echo ✓ Desktop shortcut created!
    echo.
    echo You can now launch JARVIS by double-clicking the "JARVIS" icon on your Desktop
) else (
    echo ERROR: Could not create shortcut
)

del /q "%VBS_FILE%" >nul 2>&1

pause
