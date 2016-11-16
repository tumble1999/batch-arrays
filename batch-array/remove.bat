@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions
set "name=%1"

for /f "delims==" %%a in ('set !name!_') do (
set "%%a"
)
