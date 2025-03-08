@REM // (C) 2025 madoodia.com All Rights Reserved.

@echo off

call %~dp0\Vars.bat

call %BUILD_BAT% %PROJECT%Editor Win64 Development %UPROJECT_PATH% -waitmutex -NoHotReload %*
