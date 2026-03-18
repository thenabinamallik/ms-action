@echo off
setlocal enabledelayedexpansion
for /L %%A in (1,1,20) do (
    set "dots="
    for /L %%B in (1,1,%%A) do set "dots=!dots!."
    cls
    echo.
    echo It may take a few sec!dots!
    timeout /nobreak 0 >nul
)
cls
echo.
echo.
echo make sure you have the Access form the Adminstrator
echo.
echo if not you can contact at Email: thenabinamallik@gmail.com
timeout 1 >nul
echo.
echo.
:CheckYesorNo
echo [Y] Yes / [N] No:
set /p USER_INPUT=

if "%USER_INPUT%"=="Y" (
    echo All right lets move forward..
    goto :Continue
) else (
    echo Access denied.
    pause
    exit /b
)
:Continue
timeout 3 >nul
setlocal enabledelayedexpansion
for /L %%A in (1,1,50) do (
    set "dots="
    for /L %%B in (1,1,%%A) do set "dots=!dots!."
    cls
    echo.
    echo Downloading!dots!
    timeout /nobreak 0 >nul
)
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
powershell -command "Write-Host '                         ====================================================================' -ForegroundColor Green"
powershell -command "Write-Host '                         =       Lunching MS Action developed by @thenabinamallik          =' -ForegroundColor Green"
powershell -command "Write-Host '                         ====================================================================' -ForegroundColor green"
timeout 4 >nul
cls
powershell -command "Write-Host '                         ====================================================================' -ForegroundColor Green"
powershell -command "Write-Host '                         =  Lunching the Official Microsoft Official and Windows Activator  =' -ForegroundColor Green"
powershell -command "Write-Host '                         ====================================================================' -ForegroundColor green"
timeout 4 >nul
setlocal enabledelayedexpansion
for /L %%A in (1,1,20) do (
    set "dots="
    for /L %%B in (1,1,%%A) do set "dots=!dots!."
    cls
    echo.
    echo Please wait while we load everything!dots!
    timeout /nobreak 0 >nul
)

cls
echo        _   _  ____    _____       ______   __  __  ____    ______  ______  __       __       ____    ____       
echo       / \_/ \/\  _`\ /\  __`\    /\__  _\ /\ \/\ \/\  _`\ /\__  _\/\  _  \/\ \     /\ \     /\  _`\ /\  _`\     
echo      /\      \ \,\L\_\ \ \/\ \   \/_/\ \/ \ \ `\\ \ \,\L\_\/_/\ \/\ \ \L\ \ \ \    \ \ \    \ \ \L\_\ \ \L\ \   
echo      \ \ \__\ \/_\__ \\ \ \ \ \     \ \ \  \ \ , ` \/_\__ \  \ \ \ \ \  __ \ \ \  __\ \ \  __\ \  _\L\ \ ,  /   
echo       \ \ \_/\ \/\ \L\ \ \ \_\ \     \_\ \__\ \ \`\ \/\ \L\ \ \ \ \ \ \ \/\ \ \ \L\ \\ \ \L\ \\ \ \L\ \ \ \\ \  
echo        \ \_\\ \_\ `\____\ \_____\    /\_____\\ \_\ \_\ `\____\ \ \_\ \ \_\ \_\ \____/ \ \____/ \ \____/\ \_\ \_\
echo         \/_/ \/_/\/_____/\/_____/    \/_____/ \/_/\/_/\/_____/  \/_/  \/_/\/_/\/___/   \/___/   \/___/  \/_/\/ /
echo.
powershell -command "Write-Host '                                                            Cracked by - Nabin Mallik' -ForegroundColor Yellow"
set PASSWORD =  IAMIRONMAN
:CheckPassword
echo Please enter the password:
set /p USER_INPUT=

if "%USER_INPUT%"=="%PASSWORD%" (
    echo Access granted.
    goto :Continue
) else (
    echo Access denied.
    pause
    exit /b
)
:Continue
echo.
timeout 3 >nul
echo Getting everything ready for you please wait...
timeout 10 >nul
echo Done
echo.
timeout 0 >nul
echo Gathering System Info (it might took a few moment)
timeout 15 >nul
echo Done
timeout 2 >nul                                                                                            
cls
echo.
powershell -command "Write-Host '========================================================' -ForegroundColor Blue"
powershell -command "Write-Host '=                  Device Details                      =' -ForegroundColor Blue"
powershell -command "Write-Host '========================================================' -ForegroundColor Blue"
:: Show computer name and user name with colors
echo.
powershell -command "Write-Host 'Computer Name: %COMPUTERNAME%' -ForegroundColor Cyan"
echo.
powershell -command "Write-Host 'Username: %USERNAME%' -ForegroundColor Cyan"
powershell -command "Write-Host 'Password: hidden'  "

:: Show Windows version with color
echo.
powershell -command "Write-Host 'Windows Version:' -ForegroundColor Yellow"
ver
powershell -command "Write-Host 'MSO not Activated' -ForegroundColor Red"
:: Show processor details using PowerShell and color
echo.
powershell -command "Write-Host 'Processor Details: ' -ForegroundColor Green"
powershell -command "Get-CimInstance -ClassName Win32_Processor | ForEach-Object {Write-Host $_.Name -ForegroundColor Cyan}"

:: Show total physical memory with color
echo.
powershell -command "Write-Host 'Total Physical Memory (in GB):' -ForegroundColor Green"
powershell -command "[math]::Round((Get-CimInstance -ClassName Win32_PhysicalMemory | Measure-Object Capacity -Sum).Sum / 1GB, 2) | Write-Host -ForegroundColor Cyan"

:: Show disk drives and free space with color
echo.
powershell -command "Write-Host 'Disk Drives and Free Space:' -ForegroundColor Yellow"
powershell -command "Get-CimInstance -ClassName Win32_LogicalDisk | ForEach-Object {Write-Host $('Drive: ' + $_.DeviceID + ' | Volume: ' + $_.VolumeName + ' | Free Space: ' + [math]::Round($_.FreeSpace / 1GB, 2) + ' GB' + ' | Total Size: ' + [math]::Round($_.Size / 1GB, 2) + ' GB') -ForegroundColor Cyan }"

:: Show network details with color
echo.
powershell -command "Write-Host 'Network Details (IPv4 Address):' -ForegroundColor Green"
powershell -command "Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike '*Loopback*' } | ForEach-Object {Write-Host $_.IPAddress -ForegroundColor Cyan}"

:: End message with color
echo.
echo.
powershell -command "Write-Host 'Redirecting...' -ForegroundColor Yellow"
timeout 10 >nul
powershell -Command "irm https://get.activated.win | iex"
