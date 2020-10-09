/// @author YellowAfterlife

#include "stdafx.h"
#include <shellapi.h>
#include <memory>

#if defined(WIN32)
#define dllx extern "C" __declspec(dllexport)
#elif defined(GNUC)
#define dllx extern "C" __attribute__ ((visibility("default"))) 
#else
#define dllx extern "C"
#endif

dllx double execute_shell_simple_raw(const char* path, const char* args, const char* action, double showCmd) {
    wchar_t wpath[1024] = {}; mbstowcs(wpath, path, 1024);
    wchar_t wargs[1024] = {}; mbstowcs(wargs, args, 1024);
    wchar_t waction[1024] = {}; mbstowcs(waction, action, 1024);
    wchar_t wdir[1024] = {}; GetCurrentDirectoryW(1024, wdir);
	return (int)ShellExecute(nullptr, waction, wpath, wargs, wdir, (int)showCmd) > 32;
}