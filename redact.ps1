
Push-Location $PSScriptRoot

$keyfile = "$env:TEMP\git-redact.txt"

$red = Read-Host "String to Redact"

Set-Content $keyfile "$red==>***REDACTED***"

python.exe -m pip install git-filter-repo

git.exe filter-repo --replace-text $keyfile --force

git.exe remote add origin "https://github.com/philh-myftp-biz/Recovered-Data"

Remove-Item $keyfile -Force

Pop-Location

