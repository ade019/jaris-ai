@echo off
setlocal enabledelayedexpansion

REM Visual C++ Build Tools Auto-Installer for JARVIS PyAudio

echo.
echo =========================================
echo  Visual C++ Build Tools Installer
echo =========================================
echo.
echo This will download and install Visual C++
echo Build Tools (required for voice mode)
echo.
echo Installation size: ~5-10 GB
echo Installation time: 10-20 minutes
echo.

REM Check for admin rights
net session >nul 2>&1
if errorlevel 1 (
    echo ERROR: This script requires Administrator rights
    echo.
    echo Please:
    echo 1. Right-click this file
    echo 2. Select "Run as administrator"
    echo.
    pause
    exit /b 1
)

echo Downloading Visual C++ Build Tools...
echo This may take 5-10 minutes...
echo.

REM Download location
set "INSTALLER=%temp%\vs_buildtools.exe"

REM Download using PowerShell (more reliable)
powershell -Command "Write-Host 'Downloading...'; [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object System.Net.WebClient).DownloadFile('https://aka.ms/vs/17/release/vs_BuildTools.exe', '%INSTALLER%')" >nul 2>&1

if not exist "%INSTALLER%" (
    echo ERROR: Download failed
    echo.
    echo Try manual download from:
    echo https://visualstudio.microsoft.com/visual-cpp-build-tools/
    echo.
    pause
    exit /b 1
)

echo.
echo Download complete! Installing...
echo Please wait while Visual C++ installs...
echo.

REM Run installer with C++ workload
"%INSTALLER%" --quiet --wait --norestart ^
    --add Microsoft.VisualStudio.Workload.VCTools ^
    --includeRecommended

if errorlevel 0 (
    echo.
    echo =========================================
    echo SUCCESS: Visual C++ installed!
    echo =========================================
    echo.
    echo Now installing PyAudio...
    echo.
    pip install pyaudio -q
    if errorlevel 0 (
        echo.
        echo =========================================
        echo SUCCESS: PyAudio installed!
        echo =========================================
        echo.
        echo Voice mode is now ready!
        echo Double-click: JARVIS_VOICE.bat
        echo.
    ) else (
        echo ERROR: PyAudio installation failed
        echo Try: pip install pyaudio
    )
) else (
    echo ERROR: Visual C++ installation failed
)

REM Cleanup
if exist "%INSTALLER%" del /q "%INSTALLER%"

echo.
pause
