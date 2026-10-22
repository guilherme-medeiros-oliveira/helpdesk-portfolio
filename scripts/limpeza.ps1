# Script de Limpeza para Suporte N1
# Autor: Guilherme Medeiros
# Objetivo: Automatizar limpeza basica que fazemos todo dia no suporte

Write-Host "Iniciando limpeza..." -ForegroundColor Green

# 1. Limpar arquivos temporarios do Windows
Write-Host "[1/3] Limpando arquivos temporarios..."
Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

# 2. Limpar cache do DNS (resolve muito problema de internet)
Write-Host "[2/3] Limpando cache DNS..."
ipconfig /flushdns | Out-Null

# 3. Esvaziar lixeira
Write-Host "[3/3] Esvaziando lixeira..."
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

Write-Host "Limpeza concluida com sucesso!" -ForegroundColor Green
Write-Host "Tempo economizado: ~10 min de trabalho manual"
