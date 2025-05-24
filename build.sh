#!/bin/bash

# Create virtual environment if not exists
python -m venv .venv

# Activate the venv (Linux/macOS)
source .venv/bin/activate

# On Windows (if using Git Bash or similar), it might be:
# source .venv/Scripts/activate

# Upgrade pip (optional)
python -m pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt

# Install PyInstaller (to create .exe)
pip install pyinstaller

# Build the executable using PyInstaller
pyinstaller --onefile main.py

# The .exe will be in ./dist/main.exe

# (Optional) Run the game directly (if you want)
# ./dist/main.exe

# Deactivate virtual environment
deactivate
