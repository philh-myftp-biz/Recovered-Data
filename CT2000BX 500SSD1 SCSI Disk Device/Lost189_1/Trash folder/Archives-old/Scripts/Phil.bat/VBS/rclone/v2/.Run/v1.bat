@echo off
setlocal

rem Specify the path to your target folder
set "target_folder=E:\Scripts\VBS\rclone\v2\All"


:start


rem Loop through each .bat file in the target folder
for %%f in ("%target_folder%\*.bat") do (
    call "%%f"
)
endlocal
