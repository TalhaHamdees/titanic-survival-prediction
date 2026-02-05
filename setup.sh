#!/bin/bash
echo "Setting up Titanic Survival Prediction project..."
echo

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "Python is not installed. Please install Python 3.10+"
    exit 1
fi

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# Activate and install dependencies
echo "Installing dependencies..."
source venv/bin/activate
pip install -r requirements.txt

echo
echo "Setup complete! To start working:"
echo "  1. Activate environment: source venv/bin/activate"
echo "  2. Launch Jupyter: jupyter notebook"
echo
