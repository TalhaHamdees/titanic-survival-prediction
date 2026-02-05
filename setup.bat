@echo off
echo Setting up Titanic Survival Prediction project...
echo.

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed. Please install Python 3.10+ from https://python.org
    exit /b 1
)

:: Create virtual environment if it doesn't exist
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
)

:: Activate and install dependencies
echo Installing dependencies...
call venv\Scripts\activate.bat
pip install -r requirements.txt

echo.
echo Setup complete! To start working:
echo   1. Activate environment: venv\Scripts\activate
echo   2. Launch Jupyter: jupyter notebook
echo.
