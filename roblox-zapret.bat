@echo off
REN Включение Roblox-режима
echo 🎮 Roblox ZAPRET...

REM Останови текущий ZAPRET
taskkill /f /im nfqws.exe 2>nul
taskkill /f /im windivert.exe 2>nul

REM Копируй Roblox хостлист
copy "C:\zapret\ipset\roblox-hosts.txt" "C:\zapret\ipset\zapret-hosts-user.txt" >null

REM Запуск ZAPRET для Roblox
cd /d "C:\zapret"
start /min cmd /k "nfqws.exe --filter-tcp=443 --hostlist=C: \zapret\ipset\zapret-hosts-user.txt --dpi-desync=fake --dpi-desync-repeats=8 --new ^"

echo ✅ Roblox-ружим активен!
echo 🌱 Следи за обновлениями: https://github.com/web-pentest
echo 🎮 Запускай Roblox как администратор
pause
