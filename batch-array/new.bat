@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions
set name=%1
set data=%2
set !name!_rank=1
set !name!_rank=%3
call :!%name%_rank!d
goto :eof

:2d
set n=0
for %%a in (!data!) do (
set !name![!n!]=%%a
set n+=1
)
set !name!_length=!n!
goto :eof
