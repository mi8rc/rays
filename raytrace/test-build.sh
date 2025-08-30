#!/bin/bash
# Test script to verify MSYS2 build setup

echo "Testing MSYS2 build environment..."
echo

# Check for required tools
echo "Checking required tools:"
echo -n "  gcc: "
if command -v gcc &> /dev/null; then
    echo "✓ Found ($(gcc --version | head -n1))"
else
    echo "✗ Not found"
fi

echo -n "  make: "
if command -v make &> /dev/null; then
    echo "✓ Found ($(make --version | head -n1))"
else
    echo "✗ Not found"
fi

echo -n "  pacman: "
if command -v pacman &> /dev/null; then
    echo "✓ Found"
else
    echo "✗ Not found (not in MSYS2 environment)"
fi

echo
echo "Checking source files:"
echo -n "  rays.c: "
if [ -f rays.c ]; then echo "✓ Found"; else echo "✗ Not found"; fi

echo -n "  rayslib.c: "
if [ -f rayslib.c ]; then echo "✓ Found"; else echo "✗ Not found"; fi

echo -n "  rayslib.h: "
if [ -f rayslib.h ]; then echo "✓ Found"; else echo "✗ Not found"; fi

echo -n "  Makefile.msys2: "
if [ -f Makefile.msys2 ]; then echo "✓ Found"; else echo "✗ Not found"; fi

echo
echo "Environment check complete!"
echo "If all tools are found, you can run: ./msys2-build.sh"
