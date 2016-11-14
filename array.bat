@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions
set tg_files=%~p0batch-array

if "%1"=="" (
set "tg_input=help"
) else (
set tg_input=%1
)
call !tg_files!\!tg_input! %2
