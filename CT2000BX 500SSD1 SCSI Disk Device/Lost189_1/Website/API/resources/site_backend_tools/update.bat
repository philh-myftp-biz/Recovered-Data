@echo off

rmdir /s /q "%tmp%\site_backend_tools"

xcopy /S /Q /Y "D:\Active\Website\API\resources\site_backend_tools\" "%tmp%\site_backend_tools\"

cd /d "%tmp%\site_backend_tools"

pip install .