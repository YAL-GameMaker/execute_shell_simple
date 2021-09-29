@echo off

if not exist "execute_shell_simple_ext-for-GMS1" mkdir "execute_shell_simple_ext-for-GMS1"
cmd /C copyre ..\execute_shell_simple_ext.gmx\extensions\execute_shell_simple_ext.extension.gmx execute_shell_simple_ext-for-GMS1\execute_shell_simple_ext.extension.gmx
cmd /C copyre ..\execute_shell_simple_ext.gmx\extensions\execute_shell_simple_ext execute_shell_simple_ext-for-GMS1\execute_shell_simple_ext
cmd /C copyre ..\execute_shell_simple_ext.gmx\datafiles\execute_shell_simple_ext.html execute_shell_simple_ext-for-GMS1\execute_shell_simple_ext\Assets\datafiles\execute_shell_simple_ext.html
cd execute_shell_simple_ext-for-GMS1
cmd /C 7z a execute_shell_simple_ext-for-GMS1.7z *
move /Y execute_shell_simple_ext-for-GMS1.7z ../execute_shell_simple_ext-for-GMS1.gmez
cd ..

if not exist "execute_shell_simple_ext-for-GMS2\extensions" mkdir "execute_shell_simple_ext-for-GMS2\extensions"
if not exist "execute_shell_simple_ext-for-GMS2\datafiles" mkdir "execute_shell_simple_ext-for-GMS2\datafiles"
if not exist "execute_shell_simple_ext-for-GMS2\datafiles_yy" mkdir "execute_shell_simple_ext-for-GMS2\datafiles_yy"
cmd /C copyre ..\execute_shell_simple_ext_yy\extensions\execute_shell_simple_ext execute_shell_simple_ext-for-GMS2\extensions\execute_shell_simple_ext
cmd /C copyre ..\execute_shell_simple_ext_yy\datafiles\execute_shell_simple_ext.html execute_shell_simple_ext-for-GMS2\datafiles\execute_shell_simple_ext.html
cmd /C copyre ..\execute_shell_simple_ext_yy\datafiles_yy\execute_shell_simple_ext.html.yy execute_shell_simple_ext-for-GMS2\datafiles_yy\execute_shell_simple_ext.html.yy
cd execute_shell_simple_ext-for-GMS2
cmd /C 7z a execute_shell_simple_ext-for-GMS2.zip *
move /Y execute_shell_simple_ext-for-GMS2.zip ../execute_shell_simple_ext-for-GMS2.yymp
cd ..

if not exist "execute_shell_simple_ext-for-GMS2.3+\extensions" mkdir "execute_shell_simple_ext-for-GMS2.3+\extensions"
if not exist "execute_shell_simple_ext-for-GMS2.3+\datafiles" mkdir "execute_shell_simple_ext-for-GMS2.3+\datafiles"
cmd /C copyre ..\execute_shell_simple_ext_23\extensions\execute_shell_simple_ext execute_shell_simple_ext-for-GMS2.3+\extensions\execute_shell_simple_ext
cmd /C copyre ..\execute_shell_simple_ext_23\datafiles\execute_shell_simple_ext.html execute_shell_simple_ext-for-GMS2.3+\datafiles\execute_shell_simple_ext.html
cd execute_shell_simple_ext-for-GMS2.3+
cmd /C 7z a execute_shell_simple_ext-for-GMS2.3+.zip *
move /Y execute_shell_simple_ext-for-GMS2.3+.zip ../execute_shell_simple_ext-for-GMS2.3+.yymps
cd ..

pause