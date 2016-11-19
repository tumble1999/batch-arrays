set "testDE=face"
if not "!testDE!"=="face" (
  Setlocal EnableDelayedExpansion
)

rem ======[array.bat]===========
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
rem ======[END OF array.bat]===========



rem ======[END OF help.bat]===========
:help
if defined tg_files type !tg_files!\help.md
if not defined tg_files type help.txt
goto end
rem ======[END OF help.bat]===========




rem ======[new.bat]===========
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
rem ======[END OF remove.bat]===========




rem ======[remove.bat]===========
:remove
set "name=%1"

for /f "delims==" %%a in ('set !name!_') do (
set "%%a="
)
goto :end
rem ======[END OF remove.bat]===========


:end
