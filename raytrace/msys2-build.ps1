# PowerShell script for building rays raytracer with MSYS2
Write-Host "Building rays raytracer with MSYS2..." -ForegroundColor Green
Write-Host ""

# Check if MSYS2 is installed
$msys2Path = "C:\msys64\usr\bin\bash.exe"
if (-not (Test-Path $msys2Path)) {
    Write-Host "Error: MSYS2 not found. Please install MSYS2 first." -ForegroundColor Red
    Write-Host "Download from: https://www.msys2.org/" -ForegroundColor Yellow
    Read-Host "Press Enter to continue"
    exit 1
}

# Set MSYS2 environment
$env:MSYS2_PATH = "C:\msys64"
$env:PATH = "$env:MSYS2_PATH\usr\bin;$env:MSYS2_PATH\mingw64\bin;$env:PATH"

Write-Host "Installing dependencies..." -ForegroundColor Yellow
& pacman -S --needed --noconfirm base-devel mingw-w64-x86_64-toolchain mingw-w64-x86_64-gcc mingw-w64-x86_64-make mingw-w64-x86_64-freeglut mingw-w64-x86_64-libjpeg-turbo

Write-Host ""
Write-Host "Building project..." -ForegroundColor Yellow
& make -f Makefile.msys2 clean
& make -f Makefile.msys2 all

Write-Host ""
Write-Host "Build complete! Check for .exe files." -ForegroundColor Green
Read-Host "Press Enter to continue"
