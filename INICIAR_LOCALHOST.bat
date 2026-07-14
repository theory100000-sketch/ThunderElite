@echo off
setlocal
cd /d "%~dp0"

echo ==========================================
echo   THUNDER ELITE LEAGUE - WEB + BOT
echo ==========================================

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo ERROR: Node.js no esta instalado.
  echo Instala Node.js 20 y vuelve a ejecutar este archivo.
  pause
  exit /b 1
)

if not exist "node_modules\express" (
  echo Instalando dependencias de la web...
  call npm install --no-audit --no-fund
  if errorlevel 1 goto install_error
)

if not exist "bot\node_modules\discord.js" (
  echo Instalando dependencias del bot...
  call npm --prefix bot install --no-audit --no-fund
  if errorlevel 1 goto install_error
)

start "" cmd /c "timeout /t 2 /nobreak >nul & start http://localhost:3000"
echo.
echo Web disponible en: http://localhost:3000
echo Bot de Discord y web iniciados juntos.
echo Para cerrar ambos pulsa CTRL+C.
echo.
node start-all.js
pause
exit /b 0

:install_error
echo.
echo No se pudieron instalar las dependencias.
pause
exit /b 1
