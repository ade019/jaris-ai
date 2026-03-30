@echo off
REM Create a professional app shortcut on Desktop

setlocal enabledelayedexpansion

set "JARVIS_PATH=%~dp0"
set "DESKTOP=%USERPROFILE%\Desktop"

REM Create VBS script for shortcut with icon
set "VBS_FILE=%temp%\make_shortcut.vbs"

(
echo Set oWS = WScript.CreateObject("WScript.Shell"^)
echo set oLink = oWS.CreateShortcut("%DESKTOP%\JARVIS.lnk"^)
echo oLink.TargetPath = "%JARVIS_PATH%JARVIS_APP.bat"
echo oLink.WorkingDirectory = "%JARVIS_PATH%"
echo oLink.Description = "JARVIS - Personal AI Assistant"
echo oLink.WindowStyle = 1
echo oLink.Save
) > "%VBS_FILE%"

echo Creating desktop shortcut...
cscript.exe "%VBS_FILE%"

if exist "%DESKTOP%\JARVIS.lnk" (
    echo.
    echo ✓ Desktop shortcut created!
    echo.
    echo You can now launch JARVIS by clicking the icon on your Desktop.
    echo.
) else (
    echo Could not create shortcut.
)

del /q "%VBS_FILE%" >nul 2>&1
pause
