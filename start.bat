@echo off
echo =========================================
echo    Booting ctfAIl
echo =========================================
echo.

WHERE docker >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo [!] Docker is not installed or not in PATH.
    pause
    exit /b 1
)

echo [+] Starting Docker Containers...
docker compose up -d --build

echo.
echo [+] Sandbox is booting! 
echo [+] URL: http://localhost:8501
echo.
echo Note: Ensure you have Ollama running locally at port 11434 with 'llama3:8b' downloaded.
echo       Run: 'ollama run llama3:8b'
pause
