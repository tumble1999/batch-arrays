@echo off
:remove
set "name=%1"

for /f "delims==" %%a in ('set !name!_') do (
set "%%a="
)
goto :end

:end
