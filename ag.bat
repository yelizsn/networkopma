@echo off
echo Wi-Fi baglantisi sifirlaniyor...
timeout /t 1 > nul


netsh int ip reset > nul
netsh winsock reset > nul
ipconfig /release > nul
ipconfig /flushdns > nul
ipconfig /renew > nul


echo Wi-Fi devre disi birakiliyor...
netsh interface set interface "Wi-Fi" admin=disable
timeout /t 3 > nul


echo Wi-Fi tekrar etkinlestiriliyor...
netsh interface set interface "Wi-Fi" admin=enable
timeout /t 3 > nul

echo Islem tamamlandi. Internet baglantiniz kontrol ediliyor...
pause
