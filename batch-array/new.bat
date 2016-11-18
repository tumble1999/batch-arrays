rem @echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions
set name=%1
set data=%~2
set !name!_rank=1
if not "%3"=="" set !name!_rank=%3
call :!%name%_rank!d
goto :eof

:1d
set n=0
for %%a in (!data!) do (
echo %%n%%:%n%
echo !!n!!:!n!
set "!name!_[!n!]=%%a"
set /a n+=1
)
set !name!_length=!n!
goto :eof
