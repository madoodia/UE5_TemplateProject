@REM // (C) 2025 madoodia.com All Rights Reserved.

@echo off
setlocal enabledelayedexpansion

call %~dp0\Vars.bat

REM Get a new path from the user
@REM set /p NEW_PROJECT_PATH="Enter the project name: "
set NEW_PROJECT_PATH=D:\__TestProjectGenerator__\Zolfine
echo Cloning Project in %NEW_PROJECT_PATH% ...

for %%A in ("%NEW_PROJECT_PATH%") do set PROJECT_NAME=%%~nxA

REM List of folders to exclude
REM Create exclusion file
(
  echo Binaries\
  echo Intermediate\
  echo Saved\
  echo DerivedCachData\
  echo .git\
) > %TEMP%\exclude_folders.txt

REM Copy the project excluding specific folders
xcopy /E /I /Y "%ROOT_DIR%" "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%" /EXCLUDE:%TEMP%\exclude_folders.txt

REM Clean up exclusion file
del %TEMP%\exclude_folders.txt

REM Rename folders recursively
for /d /r "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%" %%d in (*) do (
    set "DIR=%%~nxd"
    set "DIR=!DIR:UE5_TemplateProject=%PROJECT_NAME%!"
    ren "%%d" "!DIR!"
)

REM Rename files recursively
for /r "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%" %%f in (*) do (
    set "FILE=%%~nxf"
    set "FILE=!FILE:UE5_TemplateProject=%PROJECT_NAME%!"
    ren "%%f" "!FILE!"
)

REM Replace the project name in the files
for /r "%NEW_PROJECT_PATH%\..\%PROJECT_NAME%" %%f in (*) do (
    if !SKIP! neq 1 (
        powershell -Command "(Get-Content '%%f') -replace 'UE5_TemplateProject', '%PROJECT_NAME%' | Set-Content '%%f'"
    )
)

echo Done!
