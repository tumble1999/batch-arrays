@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions

set "topic=help-%1"

if "!topic!"=="help-" (
set "topic=help"
)

type !tg_files!\!topic!.md
