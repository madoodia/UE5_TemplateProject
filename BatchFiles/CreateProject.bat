@REM // (C) 2025 madoodia.com All Rights Reserved.

@echo off
setlocal enabledelayedexpansion

call %~dp0\Vars.bat

REM Get a new path from the user
set /p NEW_PROJECT_PATH="Enter the project name: "
echo %NEW_PROJECT_PATH%

for %%A in ("%NEW_PROJECT_PATH%") do set PROJECT_NAME=%%~nxA

xcopy /E /I /Y "%ROOT_DIR%" "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%"

for /r "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%" %%f in (*UE5_TemplateProject*) do (
    set "FILE=%%~nxf"
    set "FILE=!FILE:UE5_TemplateProject=%PROJECT_NAME%!"
    ren "%%f" "!FILE!"
)

for /r "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%" %%f in (*) do (
    powershell -Command "(Get-Content '%%f') -replace 'UE5_TemplateProject', '%PROJECT_NAME%' | Set-Content '%%f'"
)
