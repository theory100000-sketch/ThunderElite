@echo off
setlocal
cd /d "%~dp0"
if not exist "bot\node_modules\discord.js" call npm --prefix bot install --no-audit --no-fund
node bot\deploy-commands.js
pause
endlocal
