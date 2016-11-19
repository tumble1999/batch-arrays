@echo off
:new
set name=%1
set data=%~2
set !name!_rank=1
if not "%3"=="" set !name!_rank=%3
goto new_!%name%_rank!d
goto end

:new_1d
set n=0
for %%a in (!data!) do (
set "!name!_[!n!]=%%a"
set /a n+=1
)
set !name!_length=!n!
goto end

:end
