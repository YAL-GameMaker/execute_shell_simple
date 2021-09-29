/// @author YellowAfterlife

#include "stdafx.h"
#include <shellapi.h>

template<size_t wsize> int yal_mbstowcs(const char* text, wchar_t(&wtext)[wsize]) {
    wtext[wsize - 1] = 0;
    return MultiByteToWideChar(CP_UTF8, 0, text, -1, wtext, wsize - 1);
}

static wchar_t wpath[1024];
static wchar_t wargs[1024];
static wchar_t waction[1024];
static wchar_t wdir[1024];
dllx double execute_shell_simple_raw(const char* path, const char* args, const char* action, double showCmd) {
    yal_mbstowcs(path, wpath);
    yal_mbstowcs(args, wargs);
    yal_mbstowcs(action, waction);
    GetCurrentDirectoryW(1024, wdir);
    return (int)ShellExecuteW(nullptr, waction, wpath, wargs, wdir, (int)showCmd) > 32;
}
