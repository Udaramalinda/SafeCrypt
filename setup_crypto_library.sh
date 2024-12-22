#!/bin/bash

# Ensure the script is being run from the project's root directory
if [ ! -f "CMakeLists.txt" ]; then
    echo "Error: Please run this script from the root of the project."
    exit 1
fi

# Step 1: Install dependencies
echo "Installing dependencies..."

# Install CMake and build-essential (on Ubuntu or Debian-based Linux)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt-get update
    sudo apt-get install -y cmake build-essential git
fi

# Install dependencies for macOS (Homebrew)
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install cmake git
fi

# Step 2: Create build directory and configure project
echo "Creating build directory..."
mkdir -p build
cd build

# Step 3: Run CMake to configure the project
echo "Configuring project with CMake..."
cmake ..

# Step 4: Build the project
echo "Building the project..."
make

# Step 5: Run tests (if applicable)
echo "Running tests..."
./tests  # Assuming you have an executable to run tests

echo "Setup complete! Your project is ready for development."
