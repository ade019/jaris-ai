#!/bin/bash
# JARVIS AI Assistant - Startup Script for macOS/Linux

echo ""
echo "========================================"
echo "  JARVIS - AI Assistant Launcher"
echo "========================================"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "ERROR: Python 3 is not installed"
    echo "Please install Python 3.8+ from https://www.python.org"
    exit 1
fi

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    echo "Virtual environment created!"
    echo ""
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install/update requirements
echo "Installing dependencies..."
pip install -q -r requirements.txt

# Ask user for mode
echo ""
echo "Choose JARVIS mode:"
echo "1 - Interactive Mode (with Voice)"
echo "2 - Text Mode (no Voice)"
echo "3 - GUI Mode"
echo ""
read -p "Enter your choice (1-3): " choice

case $choice in
    1)
        echo ""
        echo "Starting JARVIS in Interactive Mode..."
        echo ""
        cd jarvis_ai
        python main.py
        ;;
    2)
        echo ""
        echo "Starting JARVIS in Text Mode..."
        echo ""
        cd jarvis_ai
        python main.py --text
        ;;
    3)
        echo ""
        echo "Starting JARVIS in GUI Mode..."
        echo ""
        cd jarvis_ai
        python gui.py
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
