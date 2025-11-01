"""
PRM Training Flashcards - Desktop Application
This script launches the flashcard application as a standalone desktop app
"""

import os
import sys
import webview
from pathlib import Path

def get_html_path():
    """Get the path to the index.html file"""
    if getattr(sys, 'frozen', False):
        # Running as compiled executable
        base_path = sys._MEIPASS
    else:
        # Running as script
        base_path = Path(__file__).parent

    return os.path.join(base_path, 'index.html')

def main():
    """Launch the flashcard application"""
    html_path = get_html_path()

    # Create a webview window
    window = webview.create_window(
        title='PRM Training Flashcards',
        url=html_path,
        width=1200,
        height=900,
        resizable=True,
        frameless=False,
        easy_drag=True,
        background_color='#667eea'
    )

    # Start the webview
    webview.start()

if __name__ == '__main__':
    main()
