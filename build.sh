#!/bin/bash

echo "================================================"
echo "Building PRM Training Flashcards Executable"
echo "================================================"
echo ""

echo "Step 1: Installing required packages..."
pip install -r requirements.txt
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install requirements"
    exit 1
fi

echo ""
echo "Step 2: Building executable with PyInstaller..."
pyinstaller --onefile --windowed --name "PRM-Flashcards" --add-data "index.html:." app.py
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to build executable"
    exit 1
fi

echo ""
echo "================================================"
echo "Build Complete!"
echo "================================================"
echo ""
echo "Your executable is located at: dist/PRM-Flashcards"
echo ""
echo "You can copy this file anywhere and run it."
echo ""
