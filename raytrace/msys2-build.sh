#!/bin/bash
# MSYS2 build script for rays raytracer

echo "Building rays raytracer with MSYS2..."
echo

# Check if we're in MSYS2 environment
if ! command -v pacman &> /dev/null; then
    echo "Error: This script must be run from MSYS2 MINGW64"
    echo "Please launch MSYS2 MINGW64 and run this script from there"
    exit 1
fi

echo "Installing dependencies..."
pacman -S --needed --noconfirm base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-gcc mingw-w64-x86_64-make mingw-w64-x86_64-freeglut mingw-w64-x86_64-libjpeg-turbo

echo
echo "Building project..."
make -f Makefile.msys2 clean
make -f Makefile.msys2 all

echo
echo "Build complete! Check for .exe files."
echo "You can now run: ./rays64.exe -i dat/options.dat -J -N -G -E -c -x 640 -y 480"
