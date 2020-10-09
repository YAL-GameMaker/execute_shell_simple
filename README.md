# execute_shell_simple
**Quick links:** [itch.io page](https://yellowafterlife.itch.io/gamemaker-execute-shell-simple)

This single-function extension allows to call [ShellExecute](https://docs.microsoft.com/en-us/windows/win32/api/shellapi/nf-shellapi-shellexecutew) from GameMaker: Studio and GameMaker Studio 2 games.

The function `execute_shell_simple` takes up to 4 arguments:

- **path** (required)  
  The absolute path to whatever you are trying to run - an executable, a text file, a `.url`, etc.  
  If you are not sure how to get the true path to your file, have the game copy it to save directory (`game_save_id`).
- **args** (optional)  
  Command-line arguments to pass. Non-executables will generally ignore these.  
  If omitted, defaults to `""`.
- **action** (optional)  
  What to do with the file, as per `lpOperation` [in MSDN](https://docs.microsoft.com/en-us/windows/win32/api/shellapi/nf-shellapi-shellexecutew#parameters).  
  If omitted, defaults to `"open"`.
- **showCmd** (optional)
  One or other magic number (such as `6` for `SW_MINIMIZE`) from the same MSDN page.  
  If omitted, defaults to `5` (`SW_SHOW`).

## Examples

Create a text file and open it in default editor:
```js
var _path = game_save_id + "/hi.txt";
var _txt = file_text_open_write(_path);
file_text_write_string(_txt, "Hi! " + date_datetime_string(date_current_datetime()));
file_text_close(_txt);
execute_shell_simple(_path);
```
Create a text file and open it in Notepad:
```js
var _path = game_save_id + "/hi.txt";
var _txt = file_text_open_write(_path);
file_text_write_string(_txt, "Hi! " + date_datetime_string(date_current_datetime()));
file_text_close(_txt);
var _windir = environment_get_variable("WINDIR");
execute_shell_simple(_windir + "/Notepad.exe", _path);
```
Create an internet shortcut and open it in default browser:
```gml
var _url = "https://yoyogames.com";
var _path = game_save_id + "/shortcut.url";
var _txt = file_text_open_write(path);
// note: use '' instead of @'' in GMS1
file_text_write_string(_txt, @'[{000214A0-0000-0000-C000-000000000046}]
Prop3=19,11
[InternetShortcut]
IDList=
URL=' + _url);
file_text_close(_txt);
execute_shell_simple(_path);
```

---
For more advanced uses, consider [Execute Shell](https://marketplace.yoyogames.com/assets/575/execute-shell) or [Evaluate Shell](https://marketplace.yoyogames.com/assets/8457/evaluate-shell) by Samuel Venable.
