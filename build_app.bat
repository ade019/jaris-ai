@echo off
REM JARVIS App Builder - Creates a standalone Windows executable

cd /d "%~dp0"

echo.
echo =========================================
echo   Building JARVIS Windows App
echo =========================================
echo.

REM Check if PyInstaller is installed
python -m pip show pyinstaller >nul 2>&1
if errorlevel 1 (
    echo Installing PyInstaller...
    python -m pip install pyinstaller -q
)

echo Building JARVIS executable...
echo This may take 2-3 minutes...
echo.

REM Create the executable
python -m pyinstaller ^
    --onefile ^
    --windowed ^
    --name "JARVIS" ^
    --icon=jarvis_ai/icon.ico ^
    --add-data "jarvis_ai:jarvis_ai" ^
    --distpath "./dist" ^
    --buildpath "./build" ^
    --specpath "./build" ^
    jarvis_ai/gui.py 2>nul

if exist "dist\JARVIS.exe" (
    echo.
    echo =========================================
    echo SUCCESS: JARVIS App Created!
    echo =========================================
    echo.
    echo Location: dist\JARVIS.exe
    echo.
    echo You can now:
    echo 1. Run the app by double-clicking JARVIS.exe
    echo 2. Create a shortcut on your Desktop
    echo 3. Share dist\JARVIS.exe with others
    echo.
    echo Users only need the .exe file - no Python required!
    echo.
    pause
) else (
    echo.
    echo ERROR: Build failed
    echo.
    echo Trying alternative build method...
    python -m pyinstaller ^
        --onefile ^
        --console ^
        --name "JARVIS" ^
        jarvis_ai/main.py
    pause
)

REM Clean up build files
if exist "build" rmdir /s /q "build" >nul 2>&1
if exist "__pycache__" rmdir /s /q "__pycache__" >nul 2>&1
