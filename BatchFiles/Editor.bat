@REM // (C) 2025 madoodia.com All Rights Reserved.

@echo off

call %~dp0\Vars.bat

start "" %UE5_EDITOR_EXE% %UPROJECT_PATH% -waitmutex -NoHotReload %*
