@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions
set tg_files=%~p0batch-array

if "%1"=="" (
set "tg_input=help"
) else (
set tg_input=%1
)
if exist !tg_files!\!tg_input!.bat call !tg_files!\!tg_input! %2 %3 %4
