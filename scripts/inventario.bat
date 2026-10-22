@echo off
echo ====================================
echo INVENTARIO DA MAQUINA - Help Desk N1
echo ====================================
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
ipconfig | findstr IPv4
echo.
echo [4] Memoria RAM e Processador:
powershell -command "Get-CimInstance Win32_ComputerSystem | Select-Object TotalPhysicalMemory | Format-List"
powershell -command "Get-CimInstance Win32_Processor | Select-Object Name | Format-List"
echo.
echo [5] Espaco em disco:
powershell -command "Get-PSDrive C | Select-Object Used,Free | Format-List"
echo.
echo ====================================
echo Fim do inventario
echo ====================================
pause
