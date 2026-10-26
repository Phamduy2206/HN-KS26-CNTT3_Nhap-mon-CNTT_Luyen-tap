# Tac gia PHAM_NGOC_DUY
# Ngay tao 26_10_2026

"=== BAO CAO LOI GAMEZONE ===" > .\logs\auto_report.txt
Get-Content .\logs\game.log | Select-String "ERROR" >> .\logs\auto_report.txt

Write-Host Da tao bao cao LOC ERROR 
