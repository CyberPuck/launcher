#!/bin/bash

# Check for Linux and try and apply for correct config
OS_STRING=$(uname)
if [ "$OS_STRING" = "Linux" ]; then
    echo "Installing Linux venv"
    python3 -m venv venv
    source venv/bin/activate
else
    echo "Installing Windows venv"
    py -m venv venv
    source venv/Scripts/activate
fi

echo "Verify pip is updated"
python -m pip install --upgrade pip
echo "Installing requirements"
python -m pip install -r requirements.txt
deactivate