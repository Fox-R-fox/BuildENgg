@echo off
chcp 65001

REM Step 1: Activate virtual environment
call .\.venv\Scripts\activate

REM Step 2: Upgrade pip and install requirements
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

REM Step 3: Install pyinstaller
python -m pip install pyinstaller

REM Step 4: Build the executable from main.py
pyinstaller --onefile main.py

REM Step 5: Copy artifact to a known path (optional, TeamCity can pick this up)
echo Build completed. Executable created at dist\main.exe
