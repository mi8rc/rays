# MSYS2 Compilation Guide for Rays Raytracer

This guide explains how to compile the rays raytracer project on Windows using MSYS2.

## Prerequisites

1. **Install MSYS2**: Download and install MSYS2 from [https://www.msys2.org/](https://www.msys2.org/)
2. **Install Git** (optional): For cloning the repository

## Installation Steps

### 1. Install MSYS2
- Download the MSYS2 installer from the official website
- Run the installer and follow the setup wizard
- Launch MSYS2 MINGW64 from the Start Menu

### 2. Install Required Packages
Open MSYS2 MINGW64 and run:
```bash
pacman -S --needed base-devel mingw-w64-x86_64-toolchain
pacman -S --needed mingw-w64-x86_64-gcc mingw-w64-x86_64-make
pacman -S --needed mingw-w64-x86_64-freeglut mingw-w64-x86_64-libjpeg-turbo
```

### 3. Clone/Download the Project
```bash
# If using git
git clone <repository-url>
cd rays

# Or download and extract the project files
```

## Compilation

### Option 1: Using the Provided Scripts

#### Windows Batch File
```cmd
# Run from Command Prompt
msys2-build.bat
```

#### PowerShell Script
```powershell
# Run from PowerShell
.\msys2-build.ps1
```

### Option 2: Manual Compilation

1. **Navigate to the raytrace directory**:
```bash
cd raytrace
```

2. **Clean previous builds**:
```bash
make -f Makefile.msys2 clean
```

3. **Build the project**:
```bash
make -f Makefile.msys2 all
```

4. **Build specific targets**:
```bash
# Build only the main raytracer
make -f Makefile.msys2 rays64.exe

# Build only utilities
make -f Makefile.msys2 utilities
```

## Build Outputs

The compilation will generate several executables:

### Main Raytracer
- `rays32.exe` - 32-bit floating point precision
- `rays64.exe` - 64-bit double precision (recommended)
- `rays96.exe` - 80-bit extended precision

### Utility Programs
- `torrusgen.exe` - Torus generator
- `iges2dat.exe` - IGES to DAT converter
- `btreeconv.exe` - Binary tree converter
- `convert.exe` - General converter
- `rtriangle.exe` - Triangle utilities
- `cube.exe` - Cube generator
- `ball.exe` - Sphere generator
- `nurbs.exe` - NURBS utilities
- And many more...

## Troubleshooting

### Common Issues

1. **"pacman command not found"**
   - Make sure you're running MSYS2 MINGW64, not MSYS2 MSYS

2. **"make command not found"**
   - Install the make package: `pacman -S mingw-w64-x86_64-make`

3. **"gcc command not found"**
   - Install the GCC package: `pacman -S mingw-w64-x86_64-gcc`

4. **OpenGL/GLUT errors**
   - Install FreeGLUT: `pacman -S mingw-w64-x86_64-freeglut`

5. **JPEG library errors**
   - Install libjpeg-turbo: `pacman -S mingw-w64-x86_64-libjpeg-turbo`

### Environment Variables
If you encounter PATH issues, ensure these are set:
```cmd
set MSYS2_PATH=C:\msys64
set PATH=%MSYS2_PATH%\usr\bin;%MSYS2_PATH%\mingw64\bin;%PATH%
```

## Running the Programs

After successful compilation, you can run the programs:

```cmd
# Run the main raytracer
rays64.exe -i dat/options.dat -J -N -G -E -c -x 640 -y 480

# Run utilities
torrusgen.exe
iges2dat.exe input.iges
```

## Project Structure

- `rays.c` - Main entry point
- `rayslib.c` - Core raytracing library
- `rayslib.h` - Header file with definitions
- `Makefile.msys2` - MSYS2-specific build configuration
- `examples_win32/` - Windows example scripts

## Dependencies

- **GCC**: C compiler
- **Make**: Build system
- **FreeGLUT**: OpenGL utility toolkit
- **libjpeg-turbo**: JPEG image processing
- **Math libraries**: Standard math functions

## Performance Notes

- `rays64.exe` offers the best balance of precision and performance
- `rays32.exe` is fastest but may have precision issues
- `rays96.exe` has highest precision but slowest performance

## Support

For issues specific to MSYS2 compilation:
1. Check the MSYS2 documentation
2. Verify all dependencies are installed
3. Ensure you're using the correct MSYS2 terminal (MINGW64)
