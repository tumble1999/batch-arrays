@echo off
:help
if defined tg_files type !tg_files!\help.md
if not defined tg_files type help.txt
goto endtype !tg_files!\help.md
goto end

:end
