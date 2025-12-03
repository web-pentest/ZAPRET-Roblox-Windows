@echo off
REM Стандартный режим ZAPRET
echo 🛑 Отключаем Roblox-режим...

REM Останови ZAPRET
taskkill /f /im nfqws.exe 2>nul
taskkill /f /im windivert.exe 2>nul

REM Очисти хостлист или верни стандартный
echo # Стандартный ZAPRET > "C:\zapret\ipset\zapret-hosts-user.txt"

REM Запуск стандартного ZAPRET
cd /d "C:\zapret"
start /min cmd /k "nfqws.exe --filter-tcp=80,443 --hostlist=C:\zapret\ipset\zapret-hosts-user.txt --dpi-desync=fake --new ^"

echo ✅ Стандартный режим активен!
pause
