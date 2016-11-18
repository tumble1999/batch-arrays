@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions
set "topic=help-%1"

if "!topic!"=="help-" (
set "topic=help"
)

if exist !tg_files!\!topic!.md type !tg_files!\!topic!.md
