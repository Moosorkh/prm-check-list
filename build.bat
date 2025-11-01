@echo off
echo ================================================
echo Building PRM Training Flashcards Executable
echo ================================================
echo.

echo Step 1: Installing required packages...
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo ERROR: Failed to install requirements
    pause
    exit /b %errorlevel%
)

echo.
echo Step 2: Building executable with PyInstaller...
pyinstaller --onefile --windowed --name "PRM-Flashcards" --add-data "index.html;." --icon=NONE app.py
if %errorlevel% neq 0 (
    echo ERROR: Failed to build executable
    pause
    exit /b %errorlevel%
)

echo.
echo ================================================
echo Build Complete!
echo ================================================
echo.
echo Your executable is located at: dist\PRM-Flashcards.exe
echo.
echo You can copy this file anywhere and run it without needing Python installed.
echo.
pause
