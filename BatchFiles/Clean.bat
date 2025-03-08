@REM // (C) 2025 madoodia.com All Rights Reserved.

@echo off

call %~dp0\Vars.bat

if exist %ROOT_DIR%\Binaries rd /s /q Binaries 
if exist %ROOT_DIR%\Intermediate  rd /s /q Intermediate
if exist %ROOT_DIR%\DerivedDataCache rd /s /q DerivedDataCache
if exist %ROOT_DIR%\Saved rd /s /q Saved
if exist %ROOT_DIR%\%PROJECT%.sln del %PROJECT%.sln

echo Cleaned up the project!
