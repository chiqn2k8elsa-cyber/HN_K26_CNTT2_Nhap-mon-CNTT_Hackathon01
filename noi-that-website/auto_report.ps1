#Script: auto_report.ps1
#Tac gia: Nguyen Quynh Chi
#Ngay tao: 28/10/2026

Write-Host "Dang loc log..." 

"===BAO CAO LOI===" > logs/auto_report.txt
Get-Content logs/furniture.log | select-string "ERROR" >> logs/auto_report.txt

Write-Host "Hoan thanh"