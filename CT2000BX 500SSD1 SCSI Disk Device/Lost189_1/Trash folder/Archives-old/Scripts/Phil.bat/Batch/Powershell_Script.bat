@echo off
set /p Virtual=Powershell Script:
Powershell.exe -executionpolicy remotesigned -File "%Virtual%"