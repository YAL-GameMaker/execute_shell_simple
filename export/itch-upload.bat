@echo off
set /p ver="Version?: "
echo Uploading %ver%...
set user=yellowafterlife
set ext=gamemaker-execute-shell-simple
cmd /C itchio-butler push execute_shell_simple_ext-for-GMS1.gmez %user%/%ext%:gms1 --userversion=%ver%
cmd /C itchio-butler push execute_shell_simple_ext-for-GMS2.yymp %user%/%ext%:gms2 --userversion=%ver%
cmd /C itchio-butler push execute_shell_simple_ext-for-GMS2.3+.yymps %user%/%ext%:gms2.3 --userversion=%ver%

pause