@echo off
echo Building rays raytracer with MSYS2...
echo.

REM Check if we are in MSYS2 environment
if not exist "C:\msys64\usr\bin\bash.exe" (
    echo Error: MSYS2 not found. Please install MSYS2 first.
    echo Download from: https://www.msys2.org/
    pause
    exit /b 1
)

REM Set MSYS2 environment
set MSYS2_PATH=C:\msys64
set PATH=%MSYS2_PATH%\usr\bin;%MSYS2_PATH%\mingw64\bin;%PATH%

echo Installing dependencies...
pacman -S --needed --noconfirm base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-gcc mingw-w64-x86_64-make mingw-w64-x86_64-freeglut mingw-w64-x86_64-libjpeg-turbo

echo.
echo Building project...
make -f Makefile.msys2 clean
make -f Makefile.msys2 all

echo.
echo Build complete! Check for .exe files.
pause
