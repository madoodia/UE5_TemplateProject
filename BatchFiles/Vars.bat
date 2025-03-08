@REM // (C) 2025 madoodia.com All Rights Reserved.

@echo off

set ROOT_DIR=%~dp0
set ROOT_DIR=%ROOT_DIR:~0,-1%

for %%A in ("%ROOT_DIR%\..") do set ROOT_DIR=%%~fA
for %%A in ("%ROOT_DIR%") do set PROJECT=%%~nxA

set PROJECT_DIR=%ROOT_DIR%
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set UE5_DIR=D:\UnrealEngine
set UE5_EDITOR_EXE=%UE5_DIR%\Engine\Binaries\Win64\UnrealEditor.exe
set BUILD_BAT=%UE5_DIR%\Engine\Build\BatchFiles\Build.bat

