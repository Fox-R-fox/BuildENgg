#!/bin/bash

set -e

echo "Installing dependencies..."
pip install -r requirements.txt --target ./pkg-root

echo "Copying source files..."
cp -r main.py assets README.md pkg-root/

echo "Building .pkg file..."
mkdir -p dist
pkgbuild --identifier com.yourdomain.pygameapp \
         --root ./pkg-root \
         --install-location /Applications/pc-game \
         dist/pc-game.pkg

echo ".pkg file created at dist/pc-game.pkg"
