@echo off
if exist %~p0batch-array\ (
 set tg_files=%~p0batch-array
)
if "%1"=="" (
set "tg_input=help"
) else (
set tg_input=%1
)
if "!tg_files!"=="" (
call :!tg_input! %2 %3 %4
) else (
call !tg_files!\!tg_input! %2 %3 %4
)
goto end

:end
