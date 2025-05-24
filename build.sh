@echo off
REM Activate the virtual environment
call .\.venv\Scripts\activate

REM Install dependencies from requirements.txt
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

REM Install pyinstaller
python -m pip install pyinstaller

REM Build the executable using pyinstaller
pyinstaller --onefile main.py
