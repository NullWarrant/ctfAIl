#!/bin/bash
echo "🛡️ Booting ctfAIl 🛡️"
echo ""
echo "Checking dependencies..."
if ! command -v docker &> /dev/null
then
    echo "[!] Docker is not installed. Please install Docker desktop."
    exit 1
fi
if ! command -v docker-compose &> /dev/null && ! docker compose version &> /dev/null
then
    echo "[!] Docker Compose is not installed. Please install it."
    exit 1
fi

echo "[+] Starting Docker Containers..."
if docker compose version &> /dev/null; then
    docker compose up -d --build
else
    docker-compose up -d --build
fi

echo ""
echo "[+] Sandbox is booting! Please wait approx 10 seconds."
echo "[+] URL: http://localhost:8501"
echo ""
echo "Note: Ensure you have Ollama running locally at port 11434 with 'llama3:8b' downloaded."
echo "      Run: 'ollama run llama3:8b'"
