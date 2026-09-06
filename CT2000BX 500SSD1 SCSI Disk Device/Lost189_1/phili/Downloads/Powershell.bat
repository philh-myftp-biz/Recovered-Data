@echo off
set /p file="Enter the File Path: "
Powershell.exe -executionpolicy remotesigned -File "%file%"
echo:
echo -------------------------------------------
echo: