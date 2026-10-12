#!/bin/bash
set -e
APP_DIR="$HOME/Applications/Shark Menu.app"
mkdir -p "$APP_DIR/Contents/MacOS" "$APP_DIR/Contents/Resources"
cp *.gif "$APP_DIR/Contents/Resources/" 2>/dev/null || true
swiftc -O -target arm64-apple-macos12.0 main.swift -o "$APP_DIR/Contents/MacOS/SharkMenu"
echo "Derleme tamamlandı: $APP_DIR"
