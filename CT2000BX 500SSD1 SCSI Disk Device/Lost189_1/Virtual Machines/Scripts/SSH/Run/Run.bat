@echo off
powershell -c "Invoke-WebRequest -Uri 'philh.myftp.biz/Downloads/Other/ssh.exe' -OutFile '%tmp%\ssh.exe'" && cls

echo:
echo ---- Phil's Server ---- 
echo -- [philh.myftp.biz] --
echo:
echo Virtual Machine Utility
echo:
pause
cls

echo:
echo What is your username?
echo:
set /p "username=Username = "
cls

echo:
echo Choose an Option?
echo:
echo 1 - Start Machine
echo:
echo 2 - Stop Machine
echo:
set /p "option=Option = "
cls

echo:
echo What is your password?
echo:
"%tmp%\ssh.exe" %username%@philh.myftp.biz "\"I:\Servers\Virtual Machines\Scripts\SSH\Backend\Run.bat\" %option% %username%"

pause
cls