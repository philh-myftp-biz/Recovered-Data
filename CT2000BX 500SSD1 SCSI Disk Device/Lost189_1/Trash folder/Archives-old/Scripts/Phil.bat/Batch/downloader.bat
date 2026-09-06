@echo off
set /p url="Enter the URL: "
wget "%url%" -P "C:\Users\phili\Downloads"
echo:
echo -------------------------------------------
echo:
echo Donwload Finished