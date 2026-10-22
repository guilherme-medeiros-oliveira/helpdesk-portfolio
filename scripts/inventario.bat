@echo off
REM Inventario rapido para Help Desk - Guilherme Medeiros
REM Pega informacoes essenciais da maquina

echo ===============================
echo INVENTARIO DA MAQUINA
echo ===============================
echo.

echo [INFO] Data: %date% %time%
echo.

echo [1] Nome do computador:
hostname
echo.

echo [2] Usuario logado:
whoami
echo.

echo [3] IP da maquina:
ipconfig | findstr /i "IPv4"
echo.

echo [4] Memoria e Processador:
wmic cpu get name
wmic computersystem get totalphysicalmemory
echo.

echo [5] Espaco em disco:
wmic logicaldisk get size,freespace,caption
echo.

echo ===============================
echo Fim do inventario
echo ===============================
pause
