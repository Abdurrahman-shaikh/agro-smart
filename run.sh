#!/bin/bash

# Check if the conda environment exists
if conda env list | grep -q "agro-smart"; then
    echo "Conda environment 'agro-smart' already exists."
else
    echo "Creating conda environment 'agro-smart'..."
    conda create -n agro-smart python=3.6.12
    echo "Conda environment created."
fi

# Initialize conda if not already initialized
if ! conda info --envs | grep -q "^\*"; then
    echo "Initializing conda..."
    eval "$(conda shell.bash hook)"
    conda init
fi

# Activate the conda environment
echo "Activating conda environment 'agro-smart'..."
conda activate agro-smart

# Check if requirements file exists
if [ -f "./app/requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r ./app/requirements.txt
else
    echo "Requirements file not found. Skipping installation."
fi

# Run the Python application
echo "Running app.py..."
python3 ./app/app.py

