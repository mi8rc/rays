# MSYS2 Build Workflow for Rays Raytracer

## Overview
This document provides a complete workflow for compiling the rays raytracer project on Windows using MSYS2. The rays project is a C-based NURBS raytracer with OpenGL support.

## What You Get
- **Main raytracer**: rays32.exe, rays64.exe, rays96.exe (different precision levels)
- **Utility programs**: 20+ tools for conversion, generation, and processing
- **Complete build system**: Automated dependency installation and compilation

## Quick Start (3 Steps)

### 1. Install MSYS2
- Download from: https://www.msys2.org/
- Run installer and follow setup wizard
- Launch "MSYS2 MINGW64" from Start Menu

### 2. Run Build Script
```bash
# In MSYS2 MINGW64 terminal:
./msys2-build.sh
```

### 3. Run the Program
```bash
./rays64.exe -i dat/options.dat -J -N -G -E -c -x 640 -y 480
```

## Alternative Build Methods

### Windows Batch File
Double-click `msys2-build.bat` from Windows Explorer

### PowerShell
Run `msys2-build.ps1` in PowerShell

### Manual Build
```bash
# Install dependencies
pacman -S --needed base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-gcc mingw-w64-x86_64-make mingw-w64-x86_64-freeglut mingw-w64-x86_64-libjpeg-turbo

# Build project
make -f Makefile.msys2 all
```

## Files Created
- `Makefile.msys2` - MSYS2 build configuration
- `msys2-build.sh` - Automated build script (recommended)
- `msys2-build.bat` - Windows batch file
- `msys2-build.ps1` - PowerShell script
- `test-build.sh` - Environment verification script
- `MSYS2-COMPILATION.md` - Detailed compilation guide
- `BUILD-SUMMARY.md` - Build workflow summary

## Testing Your Setup
Run `./test-build.sh` to verify your MSYS2 environment is properly configured.

## Troubleshooting
- **"pacman not found"**: Make sure you're in MSYS2 MINGW64, not MSYS2 MSYS
- **"make not found"**: Run `pacman -S mingw-w64-x86_64-make`
- **"gcc not found"**: Run `pacman -S mingw-w64-x86_64-gcc`
- **OpenGL errors**: Run `pacman -S mingw-w64-x86_64-freeglut`

## Project Features
- NURBS surface raytracing
- OpenGL visualization
- Multiple precision levels (32/64/80-bit)
- IGES file support
- Texture mapping
- Anti-aliasing and shadows
- BVH acceleration structures

## Performance Notes
- `rays64.exe`: Best balance of speed and precision (recommended)
- `rays32.exe`: Fastest but lower precision
- `rays96.exe`: Highest precision but slowest

## Support
For MSYS2-specific issues, refer to the MSYS2 documentation and ensure you're using the correct terminal (MINGW64).
