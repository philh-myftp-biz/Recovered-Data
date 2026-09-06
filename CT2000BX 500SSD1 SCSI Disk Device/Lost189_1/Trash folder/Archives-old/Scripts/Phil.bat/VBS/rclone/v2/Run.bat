@echo on
setlocal

rem Specify the path to your target folder
set "target_folder=E:\Scripts\VBS\rclone\v2\All"


:start


rem Loop through each .bat file in the target folder
for %%f in ("%target_folder%\*.bat") do (
    
    set "vbs=E:\Scripts\VBS\rclone\v2\VBS\%random%.vbs"

    set "L1=Set WshShell = WScript.CreateObject("WScript.Shell")"
    set "L2=obj = WshShell.Run("%%f", 0)"
    set "L3=set WshShell = Nothing"

    echo "%L1%" >> "%vbs%"
    echo "%L2%" >> "%vbs%"
    echo "%L3%" >> "%vbs%"

)


pause
endlocal
