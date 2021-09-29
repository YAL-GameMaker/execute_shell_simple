@echo off
set dllPath=%~1
set solutionDir=%~2
set projectDir=%~3
set arch=%~4
set config=%~5

echo Running pre-build for %config%

where /q GmlCppExtFuncs
if %ERRORLEVEL% EQU 0 (
	echo Running GmlCppExtFuncs...
	GmlCppExtFuncs ^
	--prefix execute_shell_simple_ext^
	--cpp "%projectDir%autogen.cpp"^
	--gml "%solutionDir%execute_shell_simple_ext_23/extensions/execute_shell_simple_ext/autogen.gml"^
	%projectDir%execute_shell_simple_ext.cpp
)