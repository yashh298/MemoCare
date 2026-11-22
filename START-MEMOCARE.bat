@echo off
title MemoCare
cd /d "%~dp0memocare-backend"
if not exist node_modules (
  echo First run: installing dependencies ^(needs internet, takes a few minutes^)...
  call npm install
  if errorlevel 1 (
    echo.
    echo npm install failed. Check your internet connection and that Node.js is installed.
    pause
    exit /b 1
  )
)
start "" cmd /c "timeout /t 25 /nobreak >nul & start http://localhost:4000"
call npm run start:local
pause
