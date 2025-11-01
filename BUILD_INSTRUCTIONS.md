# Building PRM Training Flashcards as an Executable

This guide will help you convert the PRM Training Flashcards web app into a standalone executable file that can run on any computer without requiring a browser or Python installation.

## Prerequisites

- Python 3.7 or higher (already installed on your system)
- Internet connection (for downloading packages)

## Quick Start - Windows

### Option 1: Automatic Build (Recommended)

1. Open Command Prompt or Git Bash in this directory
2. Run the build script:
   ```bash
   build.bat
   ```

3. Wait for the build to complete (may take 2-5 minutes)
4. Your executable will be created at: `dist\PRM-Flashcards.exe`

### Option 2: Manual Build

1. Open Command Prompt in this directory
2. Install required packages:
   ```bash
   pip install -r requirements.txt
   ```

3. Build the executable:
   ```bash
   pyinstaller --onefile --windowed --name "PRM-Flashcards" --add-data "index.html;." app.py
   ```

4. Find your executable at: `dist\PRM-Flashcards.exe`

## Quick Start - Linux/Mac

1. Open Terminal in this directory
2. Make the build script executable:
   ```bash
   chmod +x build.sh
   ```

3. Run the build script:
   ```bash
   ./build.sh
   ```

4. Your executable will be created at: `dist/PRM-Flashcards`

## Testing Before Building

You can test the app before building by running:
```bash
pip install pywebview
python app.py
```

This will launch the application in a desktop window.

## Distribution

Once built, you can:
- Copy `dist\PRM-Flashcards.exe` to any Windows computer and run it
- No Python installation required on the target computer
- No internet connection required to run
- All your learning progress is saved locally

## File Sizes

- The executable will be approximately 15-25 MB
- This includes Python runtime, the webview engine, and your flashcard app

## Troubleshooting

### "pip is not recognized"
- Make sure Python is in your PATH
- Try using `python -m pip` instead of `pip`

### Build fails with import errors
- Run: `pip install --upgrade pyinstaller pywebview`

### Executable won't run on another computer
- The executable is platform-specific:
  - Windows .exe only runs on Windows
  - Linux/Mac executables only run on their respective platforms
- Build on the target platform for best results

### Antivirus flags the executable
- This is common with PyInstaller executables
- You may need to add an exception or code-sign the executable

## Advanced Options

### Adding an Icon

1. Get a `.ico` file (Windows) or `.icns` file (Mac)
2. Modify the build command:
   ```bash
   pyinstaller --onefile --windowed --name "PRM-Flashcards" --add-data "index.html;." --icon="your-icon.ico" app.py
   ```

### Reducing File Size

Use UPX compression (requires UPX to be installed):
```bash
pyinstaller --onefile --windowed --name "PRM-Flashcards" --add-data "index.html;." --upx-dir="C:\path\to\upx" app.py
```

## Support

If you encounter issues, check:
- Python version: `python --version` (should be 3.7+)
- PyInstaller version: `pyinstaller --version`
- Try rebuilding with: `pyinstaller --clean` flag
