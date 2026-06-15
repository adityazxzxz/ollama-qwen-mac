#!/usr/bin/env bash

set -e

echo "=================================="
echo " OLLAMA + QWEN INSTALLER"
echo " Apple Silicon Mac"
echo "=================================="

# Check Homebrew
if ! command -v brew >/dev/null 2>&1; then
    echo ""
    echo "Homebrew belum terinstall."
    echo "Install dulu:"
    echo "https://brew.sh"
    exit 1
fi

echo ""
echo "[1/5] Installing Ollama..."

if command -v ollama >/dev/null 2>&1; then
    echo "Ollama sudah terinstall."
else
    brew install ollama
fi

echo ""
echo "[2/5] Start Ollama service..."

brew services start ollama || true

sleep 5

echo ""
echo "[3/5] Checking Ollama..."

ollama --version

echo ""
echo "[4/5] Pulling Qwen3 8B..."
ollama pull qwen3:8b

echo ""
echo "[5/5] Testing model..."

ollama run qwen3:8b "Halo, perkenalkan dirimu dalam 1 kalimat."

echo ""
echo "=================================="
echo " INSTALLATION COMPLETE"
echo "=================================="
echo ""
echo "API:"
echo "http://localhost:11434"
echo ""
echo "Test:"
echo "ollama run qwen3:8b"
echo ""
echo "Loaded Models:"
echo "ollama ps"
echo ""