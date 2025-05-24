#!/bin/bash
set -e

echo "Installing dependencies..."
pip install -r requirements.txt
pip install pyinstaller

echo "Cleaning old builds..."
rm -rf build dist *.spec

echo "Building the .exe using PyInstaller..."
pyinstaller --onefile main.py

echo "Build complete. .exe file is in the dist/ folder:"
ls -lh dist/
